package com.google.android.gms.ads.internal.overlay;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import com.nianticproject.holoholo.sfida.constants.BluetoothGattSupport;
import spacemadness.com.lunarconsole.C1401R;

public class zzb implements Creator<AdLauncherIntentInfoParcel> {
    static void zza(AdLauncherIntentInfoParcel adLauncherIntentInfoParcel, Parcel parcel, int i) {
        int zzaq = com.google.android.gms.common.internal.safeparcel.zzb.zzaq(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, adLauncherIntentInfoParcel.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, adLauncherIntentInfoParcel.intentAction, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, adLauncherIntentInfoParcel.url, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, adLauncherIntentInfoParcel.mimeType, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, adLauncherIntentInfoParcel.packageName, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 6, adLauncherIntentInfoParcel.zzAL, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 7, adLauncherIntentInfoParcel.zzAM, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 8, adLauncherIntentInfoParcel.zzAN, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzf(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzs(i);
    }

    public AdLauncherIntentInfoParcel zzf(Parcel parcel) {
        String str = null;
        int zzap = zza.zzap(parcel);
        int i = 0;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        while (parcel.dataPosition() < zzap) {
            int zzao = zza.zzao(parcel);
            switch (zza.zzbM(zzao)) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    i = zza.zzg(parcel, zzao);
                    break;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    str = zza.zzp(parcel, zzao);
                    break;
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    str2 = zza.zzp(parcel, zzao);
                    break;
                case Place.TYPE_AQUARIUM /*4*/:
                    str3 = zza.zzp(parcel, zzao);
                    break;
                case Place.TYPE_ART_GALLERY /*5*/:
                    str4 = zza.zzp(parcel, zzao);
                    break;
                case Place.TYPE_ATM /*6*/:
                    str5 = zza.zzp(parcel, zzao);
                    break;
                case Place.TYPE_BAKERY /*7*/:
                    str6 = zza.zzp(parcel, zzao);
                    break;
                case BluetoothGattSupport.GATT_INSUF_AUTHENTICATION /*8*/:
                    str7 = zza.zzp(parcel, zzao);
                    break;
                default:
                    zza.zzb(parcel, zzao);
                    break;
            }
        }
        if (parcel.dataPosition() == zzap) {
            return new AdLauncherIntentInfoParcel(i, str, str2, str3, str4, str5, str6, str7);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public AdLauncherIntentInfoParcel[] zzs(int i) {
        return new AdLauncherIntentInfoParcel[i];
    }
}
