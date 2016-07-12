package com.google.android.gms.internal;

import com.google.android.gms.ads.formats.NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener;
import com.google.android.gms.internal.zzcz.zza;

@zzgr
public class zzde extends zza {
    private final OnCustomTemplateAdLoadedListener zzxm;

    public zzde(OnCustomTemplateAdLoadedListener onCustomTemplateAdLoadedListener) {
        this.zzxm = onCustomTemplateAdLoadedListener;
    }

    public void zza(zzcu com_google_android_gms_internal_zzcu) {
        this.zzxm.onCustomTemplateAdLoaded(new zzcv(com_google_android_gms_internal_zzcu));
    }
}
