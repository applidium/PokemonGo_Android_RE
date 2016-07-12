package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.ads.internal.zzp;

@zzgr
public class zzhx {
    private final String zzHG;
    private int zzIi;
    private int zzIj;
    private final zzhu zzpV;
    private final Object zzpd;

    zzhx(zzhu com_google_android_gms_internal_zzhu, String str) {
        this.zzpd = new Object();
        this.zzpV = com_google_android_gms_internal_zzhu;
        this.zzHG = str;
    }

    public zzhx(String str) {
        this(zzp.zzby(), str);
    }

    public Bundle toBundle() {
        Bundle bundle;
        synchronized (this.zzpd) {
            bundle = new Bundle();
            bundle.putInt("pmnli", this.zzIi);
            bundle.putInt("pmnll", this.zzIj);
        }
        return bundle;
    }

    public void zzf(int i, int i2) {
        synchronized (this.zzpd) {
            this.zzIi = i;
            this.zzIj = i2;
            this.zzpV.zza(this.zzHG, this);
        }
    }
}
