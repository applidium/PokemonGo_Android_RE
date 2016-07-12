package crittercism.android;

import java.lang.reflect.Constructor;

/* renamed from: crittercism.android.l */
public final class C1089l {
    public static Constructor m799a(String str, String[] strArr) {
        Constructor[] declaredConstructors = Class.forName(str).getDeclaredConstructors();
        for (int i = 0; i < declaredConstructors.length; i++) {
            Object obj;
            Class[] parameterTypes = declaredConstructors[i].getParameterTypes();
            if (parameterTypes.length != strArr.length) {
                obj = null;
            } else {
                for (int i2 = 0; i2 < parameterTypes.length; i2++) {
                    if (!parameterTypes[i2].getName().equals(strArr[i2])) {
                        obj = null;
                        break;
                    }
                }
                obj = 1;
            }
            if (obj != null) {
                return declaredConstructors[i];
            }
        }
        return null;
    }
}
