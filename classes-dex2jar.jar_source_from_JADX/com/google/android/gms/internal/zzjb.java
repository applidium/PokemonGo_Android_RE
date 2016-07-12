package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.zzd;
import com.google.android.gms.ads.internal.zzp;

@zzgr
public class zzjb {
    public zziz zza(Context context, AdSizeParcel adSizeParcel, boolean z, boolean z2, zzan com_google_android_gms_internal_zzan, VersionInfoParcel versionInfoParcel) {
        return zza(context, adSizeParcel, z, z2, com_google_android_gms_internal_zzan, versionInfoParcel, null, null);
    }

    public zziz zza(Context context, AdSizeParcel adSizeParcel, boolean z, boolean z2, zzan com_google_android_gms_internal_zzan, VersionInfoParcel versionInfoParcel, zzcg com_google_android_gms_internal_zzcg, zzd com_google_android_gms_ads_internal_zzd) {
        zziz com_google_android_gms_internal_zzjc = new zzjc(zzjd.zzb(context, adSizeParcel, z, z2, com_google_android_gms_internal_zzan, versionInfoParcel, com_google_android_gms_internal_zzcg, com_google_android_gms_ads_internal_zzd));
        com_google_android_gms_internal_zzjc.setWebViewClient(zzp.zzbx().zzb(com_google_android_gms_internal_zzjc, z2));
        com_google_android_gms_internal_zzjc.setWebChromeClient(zzp.zzbx().zzf(com_google_android_gms_internal_zzjc));
        return com_google_android_gms_internal_zzjc;
    }
}
