package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.LocationStatusCodes;
import spacemadness.com.lunarconsole.C1401R;

public class zzm implements Creator<PlaceLikelihoodEntity> {
    static void zza(PlaceLikelihoodEntity placeLikelihoodEntity, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zza(parcel, 1, placeLikelihoodEntity.zzaHA, i, false);
        zzb.zzc(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, placeLikelihoodEntity.mVersionCode);
        zzb.zza(parcel, 2, placeLikelihoodEntity.zzaHB);
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzeW(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzhu(i);
    }

    public PlaceLikelihoodEntity zzeW(Parcel parcel) {
        int zzap = zza.zzap(parcel);
        int i = 0;
        PlaceImpl placeImpl = null;
        float f = 0.0f;
        while (parcel.dataPosition() < zzap) {
            int zzao = zza.zzao(parcel);
            switch (zza.zzbM(zzao)) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    placeImpl = (PlaceImpl) zza.zza(parcel, zzao, PlaceImpl.CREATOR);
                    break;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    f = zza.zzl(parcel, zzao);
                    break;
                case LocationStatusCodes.GEOFENCE_NOT_AVAILABLE /*1000*/:
                    i = zza.zzg(parcel, zzao);
                    break;
                default:
                    zza.zzb(parcel, zzao);
                    break;
            }
        }
        if (parcel.dataPosition() == zzap) {
            return new PlaceLikelihoodEntity(i, placeImpl, f);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public PlaceLikelihoodEntity[] zzhu(int i) {
        return new PlaceLikelihoodEntity[i];
    }
}
