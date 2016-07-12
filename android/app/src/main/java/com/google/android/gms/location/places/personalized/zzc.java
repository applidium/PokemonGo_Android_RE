package com.google.android.gms.location.places.personalized;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.LocationStatusCodes;
import spacemadness.com.lunarconsole.C1401R;

public class zzc implements Creator<PlaceAlias> {
    static void zza(PlaceAlias placeAlias, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zza(parcel, 1, placeAlias.zzxq(), false);
        zzb.zzc(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, placeAlias.mVersionCode);
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzfc(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzhA(i);
    }

    public PlaceAlias zzfc(Parcel parcel) {
        int zzap = zza.zzap(parcel);
        int i = 0;
        String str = null;
        while (parcel.dataPosition() < zzap) {
            int zzao = zza.zzao(parcel);
            switch (zza.zzbM(zzao)) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    str = zza.zzp(parcel, zzao);
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
            return new PlaceAlias(i, str);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public PlaceAlias[] zzhA(int i) {
        return new PlaceAlias[i];
    }
}
