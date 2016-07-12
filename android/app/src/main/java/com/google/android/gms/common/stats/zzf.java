package com.google.android.gms.common.stats;

public abstract class zzf {
    public static int zzahY;
    public static int zzahZ;

    static {
        zzahY = 0;
        zzahZ = 1;
    }

    public abstract int getEventType();

    public abstract long getTimeMillis();

    public String toString() {
        return getTimeMillis() + "\t" + getEventType() + "\t" + zzqd() + zzqg();
    }

    public abstract long zzqd();

    public abstract String zzqg();
}
