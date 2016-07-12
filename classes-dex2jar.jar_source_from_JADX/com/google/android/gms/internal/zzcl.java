package com.google.android.gms.internal;

import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;
import com.google.android.gms.internal.zzck.zza;

@zzgr
public final class zzcl extends zza {
    private final OnCustomRenderedAdLoadedListener zztK;

    public zzcl(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        this.zztK = onCustomRenderedAdLoadedListener;
    }

    public void zza(zzcj com_google_android_gms_internal_zzcj) {
        this.zztK.onCustomRenderedAdLoaded(new zzci(com_google_android_gms_internal_zzcj));
    }
}
