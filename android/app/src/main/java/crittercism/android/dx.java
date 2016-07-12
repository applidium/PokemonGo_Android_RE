package crittercism.android;

import android.util.Log;
import crittercism.android.ec.C10791;

public final class dx {
    public static C1076a f765a;
    private static ec f766b;

    /* renamed from: crittercism.android.dx.a */
    public enum C1076a {
        UNINITIALIZED,
        ON,
        OFF
    }

    static {
        f765a = C1076a.UNINITIALIZED;
    }

    public static void m748a() {
    }

    public static void m749a(ec ecVar) {
        f766b = ecVar;
    }

    public static void m750a(String str) {
        Log.i("Crittercism", str);
    }

    public static void m751a(String str, Throwable th) {
        Log.e("Crittercism", str, th);
    }

    public static void m752a(Throwable th) {
        if (!(th instanceof cp)) {
            try {
                ec ecVar = f766b;
                if (f766b != null && f765a == C1076a.ON) {
                    ecVar = f766b;
                    Runnable c10791 = new C10791(ecVar, th, Thread.currentThread().getId());
                    if (!ecVar.f789c.m708a(c10791)) {
                        ecVar.f788b.execute(c10791);
                    }
                }
            } catch (ThreadDeath e) {
                throw e;
            } catch (Throwable th2) {
            }
        }
    }

    public static void m753b() {
    }

    public static void m754b(String str) {
        Log.e("Crittercism", str);
    }

    public static void m755b(String str, Throwable th) {
        Log.w("Crittercism", str, th);
    }

    public static void m756c() {
    }

    public static void m757c(String str) {
        Log.w("Crittercism", str);
    }
}
