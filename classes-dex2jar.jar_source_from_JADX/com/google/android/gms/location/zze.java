package com.google.android.gms.location;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.List;
import spacemadness.com.lunarconsole.C1401R;

public class zze implements Creator<LocationResult> {
    static void zza(LocationResult locationResult, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zzc(parcel, 1, locationResult.getLocations(), false);
        zzb.zzc(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, locationResult.getVersionCode());
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzeB(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzgR(i);
    }

    public LocationResult zzeB(Parcel parcel) {
        int zzap = zza.zzap(parcel);
        int i = 0;
        List list = LocationResult.zzaEJ;
        while (parcel.dataPosition() < zzap) {
            int zzao = zza.zzao(parcel);
            switch (zza.zzbM(zzao)) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    list = zza.zzc(parcel, zzao, Location.CREATOR);
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
            return new LocationResult(i, list);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public LocationResult[] zzgR(int i) {
        return new LocationResult[i];
    }
}
