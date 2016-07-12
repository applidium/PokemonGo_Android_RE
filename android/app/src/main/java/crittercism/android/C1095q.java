package crittercism.android;

import com.voxelbusters.nativeplugins.defines.Keys.Scheme;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import javax.net.ssl.HttpsURLConnection;

/* renamed from: crittercism.android.q */
public final class C1095q extends C1090m {
    private static final String[] f848f;

    static {
        f848f = new String[]{"libcore.net.http.HttpsURLConnectionImpl", "org.apache.harmony.luni.internal.net.www.protocol.https.HttpsURLConnectionImpl", "org.apache.harmony.luni.internal.net.www.protocol.https.HttpsURLConnection"};
    }

    public C1095q(C1078e c1078e, C1068d c1068d) {
        super(c1078e, c1068d, f848f);
    }

    protected final String m807a() {
        return Scheme.HTTPS;
    }

    protected final int getDefaultPort() {
        return 443;
    }

    protected final URLConnection openConnection(URL url) {
        HttpsURLConnection httpsURLConnection = (HttpsURLConnection) super.openConnection(url);
        try {
            return new C1097s(httpsURLConnection, this.f840c, this.f841d);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m752a(th);
            return httpsURLConnection;
        }
    }

    protected final URLConnection openConnection(URL url, Proxy proxy) {
        HttpsURLConnection httpsURLConnection = (HttpsURLConnection) super.openConnection(url, proxy);
        try {
            return new C1097s(httpsURLConnection, this.f840c, this.f841d);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m752a(th);
            return httpsURLConnection;
        }
    }
}
