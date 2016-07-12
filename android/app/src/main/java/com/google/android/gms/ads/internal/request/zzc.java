package com.google.android.gms.ads.internal.request;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzl;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.internal.zzby;
import com.google.android.gms.internal.zzgr;
import com.google.android.gms.internal.zzhz;

@zzgr
public final class zzc {

    public interface zza {
        void zzb(AdResponseParcel adResponseParcel);
    }

    interface zzb {
        boolean zzd(AdRequestInfoParcel adRequestInfoParcel);
    }

    /* renamed from: com.google.android.gms.ads.internal.request.zzc.1 */
    static final class C01951 implements zzb {
        final /* synthetic */ Context zzry;

        C01951(Context context) {
            this.zzry = context;
        }

        public boolean zzd(AdRequestInfoParcel adRequestInfoParcel) {
            return adRequestInfoParcel.zzqj.zzJx || (GooglePlayServicesUtil.zzag(this.zzry) && !((Boolean) zzby.zzuL.get()).booleanValue());
        }
    }

    public static zzhz zza(Context context, AdRequestInfoParcel adRequestInfoParcel, zza com_google_android_gms_ads_internal_request_zzc_zza) {
        return zza(context, adRequestInfoParcel, com_google_android_gms_ads_internal_request_zzc_zza, new C01951(context));
    }

    static zzhz zza(Context context, AdRequestInfoParcel adRequestInfoParcel, zza com_google_android_gms_ads_internal_request_zzc_zza, zzb com_google_android_gms_ads_internal_request_zzc_zzb) {
        return com_google_android_gms_ads_internal_request_zzc_zzb.zzd(adRequestInfoParcel) ? zzb(context, adRequestInfoParcel, com_google_android_gms_ads_internal_request_zzc_zza) : zzc(context, adRequestInfoParcel, com_google_android_gms_ads_internal_request_zzc_zza);
    }

    private static zzhz zzb(Context context, AdRequestInfoParcel adRequestInfoParcel, zza com_google_android_gms_ads_internal_request_zzc_zza) {
        com.google.android.gms.ads.internal.util.client.zzb.zzaF("Fetching ad response from local ad request service.");
        zzhz com_google_android_gms_ads_internal_request_zzd_zza = new com.google.android.gms.ads.internal.request.zzd.zza(context, adRequestInfoParcel, com_google_android_gms_ads_internal_request_zzc_zza);
        com_google_android_gms_ads_internal_request_zzd_zza.zzgz();
        return com_google_android_gms_ads_internal_request_zzd_zza;
    }

    private static zzhz zzc(Context context, AdRequestInfoParcel adRequestInfoParcel, zza com_google_android_gms_ads_internal_request_zzc_zza) {
        com.google.android.gms.ads.internal.util.client.zzb.zzaF("Fetching ad response from remote ad request service.");
        if (zzl.zzcF().zzR(context)) {
            return new com.google.android.gms.ads.internal.request.zzd.zzb(context, adRequestInfoParcel, com_google_android_gms_ads_internal_request_zzc_zza);
        }
        com.google.android.gms.ads.internal.util.client.zzb.zzaH("Failed to connect to remote ad request service.");
        return null;
    }
}
