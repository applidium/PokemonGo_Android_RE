package crittercism.android;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;

/* renamed from: crittercism.android.j */
public final class C1086j {
    public static Object m794a(Field field, Object obj) {
        Object obj2 = null;
        if (!(field == null || field == null)) {
            field.setAccessible(true);
            try {
                obj2 = field.get(obj);
            } catch (ThreadDeath e) {
                throw e;
            } catch (Throwable th) {
                cl clVar = new cl("Unable to get value of field", th);
            }
        }
        return obj2;
    }

    public static Field m795a(Class cls, Class cls2) {
        Field[] declaredFields = cls.getDeclaredFields();
        Field field = null;
        for (int i = 0; i < declaredFields.length; i++) {
            if (cls2.isAssignableFrom(declaredFields[i].getType())) {
                if (field != null) {
                    throw new cl("Field is ambiguous: " + field.getName() + ", " + declaredFields[i].getName());
                }
                field = declaredFields[i];
            }
        }
        if (field == null) {
            throw new cl("Could not find field matching type: " + cls2.getName());
        }
        field.setAccessible(true);
        return field;
    }

    public static void m796a(AccessibleObject[] accessibleObjectArr) {
        for (AccessibleObject accessibleObject : accessibleObjectArr) {
            if (accessibleObject != null) {
                accessibleObject.setAccessible(true);
            }
        }
    }
}
