package com.google.android.gms.internal;

import com.google.android.gms.ads.formats.NativeCustomTemplateAd.OnCustomClickListener;
import com.google.android.gms.internal.zzcy.zza;

@zzgr
public class zzdd extends zza {
    private final OnCustomClickListener zzxl;

    public zzdd(OnCustomClickListener onCustomClickListener) {
        this.zzxl = onCustomClickListener;
    }

    public void zza(zzcu com_google_android_gms_internal_zzcu, String str) {
        this.zzxl.onCustomClick(new zzcv(com_google_android_gms_internal_zzcu), str);
    }
}
