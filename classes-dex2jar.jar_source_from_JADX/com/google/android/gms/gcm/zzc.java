package com.google.android.gms.gcm;

import android.os.Bundle;

public class zzc {
    public static final zzc zzaCI;
    public static final zzc zzaCJ;
    private final int zzaCK;
    private final int zzaCL;
    private final int zzaCM;

    static {
        zzaCI = new zzc(0, 30, 3600);
        zzaCJ = new zzc(1, 30, 3600);
    }

    private zzc(int i, int i2, int i3) {
        this.zzaCK = i;
        this.zzaCL = i2;
        this.zzaCM = i3;
    }

    public int zzvZ() {
        return this.zzaCK;
    }

    public int zzwa() {
        return this.zzaCL;
    }

    public int zzwb() {
        return this.zzaCM;
    }

    public Bundle zzz(Bundle bundle) {
        bundle.putInt("retry_policy", this.zzaCK);
        bundle.putInt("initial_backoff_seconds", this.zzaCL);
        bundle.putInt("maximum_backoff_seconds", this.zzaCM);
        return bundle;
    }
}
