package crittercism.android;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.security.Permission;
import java.security.Principal;
import java.security.cert.Certificate;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;

/* renamed from: crittercism.android.s */
public final class C1097s extends HttpsURLConnection {
    private C1078e f855a;
    private HttpsURLConnection f856b;
    private C1060c f857c;
    private C1068d f858d;
    private boolean f859e;
    private boolean f860f;

    public C1097s(HttpsURLConnection httpsURLConnection, C1078e c1078e, C1068d c1068d) {
        super(httpsURLConnection.getURL());
        this.f855a = null;
        this.f856b = null;
        this.f857c = null;
        this.f858d = null;
        this.f859e = false;
        this.f860f = false;
        this.f855a = c1078e;
        this.f856b = httpsURLConnection;
        this.f858d = c1068d;
        this.f857c = new C1060c(httpsURLConnection.getURL());
        SSLSocketFactory sSLSocketFactory = this.f856b.getSSLSocketFactory();
        if (sSLSocketFactory instanceof ab) {
            this.f856b.setSSLSocketFactory(((ab) sSLSocketFactory).m236a());
        }
    }

    private void m811a() {
        try {
            if (!this.f860f) {
                this.f860f = true;
                this.f857c.f585f = this.f856b.getRequestMethod();
                this.f857c.m640b();
                this.f857c.f589j = this.f858d.m692a();
                if (bc.m450b()) {
                    this.f857c.m634a(bc.m448a());
                }
            }
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m752a(th);
        }
    }

    private void m812a(Throwable th) {
        try {
            if (!this.f859e) {
                this.f859e = true;
                this.f857c.m643c();
                this.f857c.m638a(th);
                this.f855a.m760a(this.f857c);
            }
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th2) {
            dx.m752a(th2);
        }
    }

    private void m813b() {
        Object obj = null;
        try {
            if (!this.f859e) {
                this.f859e = true;
                this.f857c.m643c();
                if (this.f856b.getHeaderFields() != null) {
                    C1094p c1094p = new C1094p(this.f856b.getHeaderFields());
                    int b = c1094p.m805b("Content-Length");
                    if (b != -1) {
                        this.f857c.m641b((long) b);
                        obj = 1;
                    }
                    long a = c1094p.m804a("X-Android-Sent-Millis");
                    long a2 = c1094p.m804a("X-Android-Received-Millis");
                    if (!(a == Long.MAX_VALUE || a2 == Long.MAX_VALUE)) {
                        this.f857c.m648e(a);
                        this.f857c.m650f(a2);
                    }
                }
                try {
                    this.f857c.f584e = this.f856b.getResponseCode();
                } catch (IOException e) {
                }
                if (obj != null) {
                    this.f855a.m760a(this.f857c);
                }
            }
        } catch (ThreadDeath e2) {
            throw e2;
        } catch (Throwable th) {
            dx.m752a(th);
        }
    }

    public final void addRequestProperty(String str, String str2) {
        this.f856b.addRequestProperty(str, str2);
    }

    public final void connect() {
        this.f856b.connect();
    }

    public final void disconnect() {
        this.f856b.disconnect();
        try {
            if (this.f859e && !this.f857c.f581b) {
                this.f855a.m760a(this.f857c);
            }
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m752a(th);
        }
    }

    public final boolean equals(Object obj) {
        return this.f856b.equals(obj);
    }

    public final boolean getAllowUserInteraction() {
        return this.f856b.getAllowUserInteraction();
    }

    public final String getCipherSuite() {
        return this.f856b.getCipherSuite();
    }

    public final int getConnectTimeout() {
        return this.f856b.getConnectTimeout();
    }

    public final Object getContent() {
        m811a();
        try {
            Object content = this.f856b.getContent();
            m813b();
            return content;
        } catch (Throwable e) {
            m812a(e);
            throw e;
        }
    }

    public final Object getContent(Class[] clsArr) {
        m811a();
        try {
            Object content = this.f856b.getContent(clsArr);
            m813b();
            return content;
        } catch (Throwable e) {
            m812a(e);
            throw e;
        }
    }

    public final String getContentEncoding() {
        m811a();
        String contentEncoding = this.f856b.getContentEncoding();
        m813b();
        return contentEncoding;
    }

    public final int getContentLength() {
        return this.f856b.getContentLength();
    }

    public final String getContentType() {
        m811a();
        String contentType = this.f856b.getContentType();
        m813b();
        return contentType;
    }

    public final long getDate() {
        return this.f856b.getDate();
    }

    public final boolean getDefaultUseCaches() {
        return this.f856b.getDefaultUseCaches();
    }

    public final boolean getDoInput() {
        return this.f856b.getDoInput();
    }

    public final boolean getDoOutput() {
        return this.f856b.getDoOutput();
    }

    public final InputStream getErrorStream() {
        m811a();
        InputStream errorStream = this.f856b.getErrorStream();
        m813b();
        if (errorStream != null) {
            try {
                return new C1098t(errorStream, this.f855a, this.f857c);
            } catch (ThreadDeath e) {
                throw e;
            } catch (Throwable th) {
                dx.m752a(th);
            }
        }
        return errorStream;
    }

    public final long getExpiration() {
        return this.f856b.getExpiration();
    }

    public final String getHeaderField(int i) {
        m811a();
        String headerField = this.f856b.getHeaderField(i);
        m813b();
        return headerField;
    }

    public final String getHeaderField(String str) {
        m811a();
        String headerField = this.f856b.getHeaderField(str);
        m813b();
        return headerField;
    }

    public final long getHeaderFieldDate(String str, long j) {
        m811a();
        long headerFieldDate = this.f856b.getHeaderFieldDate(str, j);
        m813b();
        return headerFieldDate;
    }

    public final int getHeaderFieldInt(String str, int i) {
        m811a();
        int headerFieldInt = this.f856b.getHeaderFieldInt(str, i);
        m813b();
        return headerFieldInt;
    }

    public final String getHeaderFieldKey(int i) {
        m811a();
        String headerFieldKey = this.f856b.getHeaderFieldKey(i);
        m813b();
        return headerFieldKey;
    }

    public final Map getHeaderFields() {
        m811a();
        Map headerFields = this.f856b.getHeaderFields();
        m813b();
        return headerFields;
    }

    public final HostnameVerifier getHostnameVerifier() {
        return this.f856b.getHostnameVerifier();
    }

    public final long getIfModifiedSince() {
        return this.f856b.getIfModifiedSince();
    }

    public final InputStream getInputStream() {
        m811a();
        try {
            InputStream inputStream = this.f856b.getInputStream();
            m813b();
            if (inputStream != null) {
                try {
                    return new C1098t(inputStream, this.f855a, this.f857c);
                } catch (ThreadDeath e) {
                    throw e;
                } catch (Throwable th) {
                    dx.m752a(th);
                }
            }
            return inputStream;
        } catch (Throwable th2) {
            m812a(th2);
            throw th2;
        }
    }

    public final boolean getInstanceFollowRedirects() {
        return this.f856b.getInstanceFollowRedirects();
    }

    public final long getLastModified() {
        return this.f856b.getLastModified();
    }

    public final Certificate[] getLocalCertificates() {
        return this.f856b.getLocalCertificates();
    }

    public final Principal getLocalPrincipal() {
        return this.f856b.getLocalPrincipal();
    }

    public final OutputStream getOutputStream() {
        OutputStream outputStream = this.f856b.getOutputStream();
        if (outputStream != null) {
            try {
                return new C1099u(outputStream, this.f857c);
            } catch (ThreadDeath e) {
                throw e;
            } catch (Throwable th) {
                dx.m752a(th);
            }
        }
        return outputStream;
    }

    public final Principal getPeerPrincipal() {
        return this.f856b.getPeerPrincipal();
    }

    public final Permission getPermission() {
        return this.f856b.getPermission();
    }

    public final int getReadTimeout() {
        return this.f856b.getReadTimeout();
    }

    public final String getRequestMethod() {
        return this.f856b.getRequestMethod();
    }

    public final Map getRequestProperties() {
        return this.f856b.getRequestProperties();
    }

    public final String getRequestProperty(String str) {
        return this.f856b.getRequestProperty(str);
    }

    public final int getResponseCode() {
        m811a();
        try {
            int responseCode = this.f856b.getResponseCode();
            m813b();
            return responseCode;
        } catch (Throwable e) {
            m812a(e);
            throw e;
        }
    }

    public final String getResponseMessage() {
        m811a();
        try {
            String responseMessage = this.f856b.getResponseMessage();
            m813b();
            return responseMessage;
        } catch (Throwable e) {
            m812a(e);
            throw e;
        }
    }

    public final SSLSocketFactory getSSLSocketFactory() {
        return this.f856b.getSSLSocketFactory();
    }

    public final Certificate[] getServerCertificates() {
        return this.f856b.getServerCertificates();
    }

    public final URL getURL() {
        return this.f856b.getURL();
    }

    public final boolean getUseCaches() {
        return this.f856b.getUseCaches();
    }

    public final int hashCode() {
        return this.f856b.hashCode();
    }

    public final void setAllowUserInteraction(boolean z) {
        this.f856b.setAllowUserInteraction(z);
    }

    public final void setChunkedStreamingMode(int i) {
        this.f856b.setChunkedStreamingMode(i);
    }

    public final void setConnectTimeout(int i) {
        this.f856b.setConnectTimeout(i);
    }

    public final void setDefaultUseCaches(boolean z) {
        this.f856b.setDefaultUseCaches(z);
    }

    public final void setDoInput(boolean z) {
        this.f856b.setDoInput(z);
    }

    public final void setDoOutput(boolean z) {
        this.f856b.setDoOutput(z);
    }

    public final void setFixedLengthStreamingMode(int i) {
        this.f856b.setFixedLengthStreamingMode(i);
    }

    public final void setHostnameVerifier(HostnameVerifier hostnameVerifier) {
        this.f856b.setHostnameVerifier(hostnameVerifier);
    }

    public final void setIfModifiedSince(long j) {
        this.f856b.setIfModifiedSince(j);
    }

    public final void setInstanceFollowRedirects(boolean z) {
        this.f856b.setInstanceFollowRedirects(z);
    }

    public final void setReadTimeout(int i) {
        this.f856b.setReadTimeout(i);
    }

    public final void setRequestMethod(String str) {
        this.f856b.setRequestMethod(str);
    }

    public final void setRequestProperty(String str, String str2) {
        this.f856b.setRequestProperty(str, str2);
    }

    public final void setSSLSocketFactory(SSLSocketFactory sSLSocketFactory) {
        try {
            if (sSLSocketFactory instanceof ab) {
                sSLSocketFactory = ((ab) sSLSocketFactory).m236a();
            }
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m752a(th);
        }
        this.f856b.setSSLSocketFactory(sSLSocketFactory);
    }

    public final void setUseCaches(boolean z) {
        this.f856b.setUseCaches(z);
    }

    public final String toString() {
        return this.f856b.toString();
    }

    public final boolean usingProxy() {
        return this.f856b.usingProxy();
    }
}
