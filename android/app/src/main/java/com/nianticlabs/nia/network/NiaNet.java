package com.nianticlabs.nia.network;

import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.ByteBuffer;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.apache.commons.io.IOUtils;

public class NiaNet {
    private static final int CHUNK_SIZE = 32768;
    private static final int HTTP_BAD_REQUEST = 400;
    private static final int HTTP_OK = 200;
    private static final String IF_MODIFIED_SINCE = "If-Modified-Since";
    private static final int METHOD_DELETE = 4;
    private static final int METHOD_GET = 0;
    private static final int METHOD_HEAD = 1;
    private static final int METHOD_OPTIONS = 5;
    private static final int METHOD_POST = 2;
    private static final int METHOD_PUT = 3;
    private static final int METHOD_TRACE = 6;
    private static final int NETWORK_TIMEOUT_MS = 15000;
    private static final int POOL_THREAD_NUM = 6;
    private static final String TAG = "NiaNet";
    private static final ThreadPoolExecutor executor;
    private static final Set<Integer> pendingRequestIds;
    static ThreadLocal<ByteBuffer> readBuffer;
    private static final ThreadLocal<byte[]> threadChunk;

    /* renamed from: com.nianticlabs.nia.network.NiaNet.1 */
    static final class C07821 extends ThreadLocal<byte[]> {
        C07821() {
        }

        protected byte[] initialValue() {
            return new byte[NiaNet.CHUNK_SIZE];
        }
    }

    /* renamed from: com.nianticlabs.nia.network.NiaNet.2 */
    static final class C07832 extends ThreadLocal<ByteBuffer> {
        C07832() {
        }

        protected ByteBuffer initialValue() {
            return ByteBuffer.allocateDirect(NiaNet.CHUNK_SIZE);
        }
    }

    /* renamed from: com.nianticlabs.nia.network.NiaNet.3 */
    static final class C07843 implements Runnable {
        final /* synthetic */ ByteBuffer val$body;
        final /* synthetic */ int val$bodyOffset;
        final /* synthetic */ int val$bodySize;
        final /* synthetic */ String val$headers;
        final /* synthetic */ int val$method;
        final /* synthetic */ long val$object;
        final /* synthetic */ int val$request_id;
        final /* synthetic */ String val$url;

        C07843(long j, int i, String str, int i2, String str2, ByteBuffer byteBuffer, int i3, int i4) {
            this.val$object = j;
            this.val$request_id = i;
            this.val$url = str;
            this.val$method = i2;
            this.val$headers = str2;
            this.val$body = byteBuffer;
            this.val$bodyOffset = i3;
            this.val$bodySize = i4;
        }

        public void run() {
            NiaNet.doSyncRequest(this.val$object, this.val$request_id, this.val$url, this.val$method, this.val$headers, this.val$body, this.val$bodyOffset, this.val$bodySize);
        }
    }

    static {
        executor = new ThreadPoolExecutor(POOL_THREAD_NUM, 12, 5, TimeUnit.SECONDS, new LinkedBlockingQueue());
        pendingRequestIds = new HashSet();
        threadChunk = new C07821();
        readBuffer = new C07832();
    }

    private NiaNet() {
    }

    public static void cancel(int i) {
        synchronized (pendingRequestIds) {
            pendingRequestIds.remove(Integer.valueOf(i));
        }
    }

    private static void doSyncRequest(long object, int request_id, String url, int method, String headers, ByteBuffer body, int bodyOffset, int bodyCount) {
        synchronized (pendingRequestIds) {
            if (!pendingRequestIds.contains(request_id)) {
                return;
            }
            int responseSize = 0;
            pendingRequestIds.remove(request_id);
            HttpURLConnection conn = null;
            int responseCode = HTTP_BAD_REQUEST;
            String responseHeaders = null;
            OutputStream os = null;
            try {
                conn = (HttpURLConnection) new URL(url).openConnection();
                setHeaders(conn, headers);
                conn.setConnectTimeout(NETWORK_TIMEOUT_MS);
                conn.setRequestProperty("Connection", "Keep-Alive");
                HttpURLConnection.setFollowRedirects(false);
                conn.setRequestMethod(getMethodString(method));
                if (body != null && bodyCount > 0) {
                    conn.setDoOutput(true);
                    os = conn.getOutputStream();
                    if (body.hasArray()) {
                        os.write(body.array(), body.arrayOffset() + bodyOffset, bodyCount);
                    } else {
                        byte[] chunk = threadChunk.get();
                        while (body.hasRemaining()) {
                            int bytesToRead = Math.min(body.remaining(), chunk.length);
                            body.get(chunk, METHOD_GET, bytesToRead);
                            os.write(chunk, METHOD_GET, bytesToRead);
                        }
                    }
                    os.close();
                }
                responseCode = conn.getResponseCode();
                responseHeaders = joinHeaders(conn);
                responseSize = readDataSteam(conn);
                conn.disconnect();
            } catch (IOException e) {
                try {
                    Log.e(TAG, "Network op failed: " + e.getMessage());
                    responseSize = 0;
                    if (conn != null) {
                        conn.disconnect();
                    }
                } catch (Throwable th) {
                    if (conn != null) {
                        conn.disconnect();
                    }
                }
            } catch (Throwable th2) {
                if (os != null) {
                    try {
                        os.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
            if (responseSize > 0) {
                nativeCallback(object, responseCode, responseHeaders, readBuffer.get(), 0, responseSize);
            } else {
                nativeCallback(object, responseCode, responseHeaders, null, 0, 0);
            }
        }
    }

    private static String getMethodString(int i) {
        switch (i) {
            case METHOD_GET /*0*/:
                return "GET";
            case METHOD_HEAD /*1*/:
                return "HEAD";
            case METHOD_POST /*2*/:
                return "POST";
            case METHOD_PUT /*3*/:
                return "PUT";
            case METHOD_DELETE /*4*/:
                return "DELETE";
            default:
                Log.e(TAG, "Unsupported HTTP method " + i + ", using GET.");
                return "GET";
        }
    }

    private static String joinHeaders(HttpURLConnection httpURLConnection) {
        StringBuilder stringBuilder = new StringBuilder();
        int i = METHOD_GET;
        while (true) {
            String headerFieldKey = httpURLConnection.getHeaderFieldKey(i);
            if (headerFieldKey == null) {
                break;
            }
            String headerField = httpURLConnection.getHeaderField(i);
            if (headerField == null) {
                break;
            }
            stringBuilder.append(headerFieldKey);
            stringBuilder.append(": ");
            stringBuilder.append(headerField);
            stringBuilder.append(IOUtils.LINE_SEPARATOR_UNIX);
            i += METHOD_HEAD;
        }
        return stringBuilder.length() == 0 ? null : stringBuilder.toString();
    }

    private static native void nativeCallback(long j, int i, String str, ByteBuffer byteBuffer, int i2, int i3);

    private static long parseHttpDateTime(String str) throws ParseException {
        return new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz").parse(str).getTime();
    }

    private static int readDataSteam(HttpURLConnection httpURLConnection) throws IOException {
        InputStream inputStream = httpURLConnection.getResponseCode() == HTTP_OK ? httpURLConnection.getInputStream() : httpURLConnection.getErrorStream();
        if (inputStream == null) {
            return METHOD_GET;
        }
        ByteBuffer byteBuffer = (ByteBuffer) readBuffer.get();
        try {
            byte[] array = byteBuffer.array();
            int arrayOffset = byteBuffer.arrayOffset();
            int v = METHOD_HEAD;
            int i = arrayOffset;
            int i2 = arrayOffset;
            byte[] obj = array;
            int i3 = i2;
            while (true) {
                int available = inputStream.available();
                if (obj.length <= available + i) {
                    ByteBuffer allocateDirect = ByteBuffer.allocateDirect(((available + i) - i3) * METHOD_POST);
                    int i4 = i - i3;
                    i = allocateDirect.arrayOffset();
                    if (i4 > 0) {
                        System.arraycopy(obj, i3, allocateDirect.array(), i, i4);
                    }
                    i3 = i4 + i;
                    obj = allocateDirect.array();
                    readBuffer.set(allocateDirect);
                    i2 = i;
                    i = i3;
                    i3 = i2;
                }
                available = inputStream.read(obj, i, obj.length - i);
                if (available >= 0) {
                    i += available;
                    continue;
                } else {
                    v = METHOD_GET;
                    break;
                }
            }
            arrayOffset = i - i3;
            return arrayOffset;
        } finally {
            inputStream.close();
        }
    }

    public static void request(long j, int i, String str, int i2, String str2, ByteBuffer byteBuffer, int i3, int i4) {
        synchronized (pendingRequestIds) {
            pendingRequestIds.add(Integer.valueOf(i));
        }
        executor.execute(new C07843(j, i, str, i2, str2, byteBuffer, i3, i4));
    }

    private static void setHeaders(HttpURLConnection httpURLConnection, String str) {
        if (str != null && !str.isEmpty()) {
            int i = METHOD_GET;
            do {
                int indexOf = str.indexOf(10, i);
                if (indexOf < 0) {
                    indexOf = str.length();
                }
                int indexOf2 = str.indexOf(58, i);
                if (indexOf2 < 0) {
                    indexOf2 = str.length();
                }
                String substring = str.substring(i, indexOf2);
                String substring2 = str.substring(indexOf2 + METHOD_HEAD, indexOf);
                if (IF_MODIFIED_SINCE.equals(substring)) {
                    try {
                        httpURLConnection.setIfModifiedSince(parseHttpDateTime(substring2));
                    } catch (ParseException e) {
                        Log.e(TAG, "If-Modified-Since Date/Time parse failed. " + e.getMessage());
                    }
                } else {
                    httpURLConnection.setRequestProperty(substring, substring2);
                }
                i = indexOf + METHOD_HEAD;
            } while (i < str.length());
        }
    }
}
