package crittercism.android;

import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.net.URL;
import java.net.URLStreamHandler;
import java.net.URLStreamHandlerFactory;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.LinkedList;

/* renamed from: crittercism.android.v */
public final class C1101v implements URLStreamHandlerFactory {
    private static final Object f870a;
    private static C1101v f871b;
    private LinkedList f872c;
    private boolean f873d;
    private boolean f874e;

    /* renamed from: crittercism.android.v.a */
    public enum C1100a {
        HTTP_ONLY,
        HTTPS_ONLY,
        ALL
    }

    static {
        f870a = new Object();
    }

    public C1101v(C1100a c1100a, C1078e c1078e, C1068d c1068d) {
        this.f872c = new LinkedList();
        this.f873d = false;
        this.f874e = false;
        if (c1100a == C1100a.ALL || c1100a == C1100a.HTTP_ONLY) {
            this.f872c.add(new C1092o(c1078e, c1068d));
        }
        if (c1100a == C1100a.ALL || c1100a == C1100a.HTTPS_ONLY) {
            this.f872c.add(new C1095q(c1078e, c1068d));
        }
    }

    public static C1101v m816a() {
        return f871b;
    }

    private boolean m817d() {
        boolean z = false;
        synchronized (this) {
            synchronized (f870a) {
                if (f871b != this) {
                    boolean z2 = this.f873d;
                } else {
                    if (this.f873d && C1101v.m818e()) {
                        this.f873d = false;
                        f871b = null;
                    }
                    z = this.f873d;
                }
            }
        }
        return z;
    }

    private static boolean m818e() {
        Field[] declaredFields = URL.class.getDeclaredFields();
        int length = declaredFields.length;
        int i = 0;
        while (i < length) {
            Field field = declaredFields[i];
            if (URLStreamHandlerFactory.class.isAssignableFrom(field.getType())) {
                try {
                    ea eaVar = ea.STREAM_HANDLER_FACTORY_ANNUL_REFLECTION_FAULT;
                    field.setAccessible(true);
                    field.set(null, null);
                    field.setAccessible(false);
                    URL.setURLStreamHandlerFactory(null);
                    return true;
                } catch (IllegalAccessException e) {
                    dx.m756c();
                } catch (SecurityException e2) {
                    dx.m756c();
                } catch (Throwable th) {
                    dx.m756c();
                }
            } else {
                i++;
            }
        }
        return false;
    }

    private static boolean m819f() {
        for (Field field : URL.class.getDeclaredFields()) {
            if (Hashtable.class.isAssignableFrom(field.getType())) {
                ParameterizedType parameterizedType = (ParameterizedType) field.getGenericType();
                Class cls = (Class) parameterizedType.getActualTypeArguments()[0];
                Class cls2 = (Class) parameterizedType.getActualTypeArguments()[1];
                if (String.class.isAssignableFrom(cls) && URLStreamHandler.class.isAssignableFrom(cls2)) {
                    try {
                        ea eaVar = ea.STREAM_HANDLER_FACTORY_CLEAR_STREAM_HANDLERS_FAULT;
                        field.setAccessible(true);
                        Hashtable hashtable = (Hashtable) field.get(null);
                        if (hashtable != null) {
                            hashtable.clear();
                        }
                        field.setAccessible(false);
                        return true;
                    } catch (IllegalArgumentException e) {
                        dx.m756c();
                    } catch (SecurityException e2) {
                        dx.m756c();
                    } catch (IllegalAccessException e3) {
                        dx.m756c();
                    }
                }
            }
        }
        return false;
    }

    public final boolean m820b() {
        boolean z = true;
        synchronized (f870a) {
            if (f871b != null) {
                if (f871b != this) {
                    z = false;
                }
                return z;
            }
            if (!(this.f873d || this.f874e)) {
                try {
                    URL.setURLStreamHandlerFactory(this);
                    this.f873d = true;
                    f871b = this;
                } catch (Throwable th) {
                }
            }
            return this.f873d;
        }
    }

    public final boolean m821c() {
        boolean z = false;
        synchronized (this) {
            m817d();
            boolean f;
            if (this.f873d) {
                this.f874e = true;
                f = C1101v.m819f();
            } else {
                f = false;
            }
            if (!this.f873d || r2) {
                z = true;
            }
        }
        return z;
    }

    public final URLStreamHandler createURLStreamHandler(String str) {
        try {
            if (!this.f874e) {
                Iterator it = this.f872c.iterator();
                while (it.hasNext()) {
                    C1090m c1090m = (C1090m) it.next();
                    if (c1090m.m802a().equals(str)) {
                        return c1090m;
                    }
                }
            }
            return null;
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            this.f874e = true;
            dx.m752a(th);
            return null;
        }
    }
}
