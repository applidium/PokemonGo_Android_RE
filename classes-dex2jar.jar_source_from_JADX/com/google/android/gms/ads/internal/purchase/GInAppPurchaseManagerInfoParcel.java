package com.google.android.gms.ads.internal.purchase;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.zzd.zza;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzfr;
import com.google.android.gms.internal.zzgr;

@zzgr
public final class GInAppPurchaseManagerInfoParcel implements SafeParcelable {
    public static final zza CREATOR;
    public final int versionCode;
    public final zzfr zzCw;
    public final Context zzCx;
    public final zzj zzCy;
    public final zzk zzqE;

    static {
        CREATOR = new zza();
    }

    GInAppPurchaseManagerInfoParcel(int i, IBinder iBinder, IBinder iBinder2, IBinder iBinder3, IBinder iBinder4) {
        this.versionCode = i;
        this.zzqE = (zzk) zze.zzp(zza.zzbk(iBinder));
        this.zzCw = (zzfr) zze.zzp(zza.zzbk(iBinder2));
        this.zzCx = (Context) zze.zzp(zza.zzbk(iBinder3));
        this.zzCy = (zzj) zze.zzp(zza.zzbk(iBinder4));
    }

    public GInAppPurchaseManagerInfoParcel(Context context, zzk com_google_android_gms_ads_internal_purchase_zzk, zzfr com_google_android_gms_internal_zzfr, zzj com_google_android_gms_ads_internal_purchase_zzj) {
        this.versionCode = 2;
        this.zzCx = context;
        this.zzqE = com_google_android_gms_ads_internal_purchase_zzk;
        this.zzCw = com_google_android_gms_internal_zzfr;
        this.zzCy = com_google_android_gms_ads_internal_purchase_zzj;
    }

    public static void zza(Intent intent, GInAppPurchaseManagerInfoParcel gInAppPurchaseManagerInfoParcel) {
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo", gInAppPurchaseManagerInfoParcel);
        intent.putExtra("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo", bundle);
    }

    public static GInAppPurchaseManagerInfoParcel zzc(Intent intent) {
        try {
            Bundle bundleExtra = intent.getBundleExtra("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo");
            bundleExtra.setClassLoader(GInAppPurchaseManagerInfoParcel.class.getClassLoader());
            return (GInAppPurchaseManagerInfoParcel) bundleExtra.getParcelable("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo");
        } catch (Exception e) {
            return null;
        }
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }

    IBinder zzfi() {
        return zze.zzy(this.zzCy).asBinder();
    }

    IBinder zzfj() {
        return zze.zzy(this.zzqE).asBinder();
    }

    IBinder zzfk() {
        return zze.zzy(this.zzCw).asBinder();
    }

    IBinder zzfl() {
        return zze.zzy(this.zzCx).asBinder();
    }
}
