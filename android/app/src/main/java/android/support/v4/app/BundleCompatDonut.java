package android.support.v4.app;

import java.lang.reflect.Method;

class BundleCompatDonut {
    private static final String TAG = "BundleCompatDonut";
    private static Method sGetIBinderMethod;
    private static boolean sGetIBinderMethodFetched;
    private static Method sPutIBinderMethod;
    private static boolean sPutIBinderMethodFetched;

    BundleCompatDonut() {
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static android.os.IBinder getBinder(android.os.Bundle r7, java.lang.String r8) {
        /*
        r1 = 0;
        r6 = 1;
        r0 = sGetIBinderMethodFetched;
        if (r0 != 0) goto L_0x0020;
    L_0x0006:
        r0 = android.os.Bundle.class;
        r2 = "getIBinder";
        r3 = 1;
        r3 = new java.lang.Class[r3];	 Catch:{ NoSuchMethodException -> 0x0033 }
        r4 = 0;
        r5 = java.lang.String.class;
        r3[r4] = r5;	 Catch:{ NoSuchMethodException -> 0x0033 }
        r0 = r0.getMethod(r2, r3);	 Catch:{ NoSuchMethodException -> 0x0033 }
        sGetIBinderMethod = r0;	 Catch:{ NoSuchMethodException -> 0x0033 }
        r0 = sGetIBinderMethod;	 Catch:{ NoSuchMethodException -> 0x0033 }
        r2 = 1;
        r0.setAccessible(r2);	 Catch:{ NoSuchMethodException -> 0x0033 }
    L_0x001e:
        sGetIBinderMethodFetched = r6;
    L_0x0020:
        r0 = sGetIBinderMethod;
        if (r0 == 0) goto L_0x0046;
    L_0x0024:
        r0 = sGetIBinderMethod;	 Catch:{ InvocationTargetException -> 0x003c, IllegalAccessException -> 0x004a, IllegalArgumentException -> 0x0048 }
        r2 = 1;
        r2 = new java.lang.Object[r2];	 Catch:{ InvocationTargetException -> 0x003c, IllegalAccessException -> 0x004a, IllegalArgumentException -> 0x0048 }
        r3 = 0;
        r2[r3] = r8;	 Catch:{ InvocationTargetException -> 0x003c, IllegalAccessException -> 0x004a, IllegalArgumentException -> 0x0048 }
        r0 = r0.invoke(r7, r2);	 Catch:{ InvocationTargetException -> 0x003c, IllegalAccessException -> 0x004a, IllegalArgumentException -> 0x0048 }
        r0 = (android.os.IBinder) r0;	 Catch:{ InvocationTargetException -> 0x003c, IllegalAccessException -> 0x004a, IllegalArgumentException -> 0x0048 }
    L_0x0032:
        return r0;
    L_0x0033:
        r0 = move-exception;
        r2 = "BundleCompatDonut";
        r3 = "Failed to retrieve getIBinder method";
        android.util.Log.i(r2, r3, r0);
        goto L_0x001e;
    L_0x003c:
        r0 = move-exception;
    L_0x003d:
        r2 = "BundleCompatDonut";
        r3 = "Failed to invoke getIBinder via reflection";
        android.util.Log.i(r2, r3, r0);
        sGetIBinderMethod = r1;
    L_0x0046:
        r0 = r1;
        goto L_0x0032;
    L_0x0048:
        r0 = move-exception;
        goto L_0x003d;
    L_0x004a:
        r0 = move-exception;
        goto L_0x003d;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.BundleCompatDonut.getBinder(android.os.Bundle, java.lang.String):android.os.IBinder");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void putBinder(android.os.Bundle r6, java.lang.String r7, android.os.IBinder r8) {
        /*
        r5 = 1;
        r0 = sPutIBinderMethodFetched;
        if (r0 != 0) goto L_0x0024;
    L_0x0005:
        r0 = android.os.Bundle.class;
        r1 = "putIBinder";
        r2 = 2;
        r2 = new java.lang.Class[r2];	 Catch:{ NoSuchMethodException -> 0x0037 }
        r3 = 0;
        r4 = java.lang.String.class;
        r2[r3] = r4;	 Catch:{ NoSuchMethodException -> 0x0037 }
        r3 = 1;
        r4 = android.os.IBinder.class;
        r2[r3] = r4;	 Catch:{ NoSuchMethodException -> 0x0037 }
        r0 = r0.getMethod(r1, r2);	 Catch:{ NoSuchMethodException -> 0x0037 }
        sPutIBinderMethod = r0;	 Catch:{ NoSuchMethodException -> 0x0037 }
        r0 = sPutIBinderMethod;	 Catch:{ NoSuchMethodException -> 0x0037 }
        r1 = 1;
        r0.setAccessible(r1);	 Catch:{ NoSuchMethodException -> 0x0037 }
    L_0x0022:
        sPutIBinderMethodFetched = r5;
    L_0x0024:
        r0 = sPutIBinderMethod;
        if (r0 == 0) goto L_0x0036;
    L_0x0028:
        r0 = sPutIBinderMethod;	 Catch:{ InvocationTargetException -> 0x0040, IllegalAccessException -> 0x004e, IllegalArgumentException -> 0x004c }
        r1 = 2;
        r1 = new java.lang.Object[r1];	 Catch:{ InvocationTargetException -> 0x0040, IllegalAccessException -> 0x004e, IllegalArgumentException -> 0x004c }
        r2 = 0;
        r1[r2] = r7;	 Catch:{ InvocationTargetException -> 0x0040, IllegalAccessException -> 0x004e, IllegalArgumentException -> 0x004c }
        r2 = 1;
        r1[r2] = r8;	 Catch:{ InvocationTargetException -> 0x0040, IllegalAccessException -> 0x004e, IllegalArgumentException -> 0x004c }
        r0.invoke(r6, r1);	 Catch:{ InvocationTargetException -> 0x0040, IllegalAccessException -> 0x004e, IllegalArgumentException -> 0x004c }
    L_0x0036:
        return;
    L_0x0037:
        r0 = move-exception;
        r1 = "BundleCompatDonut";
        r2 = "Failed to retrieve putIBinder method";
        android.util.Log.i(r1, r2, r0);
        goto L_0x0022;
    L_0x0040:
        r0 = move-exception;
    L_0x0041:
        r1 = "BundleCompatDonut";
        r2 = "Failed to invoke putIBinder via reflection";
        android.util.Log.i(r1, r2, r0);
        r0 = 0;
        sPutIBinderMethod = r0;
        goto L_0x0036;
    L_0x004c:
        r0 = move-exception;
        goto L_0x0041;
    L_0x004e:
        r0 = move-exception;
        goto L_0x0041;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.BundleCompatDonut.putBinder(android.os.Bundle, java.lang.String, android.os.IBinder):void");
    }
}
