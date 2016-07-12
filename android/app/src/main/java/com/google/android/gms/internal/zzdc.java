package com.google.android.gms.internal;

import com.google.android.gms.ads.formats.NativeContentAd.OnContentAdLoadedListener;
import com.google.android.gms.internal.zzcx.zza;

@zzgr
public class zzdc extends zza {
    private final OnContentAdLoadedListener zzxk;

    public zzdc(OnContentAdLoadedListener onContentAdLoadedListener) {
        this.zzxk = onContentAdLoadedListener;
    }

    public void zza(zzcs com_google_android_gms_internal_zzcs) {
        this.zzxk.onContentAdLoaded(zzb(com_google_android_gms_internal_zzcs));
    }

    zzct zzb(zzcs com_google_android_gms_internal_zzcs) {
        return new zzct(com_google_android_gms_internal_zzcs);
    }
}
