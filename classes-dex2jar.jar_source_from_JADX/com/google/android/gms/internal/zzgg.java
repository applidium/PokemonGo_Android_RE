package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.internal.zzn;

@zzgr
public class zzgg {

    public interface zza {
        void zzb(zzhs com_google_android_gms_internal_zzhs);
    }

    public zzgh zza(Context context, com.google.android.gms.ads.internal.zza com_google_android_gms_ads_internal_zza, com.google.android.gms.internal.zzhs.zza com_google_android_gms_internal_zzhs_zza, zzan com_google_android_gms_internal_zzan, zziz com_google_android_gms_internal_zziz, zzem com_google_android_gms_internal_zzem, zza com_google_android_gms_internal_zzgg_zza, zzcg com_google_android_gms_internal_zzcg) {
        zzgh com_google_android_gms_internal_zzgk;
        AdResponseParcel adResponseParcel = com_google_android_gms_internal_zzhs_zza.zzHD;
        if (adResponseParcel.zzEK) {
            com_google_android_gms_internal_zzgk = new zzgk(context, com_google_android_gms_internal_zzhs_zza, com_google_android_gms_internal_zzem, com_google_android_gms_internal_zzgg_zza, com_google_android_gms_internal_zzcg);
        } else if (!adResponseParcel.zzth) {
            com_google_android_gms_internal_zzgk = adResponseParcel.zzEQ ? new zzge(context, com_google_android_gms_internal_zzhs_zza, com_google_android_gms_internal_zziz, com_google_android_gms_internal_zzgg_zza) : (((Boolean) zzby.zzvb.get()).booleanValue() && zzmx.zzqB() && !zzmx.isAtLeastL() && com_google_android_gms_internal_zziz.zzaN().zztf) ? new zzgj(context, com_google_android_gms_internal_zzhs_zza, com_google_android_gms_internal_zziz, com_google_android_gms_internal_zzgg_zza) : new zzgi(context, com_google_android_gms_internal_zzhs_zza, com_google_android_gms_internal_zziz, com_google_android_gms_internal_zzgg_zza);
        } else if (com_google_android_gms_ads_internal_zza instanceof zzn) {
            com_google_android_gms_internal_zzgk = new zzgl(context, (zzn) com_google_android_gms_ads_internal_zza, new zzbc(), com_google_android_gms_internal_zzhs_zza, com_google_android_gms_internal_zzan, com_google_android_gms_internal_zzgg_zza);
        } else {
            throw new IllegalArgumentException("Invalid NativeAdManager type. Found: " + (com_google_android_gms_ads_internal_zza != null ? com_google_android_gms_ads_internal_zza.getClass().getName() : "null") + "; Required: NativeAdManager.");
        }
        zzb.zzaF("AdRenderer: " + com_google_android_gms_internal_zzgk.getClass().getName());
        com_google_android_gms_internal_zzgk.zzfu();
        return com_google_android_gms_internal_zzgk;
    }
}
