package com.google.android.gms.ads.internal.request;

import android.content.Context;
import com.google.android.gms.internal.zzan;
import com.google.android.gms.internal.zzgr;
import com.google.android.gms.internal.zzhz;

@zzgr
public class zza {

    public interface zza {
        void zza(com.google.android.gms.internal.zzhs.zza com_google_android_gms_internal_zzhs_zza);
    }

    public zzhz zza(Context context, com.google.android.gms.ads.internal.request.AdRequestInfoParcel.zza com_google_android_gms_ads_internal_request_AdRequestInfoParcel_zza, zzan com_google_android_gms_internal_zzan, zza com_google_android_gms_ads_internal_request_zza_zza) {
        zzhz com_google_android_gms_ads_internal_request_zzm = com_google_android_gms_ads_internal_request_AdRequestInfoParcel_zza.zzEn.extras.getBundle("sdk_less_server_data") != null ? new zzm(context, com_google_android_gms_ads_internal_request_AdRequestInfoParcel_zza, com_google_android_gms_ads_internal_request_zza_zza) : new zzb(context, com_google_android_gms_ads_internal_request_AdRequestInfoParcel_zza, com_google_android_gms_internal_zzan, com_google_android_gms_ads_internal_request_zza_zza);
        com_google_android_gms_ads_internal_request_zzm.zzgz();
        return com_google_android_gms_ads_internal_request_zzm;
    }
}
