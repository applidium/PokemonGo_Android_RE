package com.google.android.gms.ads.internal.formats;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import spacemadness.com.lunarconsole.C1401R;

public class zzi implements Creator<NativeAdOptionsParcel> {
    static void zza(NativeAdOptionsParcel nativeAdOptionsParcel, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zzc(parcel, 1, nativeAdOptionsParcel.versionCode);
        zzb.zza(parcel, 2, nativeAdOptionsParcel.zzwR);
        zzb.zzc(parcel, 3, nativeAdOptionsParcel.zzwS);
        zzb.zza(parcel, 4, nativeAdOptionsParcel.zzwT);
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zze(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzo(i);
    }

    public NativeAdOptionsParcel zze(Parcel parcel) {
        boolean z = false;
        int zzap = zza.zzap(parcel);
        boolean z2 = false;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < zzap) {
            int zzao = zza.zzao(parcel);
            switch (zza.zzbM(zzao)) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    i2 = zza.zzg(parcel, zzao);
                    break;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    z2 = zza.zzc(parcel, zzao);
                    break;
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    i = zza.zzg(parcel, zzao);
                    break;
                case Place.TYPE_AQUARIUM /*4*/:
                    z = zza.zzc(parcel, zzao);
                    break;
                default:
                    zza.zzb(parcel, zzao);
                    break;
            }
        }
        if (parcel.dataPosition() == zzap) {
            return new NativeAdOptionsParcel(i2, z2, i, z);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public NativeAdOptionsParcel[] zzo(int i) {
        return new NativeAdOptionsParcel[i];
    }
}
