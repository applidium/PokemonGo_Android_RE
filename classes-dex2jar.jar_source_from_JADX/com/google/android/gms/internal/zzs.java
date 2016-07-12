package com.google.android.gms.internal;

import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class zzs {
    public static boolean DEBUG;
    public static String TAG;

    static class zza {
        public static final boolean zzak;
        private final List<zza> zzal;
        private boolean zzam;

        private static class zza {
            public final String name;
            public final long time;
            public final long zzan;

            public zza(String str, long j, long j2) {
                this.name = str;
                this.zzan = j;
                this.time = j2;
            }
        }

        static {
            zzak = zzs.DEBUG;
        }

        zza() {
            this.zzal = new ArrayList();
            this.zzam = false;
        }

        private long zzx() {
            if (this.zzal.size() == 0) {
                return 0;
            }
            return ((zza) this.zzal.get(this.zzal.size() - 1)).time - ((zza) this.zzal.get(0)).time;
        }

        protected void finalize() throws Throwable {
            if (!this.zzam) {
                zzd("Request on the loose");
                zzs.zzc("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
            }
        }

        public void zza(String str, long j) {
            synchronized (this) {
                if (this.zzam) {
                    throw new IllegalStateException("Marker added to finished log");
                }
                this.zzal.add(new zza(str, j, SystemClock.elapsedRealtime()));
            }
        }

        public void zzd(String str) {
            synchronized (this) {
                this.zzam = true;
                if (zzx() > 0) {
                    long j = ((zza) this.zzal.get(0)).time;
                    zzs.zzb("(%-4d ms) %s", Long.valueOf(r2), str);
                    long j2 = j;
                    for (zza com_google_android_gms_internal_zzs_zza_zza : this.zzal) {
                        zzs.zzb("(+%-4d) [%2d] %s", Long.valueOf(com_google_android_gms_internal_zzs_zza_zza.time - j2), Long.valueOf(com_google_android_gms_internal_zzs_zza_zza.zzan), com_google_android_gms_internal_zzs_zza_zza.name);
                        j2 = com_google_android_gms_internal_zzs_zza_zza.time;
                    }
                }
            }
        }
    }

    static {
        TAG = "Volley";
        DEBUG = Log.isLoggable(TAG, 2);
    }

    public static void zza(String str, Object... objArr) {
        if (DEBUG) {
            Log.v(TAG, zzd(str, objArr));
        }
    }

    public static void zza(Throwable th, String str, Object... objArr) {
        Log.e(TAG, zzd(str, objArr), th);
    }

    public static void zzb(String str, Object... objArr) {
        Log.d(TAG, zzd(str, objArr));
    }

    public static void zzc(String str, Object... objArr) {
        Log.e(TAG, zzd(str, objArr));
    }

    private static String zzd(String str, Object... objArr) {
        String str2;
        if (objArr != null) {
            str = String.format(Locale.US, str, objArr);
        }
        StackTraceElement[] stackTrace = new Throwable().fillInStackTrace().getStackTrace();
        for (int i = 2; i < stackTrace.length; i++) {
            if (!stackTrace[i].getClass().equals(zzs.class)) {
                String className = stackTrace[i].getClassName();
                className = className.substring(className.lastIndexOf(46) + 1);
                str2 = className.substring(className.lastIndexOf(36) + 1) + "." + stackTrace[i].getMethodName();
                break;
            }
        }
        str2 = "<unknown>";
        return String.format(Locale.US, "[%d] %s: %s", new Object[]{Long.valueOf(Thread.currentThread().getId()), str2, str});
    }
}
