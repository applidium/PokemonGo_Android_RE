package com.nianticlabs.nia.network;

import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
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
    private static Set<Integer> pendingRequestIds;
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

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void doSyncRequest(long r10, int r12, java.lang.String r13, int r14, java.lang.String r15, java.nio.ByteBuffer r16, int r17, int r18) {
        /*
        r3 = pendingRequestIds;
        monitor-enter(r3);
        r2 = pendingRequestIds;	 Catch:{ all -> 0x0094 }
        r4 = java.lang.Integer.valueOf(r12);	 Catch:{ all -> 0x0094 }
        r2 = r2.contains(r4);	 Catch:{ all -> 0x0094 }
        if (r2 != 0) goto L_0x0014;
    L_0x000f:
        r2 = 1;
    L_0x0010:
        if (r2 == 0) goto L_0x0016;
    L_0x0012:
        monitor-exit(r3);	 Catch:{ all -> 0x0094 }
    L_0x0013:
        return;
    L_0x0014:
        r2 = 0;
        goto L_0x0010;
    L_0x0016:
        r2 = pendingRequestIds;	 Catch:{ all -> 0x0094 }
        r4 = java.lang.Integer.valueOf(r12);	 Catch:{ all -> 0x0094 }
        r2.remove(r4);	 Catch:{ all -> 0x0094 }
        monitor-exit(r3);	 Catch:{ all -> 0x0094 }
        r6 = 0;
        r3 = 0;
        r5 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r4 = 0;
        r2 = new java.net.URL;	 Catch:{ IOException -> 0x00ff, all -> 0x00e8 }
        r2.<init>(r13);	 Catch:{ IOException -> 0x00ff, all -> 0x00e8 }
        r2 = r2.openConnection();	 Catch:{ IOException -> 0x00ff, all -> 0x00e8 }
        r2 = (java.net.HttpURLConnection) r2;	 Catch:{ IOException -> 0x00ff, all -> 0x00e8 }
        r2 = (java.net.HttpURLConnection) r2;	 Catch:{ IOException -> 0x00ff, all -> 0x00e8 }
        setHeaders(r2, r15);	 Catch:{ IOException -> 0x00be, all -> 0x00f9 }
        r3 = 15000; // 0x3a98 float:2.102E-41 double:7.411E-320;
        r2.setConnectTimeout(r3);	 Catch:{ IOException -> 0x00be, all -> 0x00f9 }
        r3 = "Connection";
        r6 = "Keep-Alive";
        r2.setRequestProperty(r3, r6);	 Catch:{ IOException -> 0x00be, all -> 0x00f9 }
        r3 = 0;
        java.net.HttpURLConnection.setFollowRedirects(r3);	 Catch:{ IOException -> 0x00be, all -> 0x00f9 }
        r3 = getMethodString(r14);	 Catch:{ IOException -> 0x00be, all -> 0x00f9 }
        r2.setRequestMethod(r3);	 Catch:{ IOException -> 0x00be, all -> 0x00f9 }
        if (r16 == 0) goto L_0x0070;
    L_0x004e:
        if (r18 <= 0) goto L_0x0070;
    L_0x0050:
        r3 = 1;
        r2.setDoOutput(r3);	 Catch:{ IOException -> 0x00be, all -> 0x00f9 }
        r6 = r2.getOutputStream();	 Catch:{ IOException -> 0x00be, all -> 0x00f9 }
        r3 = r16.hasArray();	 Catch:{ all -> 0x00b9 }
        if (r3 == 0) goto L_0x0097;
    L_0x005e:
        r3 = r16.array();	 Catch:{ all -> 0x00b9 }
        r7 = r16.arrayOffset();	 Catch:{ all -> 0x00b9 }
        r7 = r7 + r17;
        r0 = r18;
        r6.write(r3, r7, r0);	 Catch:{ all -> 0x00b9 }
    L_0x006d:
        r6.close();	 Catch:{ IOException -> 0x00be, all -> 0x00f9 }
    L_0x0070:
        r5 = r2.getResponseCode();	 Catch:{ IOException -> 0x00be, all -> 0x00f9 }
        r4 = joinHeaders(r2);	 Catch:{ IOException -> 0x00be, all -> 0x00f9 }
        r8 = readDataSteam(r2);	 Catch:{ IOException -> 0x0104, all -> 0x00f9 }
        if (r2 == 0) goto L_0x010e;
    L_0x007e:
        r2.disconnect();
        r9 = r4;
        r4 = r5;
        r5 = r9;
    L_0x0084:
        if (r8 <= 0) goto L_0x00f0;
    L_0x0086:
        r2 = readBuffer;
        r6 = r2.get();
        r6 = (java.nio.ByteBuffer) r6;
        r7 = 0;
        r2 = r10;
        nativeCallback(r2, r4, r5, r6, r7, r8);
        goto L_0x0013;
    L_0x0094:
        r2 = move-exception;
        monitor-exit(r3);	 Catch:{ all -> 0x0094 }
        throw r2;
    L_0x0097:
        r3 = threadChunk;	 Catch:{ all -> 0x00b9 }
        r3 = r3.get();	 Catch:{ all -> 0x00b9 }
        r3 = (byte[]) r3;	 Catch:{ all -> 0x00b9 }
    L_0x009f:
        r7 = r16.hasRemaining();	 Catch:{ all -> 0x00b9 }
        if (r7 == 0) goto L_0x006d;
    L_0x00a5:
        r7 = r16.remaining();	 Catch:{ all -> 0x00b9 }
        r8 = r3.length;	 Catch:{ all -> 0x00b9 }
        r7 = java.lang.Math.min(r7, r8);	 Catch:{ all -> 0x00b9 }
        r8 = 0;
        r0 = r16;
        r0.get(r3, r8, r7);	 Catch:{ all -> 0x00b9 }
        r8 = 0;
        r6.write(r3, r8, r7);	 Catch:{ all -> 0x00b9 }
        goto L_0x009f;
    L_0x00b9:
        r3 = move-exception;
        r6.close();	 Catch:{ IOException -> 0x00be, all -> 0x00f9 }
        throw r3;	 Catch:{ IOException -> 0x00be, all -> 0x00f9 }
    L_0x00be:
        r3 = move-exception;
        r9 = r3;
        r3 = r4;
        r4 = r2;
        r2 = r9;
    L_0x00c3:
        r6 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00fd }
        r6.<init>();	 Catch:{ all -> 0x00fd }
        r7 = "NiaNet";
        r8 = "Network op failed: ";
        r6 = r6.append(r8);	 Catch:{ all -> 0x00fd }
        r2 = r2.getMessage();	 Catch:{ all -> 0x00fd }
        r2 = r6.append(r2);	 Catch:{ all -> 0x00fd }
        r2 = r2.toString();	 Catch:{ all -> 0x00fd }
        android.util.Log.e(r7, r2);	 Catch:{ all -> 0x00fd }
        r8 = 0;
        if (r4 == 0) goto L_0x010a;
    L_0x00e2:
        r4.disconnect();
        r4 = r5;
        r5 = r3;
        goto L_0x0084;
    L_0x00e8:
        r2 = move-exception;
        r4 = r6;
    L_0x00ea:
        if (r4 == 0) goto L_0x00ef;
    L_0x00ec:
        r4.disconnect();
    L_0x00ef:
        throw r2;
    L_0x00f0:
        r6 = 0;
        r7 = 0;
        r8 = 0;
        r2 = r10;
        nativeCallback(r2, r4, r5, r6, r7, r8);
        goto L_0x0013;
    L_0x00f9:
        r3 = move-exception;
        r4 = r2;
        r2 = r3;
        goto L_0x00ea;
    L_0x00fd:
        r2 = move-exception;
        goto L_0x00ea;
    L_0x00ff:
        r2 = move-exception;
        r9 = r4;
        r4 = r3;
        r3 = r9;
        goto L_0x00c3;
    L_0x0104:
        r3 = move-exception;
        r9 = r3;
        r3 = r4;
        r4 = r2;
        r2 = r9;
        goto L_0x00c3;
    L_0x010a:
        r4 = r5;
        r5 = r3;
        goto L_0x0084;
    L_0x010e:
        r9 = r4;
        r4 = r5;
        r5 = r9;
        goto L_0x0084;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nianticlabs.nia.network.NiaNet.doSyncRequest(long, int, java.lang.String, int, java.lang.String, java.nio.ByteBuffer, int, int):void");
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
            Object array = byteBuffer.array();
            int arrayOffset = byteBuffer.arrayOffset();
            void v = METHOD_HEAD;
            int i = arrayOffset;
            int i2 = arrayOffset;
            Object obj = array;
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
                    continue;
                }
                if (v == null) {
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
