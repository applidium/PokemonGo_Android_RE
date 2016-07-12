package com.google.android.gms.internal;

import android.view.View;
import com.google.android.gms.ads.internal.zzg;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzcj.zza;

@zzgr
public final class zzch extends zza {
    private final zzg zzvW;
    private final String zzvX;
    private final String zzvY;

    public zzch(zzg com_google_android_gms_ads_internal_zzg, String str, String str2) {
        this.zzvW = com_google_android_gms_ads_internal_zzg;
        this.zzvX = str;
        this.zzvY = str2;
    }

    public String getContent() {
        return this.zzvY;
    }

    public void recordClick() {
        this.zzvW.recordClick();
    }

    public void recordImpression() {
        this.zzvW.recordImpression();
    }

    public void zza(zzd com_google_android_gms_dynamic_zzd) {
        if (com_google_android_gms_dynamic_zzd != null) {
            this.zzvW.zzc((View) zze.zzp(com_google_android_gms_dynamic_zzd));
        }
    }

    public String zzdr() {
        return this.zzvX;
    }
}
