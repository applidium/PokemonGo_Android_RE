package rx.internal.util;

import java.security.AccessController;
import java.security.PrivilegedAction;

public final class PlatformDependent {
    private static final boolean IS_ANDROID;

    /* renamed from: rx.internal.util.PlatformDependent.1 */
    static final class C13511 implements PrivilegedAction<ClassLoader> {
        C13511() {
        }

        public ClassLoader run() {
            return ClassLoader.getSystemClassLoader();
        }
    }

    static {
        IS_ANDROID = isAndroid0();
    }

    static ClassLoader getSystemClassLoader() {
        return System.getSecurityManager() == null ? ClassLoader.getSystemClassLoader() : (ClassLoader) AccessController.doPrivileged(new C13511());
    }

    public static boolean isAndroid() {
        return IS_ANDROID;
    }

    private static boolean isAndroid0() {
        try {
            Class.forName("android.app.Application", false, getSystemClassLoader());
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}
