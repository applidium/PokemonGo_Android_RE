package crittercism.android;

import java.lang.reflect.Method;
import java.security.KeyManagementException;
import java.security.SecureRandom;
import javax.net.ssl.KeyManager;
import javax.net.ssl.SSLContextSpi;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLServerSocketFactory;
import javax.net.ssl.SSLSessionContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;

/* renamed from: crittercism.android.z */
public final class C1105z extends SSLContextSpi {
    private static Method[] f888a;
    private static boolean f889b;
    private SSLContextSpi f890c;
    private C1078e f891d;
    private C1068d f892e;

    static {
        f888a = new Method[7];
        f889b = false;
        try {
            f888a[0] = SSLContextSpi.class.getDeclaredMethod("engineCreateSSLEngine", new Class[0]);
            f888a[1] = SSLContextSpi.class.getDeclaredMethod("engineCreateSSLEngine", new Class[]{String.class, Integer.TYPE});
            f888a[2] = SSLContextSpi.class.getDeclaredMethod("engineGetClientSessionContext", new Class[0]);
            f888a[3] = SSLContextSpi.class.getDeclaredMethod("engineGetServerSessionContext", new Class[0]);
            f888a[4] = SSLContextSpi.class.getDeclaredMethod("engineGetServerSocketFactory", new Class[0]);
            f888a[5] = SSLContextSpi.class.getDeclaredMethod("engineGetSocketFactory", new Class[0]);
            f888a[6] = SSLContextSpi.class.getDeclaredMethod("engineInit", new Class[]{KeyManager[].class, TrustManager[].class, SecureRandom.class});
            C1086j.m796a(f888a);
            C1105z c1105z = new C1105z(new C1105z(), null, null);
            c1105z.engineCreateSSLEngine();
            c1105z.engineCreateSSLEngine(null, 0);
            c1105z.engineGetClientSessionContext();
            c1105z.engineGetServerSessionContext();
            c1105z.engineGetServerSocketFactory();
            c1105z.engineGetSocketFactory();
            c1105z.engineInit(null, null, null);
            f889b = true;
        } catch (Throwable th) {
            dx.m756c();
            f889b = false;
        }
    }

    private C1105z() {
    }

    private C1105z(SSLContextSpi sSLContextSpi, C1078e c1078e, C1068d c1068d) {
        this.f890c = sSLContextSpi;
        this.f891d = c1078e;
        this.f892e = c1068d;
    }

    public static C1105z m850a(SSLContextSpi sSLContextSpi, C1078e c1078e, C1068d c1068d) {
        return !f889b ? null : new C1105z(sSLContextSpi, c1078e, c1068d);
    }

    private Object m851a(int i, Object... objArr) {
        Throwable e;
        if (this.f890c == null) {
            return null;
        }
        try {
            return f888a[i].invoke(this.f890c, objArr);
        } catch (Throwable e2) {
            throw new ck(e2);
        } catch (Throwable e22) {
            throw new ck(e22);
        } catch (Throwable e222) {
            Throwable th = e222;
            e222 = th.getTargetException();
            if (e222 == null) {
                throw new ck(th);
            } else if (e222 instanceof Exception) {
                throw ((Exception) e222);
            } else if (e222 instanceof Error) {
                throw ((Error) e222);
            } else {
                throw new ck(th);
            }
        } catch (Throwable e2222) {
            throw new ck(e2222);
        }
    }

    private Object m852a(Object... objArr) {
        try {
            return m851a(6, objArr);
        } catch (RuntimeException e) {
            throw e;
        } catch (KeyManagementException e2) {
            throw e2;
        } catch (Throwable e3) {
            throw new ck(e3);
        }
    }

    public static boolean m853a() {
        return f889b;
    }

    private Object m854b(int i, Object... objArr) {
        try {
            return m851a(i, objArr);
        } catch (RuntimeException e) {
            throw e;
        } catch (Throwable e2) {
            throw new ck(e2);
        }
    }

    protected final SSLEngine engineCreateSSLEngine() {
        return (SSLEngine) m854b(0, new Object[0]);
    }

    protected final SSLEngine engineCreateSSLEngine(String str, int i) {
        return (SSLEngine) m854b(1, str, Integer.valueOf(i));
    }

    protected final SSLSessionContext engineGetClientSessionContext() {
        return (SSLSessionContext) m854b(2, new Object[0]);
    }

    protected final SSLSessionContext engineGetServerSessionContext() {
        return (SSLSessionContext) m854b(3, new Object[0]);
    }

    protected final SSLServerSocketFactory engineGetServerSocketFactory() {
        return (SSLServerSocketFactory) m854b(4, new Object[0]);
    }

    protected final SSLSocketFactory engineGetSocketFactory() {
        SSLSocketFactory sSLSocketFactory = (SSLSocketFactory) m854b(5, new Object[0]);
        if (sSLSocketFactory == null) {
            return sSLSocketFactory;
        }
        try {
            return new ab(sSLSocketFactory, this.f891d, this.f892e);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m752a(th);
            return sSLSocketFactory;
        }
    }

    protected final void engineInit(KeyManager[] keyManagerArr, TrustManager[] trustManagerArr, SecureRandom secureRandom) {
        m852a(keyManagerArr, trustManagerArr, secureRandom);
    }

    public final boolean equals(Object obj) {
        SSLContextSpi sSLContextSpi = this.f890c;
        return this.f890c.equals(obj);
    }

    public final int hashCode() {
        SSLContextSpi sSLContextSpi = this.f890c;
        return this.f890c.hashCode();
    }

    public final String toString() {
        SSLContextSpi sSLContextSpi = this.f890c;
        return this.f890c.toString();
    }
}
