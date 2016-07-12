package crittercism.android;

import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLStreamHandler;

/* renamed from: crittercism.android.m */
public abstract class C1090m extends URLStreamHandler {
    public static final String[] f838a;
    public static final String[] f839b;
    C1078e f840c;
    C1068d f841d;
    boolean f842e;
    private Constructor f843f;
    private Constructor f844g;

    static {
        f838a = new String[]{"java.net.URL", "int", "java.net.Proxy"};
        f839b = new String[]{"java.net.URL", "int"};
    }

    public C1090m(C1078e c1078e, C1068d c1068d, String[] strArr) {
        this(c1078e, c1068d, strArr, f838a, f839b);
    }

    private C1090m(C1078e c1078e, C1068d c1068d, String[] strArr, String[] strArr2, String[] strArr3) {
        this.f843f = null;
        this.f844g = null;
        this.f840c = c1078e;
        this.f841d = c1068d;
        this.f842e = true;
        int i = 0;
        while (i < strArr.length) {
            try {
                this.f843f = C1089l.m799a(strArr[i], strArr3);
                this.f844g = C1089l.m799a(strArr[i], strArr2);
                this.f843f.setAccessible(true);
                this.f844g.setAccessible(true);
                break;
            } catch (ClassNotFoundException e) {
                this.f843f = null;
                this.f843f = null;
                i++;
            }
        }
        if (this.f843f == null || this.f844g == null) {
            throw new ClassNotFoundException("Couldn't find suitable connection implementations");
        } else if (!m801b()) {
            throw new ClassNotFoundException("Unable to open test connections");
        }
    }

    private URLConnection m800a(URL url, Proxy proxy) {
        IOException iOException;
        URLConnection uRLConnection = null;
        String str = "Unable to setup network statistics on a " + m802a() + " connection due to ";
        try {
            ea eaVar = ea.GENERIC_HANDLER_DO_OPEN_CONNECTION_FAULT;
            if (proxy == null) {
                iOException = null;
                uRLConnection = (URLConnection) this.f843f.newInstance(new Object[]{url, Integer.valueOf(getDefaultPort())});
            } else {
                iOException = null;
                uRLConnection = (URLConnection) this.f844g.newInstance(new Object[]{url, Integer.valueOf(getDefaultPort()), proxy});
            }
        } catch (IllegalArgumentException e) {
            new StringBuilder().append(str).append("bad arguments");
            dx.m753b();
            iOException = new IOException(e.getMessage());
        } catch (InstantiationException e2) {
            new StringBuilder().append(str).append("an instantiation problem");
            dx.m753b();
            iOException = new IOException(e2.getMessage());
        } catch (IllegalAccessException e3) {
            new StringBuilder().append(str).append("security restrictions");
            dx.m753b();
            iOException = new IOException(e3.getMessage());
        } catch (InvocationTargetException e4) {
            new StringBuilder().append(str).append("an invocation problem");
            dx.m753b();
            iOException = new IOException(e4.getMessage());
        }
        if (iOException != null) {
            if (this.f842e) {
                this.f842e = false;
                C1101v a = C1101v.m816a();
                boolean c = a != null ? a.m821c() : false;
                dx.m754b("Stopping network statistics monitoring");
                if (c) {
                    return new URL(url.toExternalForm()).openConnection();
                }
            }
            throw iOException;
        }
        return uRLConnection;
    }

    private boolean m801b() {
        this.f842e = false;
        try {
            openConnection(new URL("http://www.google.com"));
            return true;
        } catch (IOException e) {
            return false;
        } finally {
            this.f842e = true;
        }
    }

    protected abstract String m802a();

    protected abstract int getDefaultPort();

    protected URLConnection openConnection(URL url) {
        return m800a(url, null);
    }

    protected URLConnection openConnection(URL url, Proxy proxy) {
        if (url != null && proxy != null) {
            return m800a(url, proxy);
        }
        throw new IllegalArgumentException("url == null || proxy == null");
    }
}
