package spacemadness.com.lunarconsole.utils;

public class ObjectUtils {
    public static boolean areEqual(Object obj, Object obj2) {
        return (obj != null && obj.equals(obj2)) || (obj == null && obj2 == null);
    }

    public static <T> T as(Object obj, Class<? extends T> cls) {
        return cls.isInstance(obj) ? obj : null;
    }

    public static <T> T notNullOrDefault(T t, T t2) {
        if (t2 != null) {
            return t != null ? t : t2;
        } else {
            throw new NullPointerException("Default object is null");
        }
    }

    public static String toString(Object obj) {
        return obj != null ? obj.toString() : null;
    }
}
