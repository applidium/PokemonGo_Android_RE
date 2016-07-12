package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import java.util.List;
import spacemadness.com.lunarconsole.C1401R;

public class zzf implements Creator<LocationSettingsRequest> {
    static void zza(LocationSettingsRequest locationSettingsRequest, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zzc(parcel, 1, locationSettingsRequest.zztd(), false);
        zzb.zzc(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, locationSettingsRequest.getVersionCode());
        zzb.zza(parcel, 2, locationSettingsRequest.zzwx());
        zzb.zza(parcel, 3, locationSettingsRequest.zzwy());
        zzb.zza(parcel, 4, locationSettingsRequest.zzwz());
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzeC(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzgS(i);
    }

    public LocationSettingsRequest zzeC(Parcel parcel) {
        boolean z = false;
        int zzap = zza.zzap(parcel);
        List list = null;
        boolean z2 = false;
        boolean z3 = false;
        int i = 0;
        while (parcel.dataPosition() < zzap) {
            int zzao = zza.zzao(parcel);
            switch (zza.zzbM(zzao)) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    list = zza.zzc(parcel, zzao, LocationRequest.CREATOR);
                    break;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    z = zza.zzc(parcel, zzao);
                    break;
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    z2 = zza.zzc(parcel, zzao);
                    break;
                case Place.TYPE_AQUARIUM /*4*/:
                    z3 = zza.zzc(parcel, zzao);
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
            return new LocationSettingsRequest(i, list, z, z2, z3);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public LocationSettingsRequest[] zzgS(int i) {
        return new LocationSettingsRequest[i];
    }
}
