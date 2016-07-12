package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.LocationStatusCodes;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import java.util.List;
import spacemadness.com.lunarconsole.C1401R;

public class zzd implements Creator<NearbyAlertFilter> {
    static void zza(NearbyAlertFilter nearbyAlertFilter, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zzb(parcel, 1, nearbyAlertFilter.zzaFZ, false);
        zzb.zzc(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, nearbyAlertFilter.mVersionCode);
        zzb.zza(parcel, 2, nearbyAlertFilter.zzaFX, false);
        zzb.zzc(parcel, 3, nearbyAlertFilter.zzaGa, false);
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzeM(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzhh(i);
    }

    public NearbyAlertFilter zzeM(Parcel parcel) {
        List list = null;
        int zzap = zza.zzap(parcel);
        List list2 = null;
        int i = 0;
        List list3 = null;
        while (parcel.dataPosition() < zzap) {
            int zzao = zza.zzao(parcel);
            switch (zza.zzbM(zzao)) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    list2 = zza.zzD(parcel, zzao);
                    break;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    list3 = zza.zzC(parcel, zzao);
                    break;
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    list = zza.zzc(parcel, zzao, UserDataType.CREATOR);
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
            return new NearbyAlertFilter(i, list2, list3, list);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public NearbyAlertFilter[] zzhh(int i) {
        return new NearbyAlertFilter[i];
    }
}
