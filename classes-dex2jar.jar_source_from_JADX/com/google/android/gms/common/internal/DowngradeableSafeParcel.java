package com.google.android.gms.common.internal;

import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public abstract class DowngradeableSafeParcel implements SafeParcelable {
    private static final Object zzafm;
    private static ClassLoader zzafn;
    private static Integer zzafo;
    private boolean zzafp;

    static {
        zzafm = new Object();
        zzafn = null;
        zzafo = null;
    }

    public DowngradeableSafeParcel() {
        this.zzafp = false;
    }

    private static boolean zza(Class<?> cls) {
        boolean z = false;
        try {
            z = SafeParcelable.NULL.equals(cls.getField("NULL").get(null));
        } catch (NoSuchFieldException e) {
        } catch (IllegalAccessException e2) {
        }
        return z;
    }

    protected static boolean zzck(String str) {
        ClassLoader zzoS = zzoS();
        if (zzoS == null) {
            return true;
        }
        try {
            return zza(zzoS.loadClass(str));
        } catch (Exception e) {
            return false;
        }
    }

    protected static ClassLoader zzoS() {
        ClassLoader classLoader;
        synchronized (zzafm) {
            classLoader = zzafn;
        }
        return classLoader;
    }

    protected static Integer zzoT() {
        Integer num;
        synchronized (zzafm) {
            num = zzafo;
        }
        return num;
    }

    protected boolean zzoU() {
        return this.zzafp;
    }
}
