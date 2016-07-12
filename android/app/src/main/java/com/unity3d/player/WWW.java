package com.unity3d.player;

import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.voxelbusters.nativeplugins.defines.Keys.Scheme;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import org.apache.commons.io.IOUtils;
import spacemadness.com.lunarconsole.BuildConfig;

class WWW extends Thread {
    private int f140a;
    private int f141b;
    private String f142c;
    private byte[] f143d;
    private Map f144e;

    WWW(int i, String str, byte[] bArr, Map map) {
        this.f141b = i;
        this.f142c = str;
        this.f143d = bArr;
        this.f144e = map;
        this.f140a = 0;
    }

    private static native void doneCallback(int i);

    private static native void errorCallback(int i, String str);

    private static native boolean headerCallback(int i, String str);

    private static native void progressCallback(int i, float f, float f2, double d, int i2);

    private static native boolean readCallback(int i, byte[] bArr, int i2);

    protected boolean headerCallback(String str, String str2) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        stringBuilder.append(": ");
        stringBuilder.append(str2);
        stringBuilder.append("\n\r");
        return headerCallback(this.f141b, stringBuilder.toString());
    }

    protected boolean headerCallback(Map map) {
        if (map == null || map.size() == 0) {
            return false;
        }
        StringBuilder stringBuilder = new StringBuilder();
        for (Entry entry : map.entrySet()) {
            for (String str : (List) entry.getValue()) {
                stringBuilder.append((String) entry.getKey());
                stringBuilder.append(": ");
                stringBuilder.append(str);
                stringBuilder.append(IOUtils.LINE_SEPARATOR_WINDOWS);
            }
            if (entry.getKey() == null) {
                for (String str2 : (List) entry.getValue()) {
                    stringBuilder.append("Status: ");
                    stringBuilder.append(str2);
                    stringBuilder.append(IOUtils.LINE_SEPARATOR_WINDOWS);
                }
            }
        }
        return headerCallback(this.f141b, stringBuilder.toString());
    }

    protected void progressCallback(int i, int i2, int i3, int i4, long j, long j2) {
        float f;
        float f2;
        double max;
        if (i4 > 0) {
            f = ((float) i3) / ((float) i4);
            f2 = 1.0f;
            max = ((double) Math.max(i4 - i3, 0)) / ((1000.0d * ((double) i3)) / Math.max((double) (j - j2), 0.1d));
            if (Double.isInfinite(max) || Double.isNaN(max)) {
                max = 0.0d;
            }
        } else if (i2 > 0) {
            f = 0.0f;
            f2 = (float) (i / i2);
            max = 0.0d;
        } else {
            return;
        }
        progressCallback(this.f141b, f2, f, max, i4);
    }

    protected boolean readCallback(byte[] bArr, int i) {
        return readCallback(this.f141b, bArr, i);
    }

    public void run() {
        try {
            runSafe();
        } catch (Throwable th) {
            errorCallback(this.f141b, "Error: " + th.toString());
        }
    }

    public void runSafe() {
        int i = this.f140a + 1;
        this.f140a = i;
        if (i > 5) {
            errorCallback(this.f141b, "Too many redirects");
            return;
        }
        try {
            URL url = new URL(this.f142c);
            URLConnection openConnection = url.openConnection();
            if (!url.getProtocol().equalsIgnoreCase(Scheme.FILE) || url.getHost() == null || url.getHost().length() == 0) {
                int min;
                HttpURLConnection httpURLConnection;
                if (this.f144e != null) {
                    for (Entry entry : this.f144e.entrySet()) {
                        openConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
                    }
                }
                if (this.f143d != null) {
                    openConnection.setDoOutput(true);
                    try {
                        OutputStream outputStream = openConnection.getOutputStream();
                        int i2 = 0;
                        while (i2 < this.f143d.length) {
                            min = Math.min(1428, this.f143d.length - i2);
                            outputStream.write(this.f143d, i2, min);
                            i2 += min;
                            progressCallback(i2, this.f143d.length, 0, 0, 0, 0);
                        }
                    } catch (Exception e) {
                        errorCallback(this.f141b, e.toString());
                        return;
                    }
                }
                if (openConnection instanceof HttpURLConnection) {
                    httpURLConnection = (HttpURLConnection) openConnection;
                    try {
                        min = httpURLConnection.getResponseCode();
                        Map headerFields = httpURLConnection.getHeaderFields();
                        if (headerFields != null && (min == 301 || min == 302)) {
                            List list = (List) headerFields.get("Location");
                            if (!(list == null || list.isEmpty())) {
                                httpURLConnection.disconnect();
                                this.f142c = (String) list.get(0);
                                run();
                                return;
                            }
                        }
                    } catch (IOException e2) {
                        errorCallback(this.f141b, e2.toString());
                        return;
                    }
                }
                Map headerFields2 = openConnection.getHeaderFields();
                boolean headerCallback = headerCallback(headerFields2);
                if ((headerFields2 == null || !headerFields2.containsKey("content-length")) && openConnection.getContentLength() != -1) {
                    headerCallback = headerCallback || headerCallback("content-length", String.valueOf(openConnection.getContentLength()));
                }
                if ((headerFields2 == null || !headerFields2.containsKey("content-type")) && openConnection.getContentType() != null) {
                    headerCallback = headerCallback || headerCallback("content-type", openConnection.getContentType());
                }
                if (headerCallback) {
                    errorCallback(this.f141b, this.f142c + " aborted");
                    return;
                }
                int contentLength = openConnection.getContentLength() > 0 ? openConnection.getContentLength() : 0;
                i = (url.getProtocol().equalsIgnoreCase(Scheme.FILE) || url.getProtocol().equalsIgnoreCase("jar")) ? contentLength == 0 ? AccessibilityNodeInfoCompat.ACTION_PASTE : Math.min(contentLength, AccessibilityNodeInfoCompat.ACTION_PASTE) : 1428;
                int i3 = 0;
                try {
                    String str;
                    InputStream inputStream;
                    Object obj;
                    long currentTimeMillis = System.currentTimeMillis();
                    byte[] bArr = new byte[i];
                    if (openConnection instanceof HttpURLConnection) {
                        httpURLConnection = (HttpURLConnection) openConnection;
                        InputStream errorStream = httpURLConnection.getErrorStream();
                        str = httpURLConnection.getResponseCode() + ": " + httpURLConnection.getResponseMessage();
                        inputStream = errorStream;
                    } else {
                        str = BuildConfig.FLAVOR;
                        inputStream = null;
                    }
                    if (inputStream == null) {
                        inputStream = openConnection.getInputStream();
                        obj = null;
                    } else {
                        int i4 = 1;
                    }
                    for (min = 0; min != -1; min = inputStream.read(bArr)) {
                        if (readCallback(bArr, min)) {
                            errorCallback(this.f141b, this.f142c + " aborted");
                            return;
                        }
                        if (obj == null) {
                            i3 += min;
                            progressCallback(0, 0, i3, contentLength, System.currentTimeMillis(), currentTimeMillis);
                        }
                    }
                    if (obj != null) {
                        errorCallback(this.f141b, str);
                    }
                    progressCallback(0, 0, i3, i3, 0, 0);
                    doneCallback(this.f141b);
                    return;
                } catch (Exception e3) {
                    errorCallback(this.f141b, e3.toString());
                    return;
                }
            }
            errorCallback(this.f141b, url.getHost() + url.getFile() + " is not an absolute path!");
        } catch (MalformedURLException e4) {
            errorCallback(this.f141b, e4.toString());
        } catch (IOException e22) {
            errorCallback(this.f141b, e22.toString());
        }
    }
}
