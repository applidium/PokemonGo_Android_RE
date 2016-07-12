package com.unity3d.player;

import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Iterator;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;
import spacemadness.com.lunarconsole.BuildConfig;

final class ReflectionHelper {
    protected static boolean LOG;
    protected static final boolean LOGV = false;
    private static C0815a[] f44a;

    /* renamed from: com.unity3d.player.ReflectionHelper.1 */
    static final class C08141 implements InvocationHandler {
        final /* synthetic */ int f37a;
        final /* synthetic */ Class[] f38b;

        C08141(int i, Class[] clsArr) {
            this.f37a = i;
            this.f38b = clsArr;
        }

        protected final void finalize() {
            try {
                ReflectionHelper.nativeProxyFinalize(this.f37a);
            } finally {
                super.finalize();
            }
        }

        public final Object invoke(Object obj, Method method, Object[] objArr) {
            return ReflectionHelper.nativeProxyInvoke(this.f37a, method.getName(), objArr);
        }
    }

    /* renamed from: com.unity3d.player.ReflectionHelper.a */
    private static final class C0815a {
        public volatile Member f39a;
        private final Class f40b;
        private final String f41c;
        private final String f42d;
        private final int f43e;

        C0815a(Class cls, String str, String str2) {
            this.f40b = cls;
            this.f41c = str;
            this.f42d = str2;
            this.f43e = ((((this.f40b.hashCode() + 527) * 31) + this.f41c.hashCode()) * 31) + this.f42d.hashCode();
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C0815a)) {
                return false;
            }
            C0815a c0815a = (C0815a) obj;
            return this.f43e == c0815a.f43e && this.f42d.equals(c0815a.f42d) && this.f41c.equals(c0815a.f41c) && this.f40b.equals(c0815a.f40b);
        }

        public final int hashCode() {
            return this.f43e;
        }
    }

    static {
        LOG = false;
        f44a = new C0815a[AccessibilityNodeInfoCompat.ACTION_SCROLL_FORWARD];
    }

    ReflectionHelper() {
    }

    private static float m38a(Class cls, Class cls2) {
        if (cls.equals(cls2)) {
            return 1.0f;
        }
        if (!(cls.isPrimitive() || cls2.isPrimitive())) {
            try {
                if (cls.asSubclass(cls2) != null) {
                    return 0.5f;
                }
            } catch (ClassCastException e) {
            }
            try {
                if (cls2.asSubclass(cls) != null) {
                    return 0.1f;
                }
            } catch (ClassCastException e2) {
            }
        }
        return 0.0f;
    }

    private static float m39a(Class cls, Class[] clsArr, Class[] clsArr2) {
        int i = 0;
        if (clsArr2.length == 0) {
            return 0.1f;
        }
        if ((clsArr == null ? 0 : clsArr.length) + 1 != clsArr2.length) {
            return 0.0f;
        }
        float f = 1.0f;
        if (clsArr != null) {
            int i2 = 0;
            while (i < clsArr.length) {
                float a = m38a(clsArr[i], clsArr2[i2]) * f;
                i++;
                i2++;
                f = a;
            }
        }
        return f * m38a(cls, clsArr2[clsArr2.length - 1]);
    }

    private static Class m40a(String str, int[] iArr) {
        while (iArr[0] < str.length()) {
            int i = iArr[0];
            iArr[0] = i + 1;
            char charAt = str.charAt(i);
            if (charAt != '(' && charAt != ')') {
                if (charAt == 'L') {
                    i = str.indexOf(59, iArr[0]);
                    if (i != -1) {
                        String substring = str.substring(iArr[0], i);
                        iArr[0] = i + 1;
                        try {
                            return Class.forName(substring.replace(IOUtils.DIR_SEPARATOR_UNIX, FilenameUtils.EXTENSION_SEPARATOR));
                        } catch (ClassNotFoundException e) {
                        }
                    }
                } else if (charAt == 'Z') {
                    return Boolean.TYPE;
                } else {
                    if (charAt == 'I') {
                        return Integer.TYPE;
                    }
                    if (charAt == 'F') {
                        return Float.TYPE;
                    }
                    if (charAt == 'V') {
                        return Void.TYPE;
                    }
                    if (charAt == 'B') {
                        return Byte.TYPE;
                    }
                    if (charAt == 'S') {
                        return Short.TYPE;
                    }
                    if (charAt == 'J') {
                        return Long.TYPE;
                    }
                    if (charAt == 'D') {
                        return Double.TYPE;
                    }
                    if (charAt == '[') {
                        return Array.newInstance(m40a(str, iArr), 0).getClass();
                    }
                    C0853m.Log(5, "! parseType; " + charAt + " is not known!");
                }
                return null;
            }
        }
        return null;
    }

    private static void m43a(C0815a c0815a, Member member) {
        c0815a.f39a = member;
        f44a[c0815a.hashCode() & (f44a.length - 1)] = c0815a;
    }

    private static boolean m44a(C0815a c0815a) {
        C0815a c0815a2 = f44a[c0815a.hashCode() & (f44a.length - 1)];
        if (!c0815a.equals(c0815a2)) {
            return false;
        }
        c0815a.f39a = c0815a2.f39a;
        return true;
    }

    private static Class[] m45a(String str) {
        int[] iArr = new int[]{0};
        ArrayList arrayList = new ArrayList();
        while (iArr[0] < str.length()) {
            Class a = m40a(str, iArr);
            if (a == null) {
                break;
            }
            arrayList.add(a);
        }
        Class[] clsArr = new Class[arrayList.size()];
        Iterator it = arrayList.iterator();
        int i = 0;
        while (it.hasNext()) {
            clsArr[i] = (Class) it.next();
            i++;
        }
        return clsArr;
    }

    protected static Constructor getConstructorID(Class cls, String str) {
        Constructor constructor;
        Constructor constructor2 = null;
        C0815a c0815a = new C0815a(cls, BuildConfig.FLAVOR, str);
        if (m44a(c0815a)) {
            constructor = (Constructor) c0815a.f39a;
        } else {
            Class[] a = m45a(str);
            float f = 0.0f;
            Constructor[] constructors = cls.getConstructors();
            int length = constructors.length;
            int i = 0;
            while (i < length) {
                float f2;
                constructor = constructors[i];
                float a2 = m39a(Void.TYPE, constructor.getParameterTypes(), a);
                if (a2 > f) {
                    if (a2 == 1.0f) {
                        break;
                    }
                    f2 = a2;
                } else {
                    constructor = constructor2;
                    f2 = f;
                }
                i++;
                f = f2;
                constructor2 = constructor;
            }
            constructor = constructor2;
            m43a(c0815a, r0);
        }
        if (constructor != null) {
            return constructor;
        }
        throw new NoSuchMethodError("<init>" + str + " in class " + cls.getName());
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected static java.lang.reflect.Field getFieldID(java.lang.Class r10, java.lang.String r11, java.lang.String r12, boolean r13) {
        /*
        r5 = new com.unity3d.player.ReflectionHelper$a;
        r5.<init>(r10, r11, r12);
        r0 = m44a(r5);
        if (r0 == 0) goto L_0x0034;
    L_0x000b:
        r0 = r5.f39a;
        r0 = (java.lang.reflect.Field) r0;
    L_0x000f:
        if (r0 != 0) goto L_0x00ad;
    L_0x0011:
        if (r13 == 0) goto L_0x00a4;
    L_0x0013:
        r0 = "non-static";
    L_0x0015:
        r1 = new java.lang.NoSuchFieldError;
        r2 = "no %s field with name='%s' signature='%s' in class L%s;";
        r3 = 4;
        r3 = new java.lang.Object[r3];
        r4 = 0;
        r3[r4] = r0;
        r0 = 1;
        r3[r0] = r11;
        r0 = 2;
        r3[r0] = r12;
        r0 = 3;
        r4 = r10.getName();
        r3[r0] = r4;
        r0 = java.lang.String.format(r2, r3);
        r1.<init>(r0);
        throw r1;
    L_0x0034:
        r6 = m45a(r12);
        r0 = 0;
        r1 = 0;
    L_0x003a:
        if (r10 == 0) goto L_0x009f;
    L_0x003c:
        r7 = r10.getDeclaredFields();
        r8 = r7.length;
        r2 = 0;
        r4 = r2;
        r3 = r0;
    L_0x0044:
        if (r4 >= r8) goto L_0x00ab;
    L_0x0046:
        r2 = r7[r4];
        r0 = r2.getModifiers();
        r0 = java.lang.reflect.Modifier.isStatic(r0);
        if (r13 != r0) goto L_0x00a8;
    L_0x0052:
        r0 = r2.getName();
        r0 = r0.compareTo(r11);
        if (r0 != 0) goto L_0x00a8;
    L_0x005c:
        r0 = r2.getType();
        r9 = 0;
        r0 = m39a(r0, r9, r6);
        r9 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1));
        if (r9 <= 0) goto L_0x00a8;
    L_0x0069:
        r1 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r1 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1));
        if (r1 == 0) goto L_0x0076;
    L_0x006f:
        r1 = r2;
    L_0x0070:
        r2 = r4 + 1;
        r4 = r2;
        r3 = r1;
        r1 = r0;
        goto L_0x0044;
    L_0x0076:
        r1 = r0;
        r0 = r2;
    L_0x0078:
        r2 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r2 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1));
        if (r2 == 0) goto L_0x009f;
    L_0x007e:
        r2 = r10.isPrimitive();
        if (r2 != 0) goto L_0x009f;
    L_0x0084:
        r2 = r10.isInterface();
        if (r2 != 0) goto L_0x009f;
    L_0x008a:
        r2 = java.lang.Object.class;
        r2 = r10.equals(r2);
        if (r2 != 0) goto L_0x009f;
    L_0x0092:
        r2 = java.lang.Void.TYPE;
        r2 = r10.equals(r2);
        if (r2 != 0) goto L_0x009f;
    L_0x009a:
        r10 = r10.getSuperclass();
        goto L_0x003a;
    L_0x009f:
        m43a(r5, r0);
        goto L_0x000f;
    L_0x00a4:
        r0 = "static";
        goto L_0x0015;
    L_0x00a8:
        r0 = r1;
        r1 = r3;
        goto L_0x0070;
    L_0x00ab:
        r0 = r3;
        goto L_0x0078;
    L_0x00ad:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.player.ReflectionHelper.getFieldID(java.lang.Class, java.lang.String, java.lang.String, boolean):java.lang.reflect.Field");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected static java.lang.reflect.Method getMethodID(java.lang.Class r12, java.lang.String r13, java.lang.String r14, boolean r15) {
        /*
        r5 = 0;
        r11 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r6 = new com.unity3d.player.ReflectionHelper$a;
        r6.<init>(r12, r13, r14);
        r0 = m44a(r6);
        if (r0 == 0) goto L_0x0036;
    L_0x000e:
        r0 = r6.f39a;
        r0 = (java.lang.reflect.Method) r0;
    L_0x0012:
        if (r0 != 0) goto L_0x00ad;
    L_0x0014:
        if (r15 == 0) goto L_0x00a4;
    L_0x0016:
        r0 = "non-static";
    L_0x0018:
        r1 = new java.lang.NoSuchMethodError;
        r2 = "no %s method with name='%s' signature='%s' in class L%s;";
        r3 = 4;
        r3 = new java.lang.Object[r3];
        r3[r5] = r0;
        r0 = 1;
        r3[r0] = r13;
        r0 = 2;
        r3[r0] = r14;
        r0 = 3;
        r4 = r12.getName();
        r3[r0] = r4;
        r0 = java.lang.String.format(r2, r3);
        r1.<init>(r0);
        throw r1;
    L_0x0036:
        r7 = m45a(r14);
        r0 = 0;
        r1 = 0;
    L_0x003c:
        if (r12 == 0) goto L_0x009f;
    L_0x003e:
        r8 = r12.getDeclaredMethods();
        r9 = r8.length;
        r4 = r5;
        r3 = r0;
    L_0x0045:
        if (r4 >= r9) goto L_0x00ab;
    L_0x0047:
        r2 = r8[r4];
        r0 = r2.getModifiers();
        r0 = java.lang.reflect.Modifier.isStatic(r0);
        if (r15 != r0) goto L_0x00a8;
    L_0x0053:
        r0 = r2.getName();
        r0 = r0.compareTo(r13);
        if (r0 != 0) goto L_0x00a8;
    L_0x005d:
        r0 = r2.getReturnType();
        r10 = r2.getParameterTypes();
        r0 = m39a(r0, r10, r7);
        r10 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1));
        if (r10 <= 0) goto L_0x00a8;
    L_0x006d:
        r1 = (r0 > r11 ? 1 : (r0 == r11 ? 0 : -1));
        if (r1 == 0) goto L_0x0078;
    L_0x0071:
        r1 = r2;
    L_0x0072:
        r2 = r4 + 1;
        r4 = r2;
        r3 = r1;
        r1 = r0;
        goto L_0x0045;
    L_0x0078:
        r1 = r0;
        r0 = r2;
    L_0x007a:
        r2 = (r1 > r11 ? 1 : (r1 == r11 ? 0 : -1));
        if (r2 == 0) goto L_0x009f;
    L_0x007e:
        r2 = r12.isPrimitive();
        if (r2 != 0) goto L_0x009f;
    L_0x0084:
        r2 = r12.isInterface();
        if (r2 != 0) goto L_0x009f;
    L_0x008a:
        r2 = java.lang.Object.class;
        r2 = r12.equals(r2);
        if (r2 != 0) goto L_0x009f;
    L_0x0092:
        r2 = java.lang.Void.TYPE;
        r2 = r12.equals(r2);
        if (r2 != 0) goto L_0x009f;
    L_0x009a:
        r12 = r12.getSuperclass();
        goto L_0x003c;
    L_0x009f:
        m43a(r6, r0);
        goto L_0x0012;
    L_0x00a4:
        r0 = "static";
        goto L_0x0018;
    L_0x00a8:
        r0 = r1;
        r1 = r3;
        goto L_0x0072;
    L_0x00ab:
        r0 = r3;
        goto L_0x007a;
    L_0x00ad:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.player.ReflectionHelper.getMethodID(java.lang.Class, java.lang.String, java.lang.String, boolean):java.lang.reflect.Method");
    }

    private static native void nativeProxyFinalize(int i);

    private static native Object nativeProxyInvoke(int i, String str, Object[] objArr);

    protected static Object newProxyInstance(int i, Class cls) {
        return newProxyInstance(i, new Class[]{cls});
    }

    protected static Object newProxyInstance(int i, Class[] clsArr) {
        return Proxy.newProxyInstance(ReflectionHelper.class.getClassLoader(), clsArr, new C08141(i, clsArr));
    }
}
