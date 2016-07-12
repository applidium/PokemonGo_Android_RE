package crittercism.android;

import com.voxelbusters.nativeplugins.defines.Keys.Scheme;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;

/* renamed from: crittercism.android.o */
public final class C1092o extends C1090m {
    private static final String[] f846f;

    static {
        f846f = new String[]{"libcore.net.http.HttpURLConnectionImpl", "org.apache.harmony.luni.internal.net.www.protocol.http.HttpURLConnectionImpl", "org.apache.harmony.luni.internal.net.www.protocol.http.HttpURLConnection"};
    }

    public C1092o(C1078e c1078e, C1068d c1068d) {
        super(c1078e, c1068d, f846f);
    }

    protected final String m806a() {
        return Scheme.HTTP;
    }

    protected final int getDefaultPort() {
        return 80;
    }

    protected final URLConnection openConnection(URL url) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) super.openConnection(url);
        try {
            return new C1096r(httpURLConnection, this.f840c, this.f841d);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m752a(th);
            return httpURLConnection;
        }
    }

    protected final URLConnection openConnection(URL url, Proxy proxy) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) super.openConnection(url, proxy);
        try {
            return new C1096r(httpURLConnection, this.f840c, this.f841d);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m752a(th);
            return httpURLConnection;
        }
    }
}
