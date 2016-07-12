package com.google.android.gms.internal;

import com.google.android.gms.ads.formats.NativeAppInstallAd.OnAppInstallAdLoadedListener;
import com.google.android.gms.internal.zzcw.zza;

@zzgr
public class zzdb extends zza {
    private final OnAppInstallAdLoadedListener zzxj;

    public zzdb(OnAppInstallAdLoadedListener onAppInstallAdLoadedListener) {
        this.zzxj = onAppInstallAdLoadedListener;
    }

    public void zza(zzcq com_google_android_gms_internal_zzcq) {
        this.zzxj.onAppInstallAdLoaded(zzb(com_google_android_gms_internal_zzcq));
    }

    zzcr zzb(zzcq com_google_android_gms_internal_zzcq) {
        return new zzcr(com_google_android_gms_internal_zzcq);
    }
}
