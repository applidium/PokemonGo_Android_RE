package com.unity3d.player;

import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.voxelbusters.nativeplugins.defines.Keys.Scheme;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.JarURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.net.URLConnection;
import java.net.UnknownHostException;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLSocketFactory;

class UnityWebRequest implements Runnable {
    private static final String[] f134e;
    private static volatile SSLSocketFactory f135f;
    private long f136a;
    private String f137b;
    private String f138c;
    private Map f139d;

    static {
        f134e = new String[]{"TLSv1.2", "TLSv1.1"};
    }

    UnityWebRequest(long j, String str, Map map, String str2) {
        this.f136a = j;
        this.f137b = str2;
        this.f138c = str;
        this.f139d = map;
    }

    private static native void contentLengthCallback(long j, int i);

    private static native boolean downloadCallback(long j, ByteBuffer byteBuffer, int i);

    private static native void errorCallback(long j, int i, String str);

    private static SSLSocketFactory getSSLSocketFactory() {
        if (C0859q.f206g) {
            return null;
        }
        if (f135f != null) {
            return f135f;
        }
        synchronized (f134e) {
            String[] strArr = f134e;
            int length = strArr.length;
            int i = 0;
            while (i < length) {
                String str = strArr[i];
                try {
                    SSLContext instance = SSLContext.getInstance(str);
                    instance.init(null, null, null);
                    SSLSocketFactory socketFactory = instance.getSocketFactory();
                    f135f = socketFactory;
                    return socketFactory;
                } catch (Exception e) {
                    C0853m.Log(5, "UnityWebRequest: No support for " + str + " (" + e.getMessage() + ")");
                    i++;
                }
            }
            return null;
        }
    }

    private static native void headerCallback(long j, String str, String str2);

    private static native void responseCodeCallback(long j, int i);

    private static native int uploadCallback(long j, ByteBuffer byteBuffer);

    protected void badProtocolCallback(String str) {
        errorCallback(this.f136a, 4, str);
    }

    protected void contentLengthCallback(int i) {
        contentLengthCallback(this.f136a, i);
    }

    protected boolean downloadCallback(ByteBuffer byteBuffer, int i) {
        return downloadCallback(this.f136a, byteBuffer, i);
    }

    protected void errorCallback(String str) {
        errorCallback(this.f136a, 2, str);
    }

    protected void headerCallback(String str, String str2) {
        headerCallback(this.f136a, str, str2);
    }

    protected void headerCallback(Map map) {
        if (map != null && map.size() != 0) {
            for (Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                if (str == null) {
                    str = "Status";
                }
                for (String headerCallback : (List) entry.getValue()) {
                    headerCallback(str, headerCallback);
                }
            }
        }
    }

    protected void malformattedUrlCallback(String str) {
        errorCallback(this.f136a, 5, str);
    }

    protected void responseCodeCallback(int i) {
        responseCodeCallback(this.f136a, i);
    }

    public void run() {
        try {
            URL url = new URL(this.f137b);
            URLConnection openConnection = url.openConnection();
            if (openConnection instanceof HttpsURLConnection) {
                SSLSocketFactory sSLSocketFactory = getSSLSocketFactory();
                if (sSLSocketFactory != null) {
                    ((HttpsURLConnection) openConnection).setSSLSocketFactory(sSLSocketFactory);
                }
            }
            if (url.getProtocol().equalsIgnoreCase(Scheme.FILE) && !url.getHost().isEmpty()) {
                malformattedUrlCallback("file:// must use an absolute path");
            } else if (openConnection instanceof JarURLConnection) {
                badProtocolCallback("A URL Connection to a Java ARchive (JAR) file or an entry in a JAR file is not supported");
            } else {
                HttpURLConnection httpURLConnection;
                ByteBuffer allocateDirect;
                if (openConnection instanceof HttpURLConnection) {
                    try {
                        httpURLConnection = (HttpURLConnection) openConnection;
                        httpURLConnection.setRequestMethod(this.f138c);
                        httpURLConnection.setInstanceFollowRedirects(false);
                    } catch (ProtocolException e) {
                        badProtocolCallback(e.toString());
                        return;
                    }
                }
                if (this.f139d != null) {
                    for (Entry entry : this.f139d.entrySet()) {
                        openConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
                    }
                }
                int uploadCallback = uploadCallback(null);
                if (uploadCallback > 0) {
                    openConnection.setDoOutput(true);
                    try {
                        allocateDirect = ByteBuffer.allocateDirect(Math.min(uploadCallback, 1428));
                        OutputStream outputStream = openConnection.getOutputStream();
                        uploadCallback = uploadCallback(allocateDirect);
                        while (uploadCallback > 0) {
                            outputStream.write(allocateDirect.array(), allocateDirect.arrayOffset(), uploadCallback);
                            uploadCallback = uploadCallback(allocateDirect);
                        }
                    } catch (Exception e2) {
                        errorCallback(e2.toString());
                        return;
                    }
                }
                if (openConnection instanceof HttpURLConnection) {
                    try {
                        responseCodeCallback(((HttpURLConnection) openConnection).getResponseCode());
                    } catch (UnknownHostException e3) {
                        unknownHostCallback(e3.toString());
                    } catch (IOException e4) {
                        errorCallback(e4.toString());
                        return;
                    }
                }
                Map headerFields = openConnection.getHeaderFields();
                headerCallback(headerFields);
                if ((headerFields == null || !headerFields.containsKey("content-length")) && openConnection.getContentLength() != -1) {
                    headerCallback("content-length", String.valueOf(openConnection.getContentLength()));
                }
                if ((headerFields == null || !headerFields.containsKey("content-type")) && openConnection.getContentType() != null) {
                    headerCallback("content-type", openConnection.getContentType());
                }
                uploadCallback = openConnection.getContentLength();
                if (uploadCallback > 0) {
                    contentLengthCallback(uploadCallback);
                }
                int min = url.getProtocol().equalsIgnoreCase(Scheme.FILE) ? uploadCallback == 0 ? AccessibilityNodeInfoCompat.ACTION_PASTE : Math.min(uploadCallback, AccessibilityNodeInfoCompat.ACTION_PASTE) : 1428;
                try {
                    InputStream errorStream;
                    if (openConnection instanceof HttpURLConnection) {
                        httpURLConnection = (HttpURLConnection) openConnection;
                        responseCodeCallback(httpURLConnection.getResponseCode());
                        errorStream = httpURLConnection.getErrorStream();
                    } else {
                        errorStream = null;
                    }
                    if (errorStream == null) {
                        errorStream = openConnection.getInputStream();
                    }
                    ReadableByteChannel newChannel = Channels.newChannel(errorStream);
                    allocateDirect = ByteBuffer.allocateDirect(min);
                    uploadCallback = newChannel.read(allocateDirect);
                    while (uploadCallback != -1 && downloadCallback(allocateDirect, uploadCallback)) {
                        allocateDirect.clear();
                        uploadCallback = newChannel.read(allocateDirect);
                    }
                    newChannel.close();
                } catch (UnknownHostException e32) {
                    unknownHostCallback(e32.toString());
                } catch (SSLHandshakeException e5) {
                    sslCannotConnectCallback(e5.toString());
                } catch (Exception e22) {
                    errorCallback(e22.toString());
                }
            }
        } catch (MalformedURLException e6) {
            malformattedUrlCallback(e6.toString());
        } catch (IOException e42) {
            errorCallback(e42.toString());
        }
    }

    protected void sslCannotConnectCallback(String str) {
        errorCallback(this.f136a, 16, str);
    }

    protected void unknownHostCallback(String str) {
        errorCallback(this.f136a, 7, str);
    }

    protected int uploadCallback(ByteBuffer byteBuffer) {
        return uploadCallback(this.f136a, byteBuffer);
    }
}
