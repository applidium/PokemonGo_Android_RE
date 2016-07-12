package com.google.android.gms.ads.internal.request;

import com.google.android.gms.ads.internal.request.zzk.zza;
import java.lang.ref.WeakReference;

public final class zzg extends zza {
    private final WeakReference<zzc.zza> zzEI;

    public zzg(zzc.zza com_google_android_gms_ads_internal_request_zzc_zza) {
        this.zzEI = new WeakReference(com_google_android_gms_ads_internal_request_zzc_zza);
    }

    public void zzb(AdResponseParcel adResponseParcel) {
        zzc.zza com_google_android_gms_ads_internal_request_zzc_zza = (zzc.zza) this.zzEI.get();
        if (com_google_android_gms_ads_internal_request_zzc_zza != null) {
            com_google_android_gms_ads_internal_request_zzc_zza.zzb(adResponseParcel);
        }
    }
}
