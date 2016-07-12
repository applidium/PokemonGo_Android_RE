package com.google.android.gms.internal;

import android.os.SystemClock;

public final class zzmp implements zzmn {
    private static zzmp zzaik;

    public static zzmn zzqt() {
        synchronized (zzmp.class) {
            try {
            } finally {
                Object obj = zzmp.class;
            }
        }
        if (zzaik == null) {
            zzaik = new zzmp();
        }
        zzmn com_google_android_gms_internal_zzmn = zzaik;
        return com_google_android_gms_internal_zzmn;
    }

    public long currentTimeMillis() {
        return System.currentTimeMillis();
    }

    public long elapsedRealtime() {
        return SystemClock.elapsedRealtime();
    }

    public long nanoTime() {
        return System.nanoTime();
    }
}
