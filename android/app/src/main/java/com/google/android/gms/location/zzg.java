package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import spacemadness.com.lunarconsole.C1401R;

public class zzg implements Creator<LocationSettingsResult> {
    static void zza(LocationSettingsResult locationSettingsResult, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zza(parcel, 1, locationSettingsResult.getStatus(), i, false);
        zzb.zzc(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, locationSettingsResult.getVersionCode());
        zzb.zza(parcel, 2, locationSettingsResult.getLocationSettingsStates(), i, false);
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzeD(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzgT(i);
    }

    public LocationSettingsResult zzeD(Parcel parcel) {
        LocationSettingsStates locationSettingsStates = null;
        int zzap = zza.zzap(parcel);
        int i = 0;
        Status status = null;
        while (parcel.dataPosition() < zzap) {
            Status status2;
            LocationSettingsStates locationSettingsStates2;
            int i2;
            int zzao = zza.zzao(parcel);
            switch (zza.zzbM(zzao)) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    status2 = (Status) zza.zza(parcel, zzao, Status.CREATOR);
                    locationSettingsStates2 = locationSettingsStates;
                    i2 = i;
                    break;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    i2 = i;
                    LocationSettingsStates locationSettingsStates3 = (LocationSettingsStates) zza.zza(parcel, zzao, LocationSettingsStates.CREATOR);
                    status2 = status;
                    locationSettingsStates2 = locationSettingsStates3;
                    break;
                case LocationStatusCodes.GEOFENCE_NOT_AVAILABLE /*1000*/:
                    Status status3 = status;
                    locationSettingsStates2 = locationSettingsStates;
                    i2 = zza.zzg(parcel, zzao);
                    status2 = status3;
                    break;
                default:
                    zza.zzb(parcel, zzao);
                    status2 = status;
                    locationSettingsStates2 = locationSettingsStates;
                    i2 = i;
                    break;
            }
            i = i2;
            locationSettingsStates = locationSettingsStates2;
            status = status2;
        }
        if (parcel.dataPosition() == zzap) {
            return new LocationSettingsResult(i, status, locationSettingsStates);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public LocationSettingsResult[] zzgT(int i) {
        return new LocationSettingsResult[i];
    }
}
