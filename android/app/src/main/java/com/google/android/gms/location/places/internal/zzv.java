package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.LocationStatusCodes;
import com.google.android.gms.location.places.internal.AutocompletePredictionEntity.SubstringEntity;
import spacemadness.com.lunarconsole.C1401R;

public class zzv implements Creator<SubstringEntity> {
    static void zza(SubstringEntity substringEntity, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zzc(parcel, 1, substringEntity.mOffset);
        zzb.zzc(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, substringEntity.mVersionCode);
        zzb.zzc(parcel, 2, substringEntity.mLength);
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzeZ(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzhx(i);
    }

    public SubstringEntity zzeZ(Parcel parcel) {
        int i = 0;
        int zzap = zza.zzap(parcel);
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < zzap) {
            int zzao = zza.zzao(parcel);
            switch (zza.zzbM(zzao)) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    i2 = zza.zzg(parcel, zzao);
                    break;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    i = zza.zzg(parcel, zzao);
                    break;
                case LocationStatusCodes.GEOFENCE_NOT_AVAILABLE /*1000*/:
                    i3 = zza.zzg(parcel, zzao);
                    break;
                default:
                    zza.zzb(parcel, zzao);
                    break;
            }
        }
        if (parcel.dataPosition() == zzap) {
            return new SubstringEntity(i3, i2, i);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public SubstringEntity[] zzhx(int i) {
        return new SubstringEntity[i];
    }
}
