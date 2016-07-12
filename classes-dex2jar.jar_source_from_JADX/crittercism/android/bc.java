package crittercism.android;

import android.location.Location;

public final class bc {
    private static Location f405a;

    public static Location m448a() {
        synchronized (bc.class) {
            try {
            } finally {
                Object obj = bc.class;
            }
        }
        Location location = f405a;
        return location;
    }

    public static void m449a(Location location) {
        Class cls = bc.class;
        synchronized (cls) {
            if (location != null) {
                cls = new Location(location);
                Object obj = cls;
            }
        }
        try {
            f405a = location;
        } finally {
            Class cls2 = bc.class;
        }
    }

    public static boolean m450b() {
        boolean z;
        synchronized (bc.class) {
            try {
                z = f405a != null;
            } catch (Throwable th) {
                Class cls = bc.class;
            }
        }
        return z;
    }
}
