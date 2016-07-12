package com.google.android.gms.ads.internal.request;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import com.nianticproject.holoholo.sfida.constants.BluetoothGattSupport;
import com.upsight.android.internal.persistence.subscription.Subscriptions;
import java.util.List;
import spacemadness.com.lunarconsole.C1401R;

public class zzf implements Creator<AdRequestInfoParcel> {
    static void zza(AdRequestInfoParcel adRequestInfoParcel, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zzc(parcel, 1, adRequestInfoParcel.versionCode);
        zzb.zza(parcel, 2, adRequestInfoParcel.zzEm, false);
        zzb.zza(parcel, 3, adRequestInfoParcel.zzEn, i, false);
        zzb.zza(parcel, 4, adRequestInfoParcel.zzqn, i, false);
        zzb.zza(parcel, 5, adRequestInfoParcel.zzqh, false);
        zzb.zza(parcel, 6, adRequestInfoParcel.applicationInfo, i, false);
        zzb.zza(parcel, 7, adRequestInfoParcel.zzEo, i, false);
        zzb.zza(parcel, 8, adRequestInfoParcel.zzEp, false);
        zzb.zza(parcel, 9, adRequestInfoParcel.zzEq, false);
        zzb.zza(parcel, 10, adRequestInfoParcel.zzEr, false);
        zzb.zza(parcel, 11, adRequestInfoParcel.zzqj, i, false);
        zzb.zza(parcel, 12, adRequestInfoParcel.zzEs, false);
        zzb.zzc(parcel, 13, adRequestInfoParcel.zzEt);
        zzb.zzb(parcel, 14, adRequestInfoParcel.zzqD, false);
        zzb.zza(parcel, 15, adRequestInfoParcel.zzEu, false);
        zzb.zza(parcel, 17, adRequestInfoParcel.zzEw, i, false);
        zzb.zza(parcel, 16, adRequestInfoParcel.zzEv);
        zzb.zzc(parcel, 19, adRequestInfoParcel.zzEy);
        zzb.zzc(parcel, 18, adRequestInfoParcel.zzEx);
        zzb.zza(parcel, 21, adRequestInfoParcel.zzEA, false);
        zzb.zza(parcel, 20, adRequestInfoParcel.zzEz);
        zzb.zza(parcel, 25, adRequestInfoParcel.zzEB);
        zzb.zzb(parcel, 27, adRequestInfoParcel.zzED, false);
        zzb.zza(parcel, 26, adRequestInfoParcel.zzEC, false);
        zzb.zza(parcel, 29, adRequestInfoParcel.zzqB, i, false);
        zzb.zza(parcel, 28, adRequestInfoParcel.zzqg, false);
        zzb.zza(parcel, 31, adRequestInfoParcel.zzEF);
        zzb.zzb(parcel, 30, adRequestInfoParcel.zzEE, false);
        zzb.zza(parcel, 32, adRequestInfoParcel.zzEG, i, false);
        zzb.zza(parcel, 33, adRequestInfoParcel.zzEH, false);
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzi(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzD(i);
    }

    public AdRequestInfoParcel[] zzD(int i) {
        return new AdRequestInfoParcel[i];
    }

    public AdRequestInfoParcel zzi(Parcel parcel) {
        int zzap = zza.zzap(parcel);
        int i = 0;
        Bundle bundle = null;
        AdRequestParcel adRequestParcel = null;
        AdSizeParcel adSizeParcel = null;
        String str = null;
        ApplicationInfo applicationInfo = null;
        PackageInfo packageInfo = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        VersionInfoParcel versionInfoParcel = null;
        Bundle bundle2 = null;
        int i2 = 0;
        List list = null;
        Bundle bundle3 = null;
        boolean z = false;
        Messenger messenger = null;
        int i3 = 0;
        int i4 = 0;
        float f = 0.0f;
        String str5 = null;
        long j = 0;
        String str6 = null;
        List list2 = null;
        String str7 = null;
        NativeAdOptionsParcel nativeAdOptionsParcel = null;
        List list3 = null;
        long j2 = 0;
        CapabilityParcel capabilityParcel = null;
        String str8 = null;
        while (parcel.dataPosition() < zzap) {
            int zzao = zza.zzao(parcel);
            switch (zza.zzbM(zzao)) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    i = zza.zzg(parcel, zzao);
                    break;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    bundle = zza.zzr(parcel, zzao);
                    break;
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    adRequestParcel = (AdRequestParcel) zza.zza(parcel, zzao, AdRequestParcel.CREATOR);
                    break;
                case Place.TYPE_AQUARIUM /*4*/:
                    adSizeParcel = (AdSizeParcel) zza.zza(parcel, zzao, AdSizeParcel.CREATOR);
                    break;
                case Place.TYPE_ART_GALLERY /*5*/:
                    str = zza.zzp(parcel, zzao);
                    break;
                case Place.TYPE_ATM /*6*/:
                    applicationInfo = (ApplicationInfo) zza.zza(parcel, zzao, ApplicationInfo.CREATOR);
                    break;
                case Place.TYPE_BAKERY /*7*/:
                    packageInfo = (PackageInfo) zza.zza(parcel, zzao, PackageInfo.CREATOR);
                    break;
                case BluetoothGattSupport.GATT_INSUF_AUTHENTICATION /*8*/:
                    str2 = zza.zzp(parcel, zzao);
                    break;
                case Place.TYPE_BAR /*9*/:
                    str3 = zza.zzp(parcel, zzao);
                    break;
                case Subscriptions.MAX_QUEUE_LENGTH /*10*/:
                    str4 = zza.zzp(parcel, zzao);
                    break;
                case Place.TYPE_BICYCLE_STORE /*11*/:
                    versionInfoParcel = (VersionInfoParcel) zza.zza(parcel, zzao, VersionInfoParcel.CREATOR);
                    break;
                case Place.TYPE_BOOK_STORE /*12*/:
                    bundle2 = zza.zzr(parcel, zzao);
                    break;
                case Place.TYPE_BOWLING_ALLEY /*13*/:
                    i2 = zza.zzg(parcel, zzao);
                    break;
                case Place.TYPE_BUS_STATION /*14*/:
                    list = zza.zzD(parcel, zzao);
                    break;
                case Place.TYPE_CAFE /*15*/:
                    bundle3 = zza.zzr(parcel, zzao);
                    break;
                case Place.TYPE_CAMPGROUND /*16*/:
                    z = zza.zzc(parcel, zzao);
                    break;
                case Place.TYPE_CAR_DEALER /*17*/:
                    messenger = (Messenger) zza.zza(parcel, zzao, Messenger.CREATOR);
                    break;
                case Place.TYPE_CAR_RENTAL /*18*/:
                    i3 = zza.zzg(parcel, zzao);
                    break;
                case Place.TYPE_CAR_REPAIR /*19*/:
                    i4 = zza.zzg(parcel, zzao);
                    break;
                case Place.TYPE_CAR_WASH /*20*/:
                    f = zza.zzl(parcel, zzao);
                    break;
                case Place.TYPE_CASINO /*21*/:
                    str5 = zza.zzp(parcel, zzao);
                    break;
                case Place.TYPE_CLOTHING_STORE /*25*/:
                    j = zza.zzi(parcel, zzao);
                    break;
                case Place.TYPE_CONVENIENCE_STORE /*26*/:
                    str6 = zza.zzp(parcel, zzao);
                    break;
                case Place.TYPE_COURTHOUSE /*27*/:
                    list2 = zza.zzD(parcel, zzao);
                    break;
                case Place.TYPE_DENTIST /*28*/:
                    str7 = zza.zzp(parcel, zzao);
                    break;
                case Place.TYPE_DEPARTMENT_STORE /*29*/:
                    nativeAdOptionsParcel = (NativeAdOptionsParcel) zza.zza(parcel, zzao, NativeAdOptionsParcel.CREATOR);
                    break;
                case Place.TYPE_DOCTOR /*30*/:
                    list3 = zza.zzD(parcel, zzao);
                    break;
                case Place.TYPE_ELECTRICIAN /*31*/:
                    j2 = zza.zzi(parcel, zzao);
                    break;
                case Place.TYPE_ELECTRONICS_STORE /*32*/:
                    capabilityParcel = (CapabilityParcel) zza.zza(parcel, zzao, CapabilityParcel.CREATOR);
                    break;
                case Place.TYPE_EMBASSY /*33*/:
                    str8 = zza.zzp(parcel, zzao);
                    break;
                default:
                    zza.zzb(parcel, zzao);
                    break;
            }
        }
        if (parcel.dataPosition() == zzap) {
            return new AdRequestInfoParcel(i, bundle, adRequestParcel, adSizeParcel, str, applicationInfo, packageInfo, str2, str3, str4, versionInfoParcel, bundle2, i2, list, bundle3, z, messenger, i3, i4, f, str5, j, str6, list2, str7, nativeAdOptionsParcel, list3, j2, capabilityParcel, str8);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }
}
