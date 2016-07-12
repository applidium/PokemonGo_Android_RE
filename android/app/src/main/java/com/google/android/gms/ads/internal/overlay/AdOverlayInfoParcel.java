package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.ads.internal.InterstitialAdParameterParcel;
import com.google.android.gms.ads.internal.client.zza;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzdg;
import com.google.android.gms.internal.zzdm;
import com.google.android.gms.internal.zzgr;
import com.google.android.gms.internal.zziz;

@zzgr
public final class AdOverlayInfoParcel implements SafeParcelable {
    public static final zzf CREATOR;
    public final int orientation;
    public final String url;
    public final int versionCode;
    public final AdLauncherIntentInfoParcel zzBA;
    public final zza zzBB;
    public final zzg zzBC;
    public final zziz zzBD;
    public final zzdg zzBE;
    public final String zzBF;
    public final boolean zzBG;
    public final String zzBH;
    public final zzn zzBI;
    public final int zzBJ;
    public final zzdm zzBK;
    public final String zzBL;
    public final InterstitialAdParameterParcel zzBM;
    public final VersionInfoParcel zzqj;

    static {
        CREATOR = new zzf();
    }

    AdOverlayInfoParcel(int i, AdLauncherIntentInfoParcel adLauncherIntentInfoParcel, IBinder iBinder, IBinder iBinder2, IBinder iBinder3, IBinder iBinder4, String str, boolean z, String str2, IBinder iBinder5, int i2, int i3, String str3, VersionInfoParcel versionInfoParcel, IBinder iBinder6, String str4, InterstitialAdParameterParcel interstitialAdParameterParcel) {
        this.versionCode = i;
        this.zzBA = adLauncherIntentInfoParcel;
        this.zzBB = (zza) zze.zzp(zzd.zza.zzbk(iBinder));
        this.zzBC = (zzg) zze.zzp(zzd.zza.zzbk(iBinder2));
        this.zzBD = (zziz) zze.zzp(zzd.zza.zzbk(iBinder3));
        this.zzBE = (zzdg) zze.zzp(zzd.zza.zzbk(iBinder4));
        this.zzBF = str;
        this.zzBG = z;
        this.zzBH = str2;
        this.zzBI = (zzn) zze.zzp(zzd.zza.zzbk(iBinder5));
        this.orientation = i2;
        this.zzBJ = i3;
        this.url = str3;
        this.zzqj = versionInfoParcel;
        this.zzBK = (zzdm) zze.zzp(zzd.zza.zzbk(iBinder6));
        this.zzBL = str4;
        this.zzBM = interstitialAdParameterParcel;
    }

    public AdOverlayInfoParcel(zza com_google_android_gms_ads_internal_client_zza, zzg com_google_android_gms_ads_internal_overlay_zzg, zzn com_google_android_gms_ads_internal_overlay_zzn, zziz com_google_android_gms_internal_zziz, int i, VersionInfoParcel versionInfoParcel, String str, InterstitialAdParameterParcel interstitialAdParameterParcel) {
        this.versionCode = 4;
        this.zzBA = null;
        this.zzBB = com_google_android_gms_ads_internal_client_zza;
        this.zzBC = com_google_android_gms_ads_internal_overlay_zzg;
        this.zzBD = com_google_android_gms_internal_zziz;
        this.zzBE = null;
        this.zzBF = null;
        this.zzBG = false;
        this.zzBH = null;
        this.zzBI = com_google_android_gms_ads_internal_overlay_zzn;
        this.orientation = i;
        this.zzBJ = 1;
        this.url = null;
        this.zzqj = versionInfoParcel;
        this.zzBK = null;
        this.zzBL = str;
        this.zzBM = interstitialAdParameterParcel;
    }

    public AdOverlayInfoParcel(zza com_google_android_gms_ads_internal_client_zza, zzg com_google_android_gms_ads_internal_overlay_zzg, zzn com_google_android_gms_ads_internal_overlay_zzn, zziz com_google_android_gms_internal_zziz, boolean z, int i, VersionInfoParcel versionInfoParcel) {
        this.versionCode = 4;
        this.zzBA = null;
        this.zzBB = com_google_android_gms_ads_internal_client_zza;
        this.zzBC = com_google_android_gms_ads_internal_overlay_zzg;
        this.zzBD = com_google_android_gms_internal_zziz;
        this.zzBE = null;
        this.zzBF = null;
        this.zzBG = z;
        this.zzBH = null;
        this.zzBI = com_google_android_gms_ads_internal_overlay_zzn;
        this.orientation = i;
        this.zzBJ = 2;
        this.url = null;
        this.zzqj = versionInfoParcel;
        this.zzBK = null;
        this.zzBL = null;
        this.zzBM = null;
    }

    public AdOverlayInfoParcel(zza com_google_android_gms_ads_internal_client_zza, zzg com_google_android_gms_ads_internal_overlay_zzg, zzdg com_google_android_gms_internal_zzdg, zzn com_google_android_gms_ads_internal_overlay_zzn, zziz com_google_android_gms_internal_zziz, boolean z, int i, String str, VersionInfoParcel versionInfoParcel, zzdm com_google_android_gms_internal_zzdm) {
        this.versionCode = 4;
        this.zzBA = null;
        this.zzBB = com_google_android_gms_ads_internal_client_zza;
        this.zzBC = com_google_android_gms_ads_internal_overlay_zzg;
        this.zzBD = com_google_android_gms_internal_zziz;
        this.zzBE = com_google_android_gms_internal_zzdg;
        this.zzBF = null;
        this.zzBG = z;
        this.zzBH = null;
        this.zzBI = com_google_android_gms_ads_internal_overlay_zzn;
        this.orientation = i;
        this.zzBJ = 3;
        this.url = str;
        this.zzqj = versionInfoParcel;
        this.zzBK = com_google_android_gms_internal_zzdm;
        this.zzBL = null;
        this.zzBM = null;
    }

    public AdOverlayInfoParcel(zza com_google_android_gms_ads_internal_client_zza, zzg com_google_android_gms_ads_internal_overlay_zzg, zzdg com_google_android_gms_internal_zzdg, zzn com_google_android_gms_ads_internal_overlay_zzn, zziz com_google_android_gms_internal_zziz, boolean z, int i, String str, String str2, VersionInfoParcel versionInfoParcel, zzdm com_google_android_gms_internal_zzdm) {
        this.versionCode = 4;
        this.zzBA = null;
        this.zzBB = com_google_android_gms_ads_internal_client_zza;
        this.zzBC = com_google_android_gms_ads_internal_overlay_zzg;
        this.zzBD = com_google_android_gms_internal_zziz;
        this.zzBE = com_google_android_gms_internal_zzdg;
        this.zzBF = str2;
        this.zzBG = z;
        this.zzBH = str;
        this.zzBI = com_google_android_gms_ads_internal_overlay_zzn;
        this.orientation = i;
        this.zzBJ = 3;
        this.url = null;
        this.zzqj = versionInfoParcel;
        this.zzBK = com_google_android_gms_internal_zzdm;
        this.zzBL = null;
        this.zzBM = null;
    }

    public AdOverlayInfoParcel(AdLauncherIntentInfoParcel adLauncherIntentInfoParcel, zza com_google_android_gms_ads_internal_client_zza, zzg com_google_android_gms_ads_internal_overlay_zzg, zzn com_google_android_gms_ads_internal_overlay_zzn, VersionInfoParcel versionInfoParcel) {
        this.versionCode = 4;
        this.zzBA = adLauncherIntentInfoParcel;
        this.zzBB = com_google_android_gms_ads_internal_client_zza;
        this.zzBC = com_google_android_gms_ads_internal_overlay_zzg;
        this.zzBD = null;
        this.zzBE = null;
        this.zzBF = null;
        this.zzBG = false;
        this.zzBH = null;
        this.zzBI = com_google_android_gms_ads_internal_overlay_zzn;
        this.orientation = -1;
        this.zzBJ = 4;
        this.url = null;
        this.zzqj = versionInfoParcel;
        this.zzBK = null;
        this.zzBL = null;
        this.zzBM = null;
    }

    public static void zza(Intent intent, AdOverlayInfoParcel adOverlayInfoParcel) {
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", adOverlayInfoParcel);
        intent.putExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", bundle);
    }

    public static AdOverlayInfoParcel zzb(Intent intent) {
        try {
            Bundle bundleExtra = intent.getBundleExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
            bundleExtra.setClassLoader(AdOverlayInfoParcel.class.getClassLoader());
            return (AdOverlayInfoParcel) bundleExtra.getParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
        } catch (Exception e) {
            return null;
        }
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzf.zza(this, parcel, i);
    }

    IBinder zzeK() {
        return zze.zzy(this.zzBB).asBinder();
    }

    IBinder zzeL() {
        return zze.zzy(this.zzBC).asBinder();
    }

    IBinder zzeM() {
        return zze.zzy(this.zzBD).asBinder();
    }

    IBinder zzeN() {
        return zze.zzy(this.zzBE).asBinder();
    }

    IBinder zzeO() {
        return zze.zzy(this.zzBK).asBinder();
    }

    IBinder zzeP() {
        return zze.zzy(this.zzBI).asBinder();
    }
}
