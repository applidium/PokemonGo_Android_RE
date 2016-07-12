package crittercism.android;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.Permission;
import java.util.Map;

/* renamed from: crittercism.android.r */
public final class C1096r extends HttpURLConnection {
    private C1078e f849a;
    private HttpURLConnection f850b;
    private C1060c f851c;
    private C1068d f852d;
    private boolean f853e;
    private boolean f854f;

    public C1096r(HttpURLConnection httpURLConnection, C1078e c1078e, C1068d c1068d) {
        super(httpURLConnection.getURL());
        this.f853e = false;
        this.f854f = false;
        this.f850b = httpURLConnection;
        this.f849a = c1078e;
        this.f852d = c1068d;
        this.f851c = new C1060c(httpURLConnection.getURL());
    }

    private void m808a() {
        try {
            if (!this.f854f) {
                this.f854f = true;
                this.f851c.f585f = this.f850b.getRequestMethod();
                this.f851c.m640b();
                this.f851c.f589j = this.f852d.m692a();
                if (bc.m450b()) {
                    this.f851c.m634a(bc.m448a());
                }
            }
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m752a(th);
        }
    }

    private void m809a(Throwable th) {
        try {
            if (!this.f853e) {
                this.f853e = true;
                this.f851c.m643c();
                this.f851c.m638a(th);
                this.f849a.m760a(this.f851c);
            }
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th2) {
            dx.m752a(th);
        }
    }

    private void m810b() {
        Object obj = null;
        try {
            if (!this.f853e) {
                this.f853e = true;
                this.f851c.m643c();
                if (this.f850b.getHeaderFields() != null) {
                    C1094p c1094p = new C1094p(this.f850b.getHeaderFields());
                    int b = c1094p.m805b("Content-Length");
                    if (b != -1) {
                        this.f851c.m641b((long) b);
                        obj = 1;
                    }
                    long a = c1094p.m804a("X-Android-Sent-Millis");
                    long a2 = c1094p.m804a("X-Android-Received-Millis");
                    if (!(a == Long.MAX_VALUE || a2 == Long.MAX_VALUE)) {
                        this.f851c.m648e(a);
                        this.f851c.m650f(a2);
                    }
                }
                try {
                    this.f851c.f584e = this.f850b.getResponseCode();
                } catch (IOException e) {
                }
                if (obj != null) {
                    this.f849a.m760a(this.f851c);
                }
            }
        } catch (ThreadDeath e2) {
            throw e2;
        } catch (Throwable th) {
            dx.m752a(th);
        }
    }

    public final void addRequestProperty(String str, String str2) {
        this.f850b.addRequestProperty(str, str2);
    }

    public final void connect() {
        this.f850b.connect();
    }

    public final void disconnect() {
        this.f850b.disconnect();
        try {
            if (this.f853e && !this.f851c.f581b) {
                this.f849a.m760a(this.f851c);
            }
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m752a(th);
        }
    }

    public final boolean equals(Object obj) {
        return this.f850b.equals(obj);
    }

    public final boolean getAllowUserInteraction() {
        return this.f850b.getAllowUserInteraction();
    }

    public final int getConnectTimeout() {
        return this.f850b.getConnectTimeout();
    }

    public final Object getContent() {
        m808a();
        try {
            Object content = this.f850b.getContent();
            m810b();
            return content;
        } catch (Throwable e) {
            m809a(e);
            throw e;
        }
    }

    public final Object getContent(Class[] clsArr) {
        m808a();
        try {
            Object content = this.f850b.getContent(clsArr);
            m810b();
            return content;
        } catch (Throwable e) {
            m809a(e);
            throw e;
        }
    }

    public final String getContentEncoding() {
        m808a();
        String contentEncoding = this.f850b.getContentEncoding();
        m810b();
        return contentEncoding;
    }

    public final int getContentLength() {
        return this.f850b.getContentLength();
    }

    public final String getContentType() {
        m808a();
        String contentType = this.f850b.getContentType();
        m810b();
        return contentType;
    }

    public final long getDate() {
        return this.f850b.getDate();
    }

    public final boolean getDefaultUseCaches() {
        return this.f850b.getDefaultUseCaches();
    }

    public final boolean getDoInput() {
        return this.f850b.getDoInput();
    }

    public final boolean getDoOutput() {
        return this.f850b.getDoOutput();
    }

    public final InputStream getErrorStream() {
        m808a();
        InputStream errorStream = this.f850b.getErrorStream();
        m810b();
        if (errorStream != null) {
            try {
                return new C1098t(errorStream, this.f849a, this.f851c);
            } catch (ThreadDeath e) {
                throw e;
            } catch (Throwable th) {
                dx.m752a(th);
            }
        }
        return errorStream;
    }

    public final long getExpiration() {
        return this.f850b.getExpiration();
    }

    public final String getHeaderField(int i) {
        m808a();
        String headerField = this.f850b.getHeaderField(i);
        m810b();
        return headerField;
    }

    public final String getHeaderField(String str) {
        m808a();
        String headerField = this.f850b.getHeaderField(str);
        m810b();
        return headerField;
    }

    public final long getHeaderFieldDate(String str, long j) {
        m808a();
        long headerFieldDate = this.f850b.getHeaderFieldDate(str, j);
        m810b();
        return headerFieldDate;
    }

    public final int getHeaderFieldInt(String str, int i) {
        m808a();
        int headerFieldInt = this.f850b.getHeaderFieldInt(str, i);
        m810b();
        return headerFieldInt;
    }

    public final String getHeaderFieldKey(int i) {
        m808a();
        String headerFieldKey = this.f850b.getHeaderFieldKey(i);
        m810b();
        return headerFieldKey;
    }

    public final Map getHeaderFields() {
        m808a();
        Map headerFields = this.f850b.getHeaderFields();
        m810b();
        return headerFields;
    }

    public final long getIfModifiedSince() {
        return this.f850b.getIfModifiedSince();
    }

    public final InputStream getInputStream() {
        m808a();
        try {
            InputStream inputStream = this.f850b.getInputStream();
            m810b();
            if (inputStream != null) {
                try {
                    return new C1098t(inputStream, this.f849a, this.f851c);
                } catch (ThreadDeath e) {
                    throw e;
                } catch (Throwable th) {
                    dx.m752a(th);
                }
            }
            return inputStream;
        } catch (Throwable th2) {
            m809a(th2);
            throw th2;
        }
    }

    public final boolean getInstanceFollowRedirects() {
        return this.f850b.getInstanceFollowRedirects();
    }

    public final long getLastModified() {
        return this.f850b.getLastModified();
    }

    public final OutputStream getOutputStream() {
        OutputStream outputStream = this.f850b.getOutputStream();
        if (outputStream != null) {
            try {
                return new C1099u(outputStream, this.f851c);
            } catch (ThreadDeath e) {
                throw e;
            } catch (Throwable th) {
                dx.m752a(th);
            }
        }
        return outputStream;
    }

    public final Permission getPermission() {
        return this.f850b.getPermission();
    }

    public final int getReadTimeout() {
        return this.f850b.getReadTimeout();
    }

    public final String getRequestMethod() {
        return this.f850b.getRequestMethod();
    }

    public final Map getRequestProperties() {
        return this.f850b.getRequestProperties();
    }

    public final String getRequestProperty(String str) {
        return this.f850b.getRequestProperty(str);
    }

    public final int getResponseCode() {
        m808a();
        try {
            int responseCode = this.f850b.getResponseCode();
            m810b();
            return responseCode;
        } catch (Throwable e) {
            m809a(e);
            throw e;
        }
    }

    public final String getResponseMessage() {
        m808a();
        try {
            String responseMessage = this.f850b.getResponseMessage();
            m810b();
            return responseMessage;
        } catch (Throwable e) {
            m809a(e);
            throw e;
        }
    }

    public final URL getURL() {
        return this.f850b.getURL();
    }

    public final boolean getUseCaches() {
        return this.f850b.getUseCaches();
    }

    public final int hashCode() {
        return this.f850b.hashCode();
    }

    public final void setAllowUserInteraction(boolean z) {
        this.f850b.setAllowUserInteraction(z);
    }

    public final void setChunkedStreamingMode(int i) {
        this.f850b.setChunkedStreamingMode(i);
    }

    public final void setConnectTimeout(int i) {
        this.f850b.setConnectTimeout(i);
    }

    public final void setDefaultUseCaches(boolean z) {
        this.f850b.setDefaultUseCaches(z);
    }

    public final void setDoInput(boolean z) {
        this.f850b.setDoInput(z);
    }

    public final void setDoOutput(boolean z) {
        this.f850b.setDoOutput(z);
    }

    public final void setFixedLengthStreamingMode(int i) {
        this.f850b.setFixedLengthStreamingMode(i);
    }

    public final void setIfModifiedSince(long j) {
        this.f850b.setIfModifiedSince(j);
    }

    public final void setInstanceFollowRedirects(boolean z) {
        this.f850b.setInstanceFollowRedirects(z);
    }

    public final void setReadTimeout(int i) {
        this.f850b.setReadTimeout(i);
    }

    public final void setRequestMethod(String str) {
        this.f850b.setRequestMethod(str);
    }

    public final void setRequestProperty(String str, String str2) {
        this.f850b.setRequestProperty(str, str2);
    }

    public final void setUseCaches(boolean z) {
        this.f850b.setUseCaches(z);
    }

    public final String toString() {
        return this.f850b.toString();
    }

    public final boolean usingProxy() {
        return this.f850b.usingProxy();
    }
}
