package crittercism.android;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.security.Provider.Service;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLContextSpi;

/* renamed from: crittercism.android.y */
public final class C1104y extends Service {
    public static final String[] f884a;
    private C1078e f885b;
    private C1068d f886c;
    private Service f887d;

    static {
        f884a = new String[]{"Default", "SSL", "TLSv1.1", "TLSv1.2", "SSLv3", "TLSv1", "TLS"};
    }

    private C1104y(Service service, C1078e c1078e, C1068d c1068d) {
        super(service.getProvider(), service.getType(), service.getAlgorithm(), service.getClassName(), null, null);
        this.f885b = c1078e;
        this.f886c = c1068d;
        this.f887d = service;
    }

    private static C1104y m846a(Service service, C1078e c1078e, C1068d c1068d) {
        C1104y c1104y = new C1104y(service, c1078e, c1068d);
        try {
            Field[] fields = Service.class.getFields();
            for (int i = 0; i < fields.length; i++) {
                fields[i].setAccessible(true);
                fields[i].set(c1104y, fields[i].get(service));
            }
            return c1104y;
        } catch (Exception e) {
            return null;
        }
    }

    private static Provider m847a() {
        try {
            SSLContext instance = SSLContext.getInstance("TLS");
            return instance != null ? instance.getProvider() : null;
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }

    public static boolean m848a(C1078e c1078e, C1068d c1068d) {
        boolean z = false;
        if (C1105z.m853a()) {
            Provider a = C1104y.m847a();
            if (a != null) {
                for (String service : f884a) {
                    Service service2 = a.getService("SSLContext", service);
                    if (!(service2 == null || (service2 instanceof C1104y))) {
                        C1104y a2 = C1104y.m846a(service2, c1078e, c1068d);
                        if (a2 != null) {
                            z |= a2.m849b();
                        }
                    }
                }
            }
        }
        return z;
    }

    private boolean m849b() {
        Provider provider = getProvider();
        if (provider == null) {
            return false;
        }
        try {
            Method declaredMethod = Provider.class.getDeclaredMethod("putService", new Class[]{Service.class});
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(provider, new Object[]{this});
            provider.put("SSLContext.DummySSLAlgorithm", getClassName());
            provider.remove(getType() + "." + getAlgorithm());
            provider.remove("SSLContext.DummySSLAlgorithm");
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public final Object newInstance(Object obj) {
        Object newInstance = super.newInstance(obj);
        try {
            if (!(newInstance instanceof SSLContextSpi)) {
                return newInstance;
            }
            C1105z a = C1105z.m850a((SSLContextSpi) newInstance, this.f885b, this.f886c);
            return a != null ? a : newInstance;
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m752a(th);
            return newInstance;
        }
    }
}
