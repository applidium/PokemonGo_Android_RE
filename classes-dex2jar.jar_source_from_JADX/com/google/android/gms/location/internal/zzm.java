package com.google.android.gms.location.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationStatusCodes;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import java.util.List;
import spacemadness.com.lunarconsole.C1401R;

public class zzm implements Creator<LocationRequestInternal> {
    static void zza(LocationRequestInternal locationRequestInternal, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zza(parcel, 1, locationRequestInternal.zzasN, i, false);
        zzb.zzc(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, locationRequestInternal.getVersionCode());
        zzb.zza(parcel, 2, locationRequestInternal.zzaFE);
        zzb.zza(parcel, 3, locationRequestInternal.zzaFF);
        zzb.zza(parcel, 4, locationRequestInternal.zzaFG);
        zzb.zzc(parcel, 5, locationRequestInternal.zzaFH, false);
        zzb.zza(parcel, 6, locationRequestInternal.mTag, false);
        zzb.zza(parcel, 7, locationRequestInternal.zzaFI);
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzeH(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzha(i);
    }

    public LocationRequestInternal zzeH(Parcel parcel) {
        LocationRequest locationRequest = null;
        boolean z = true;
        boolean z2 = false;
        int zzap = zza.zzap(parcel);
        List list = LocationRequestInternal.zzaFD;
        String str = null;
        boolean z3 = true;
        boolean z4 = false;
        int i = 0;
        while (parcel.dataPosition() < zzap) {
            int zzao = zza.zzao(parcel);
            switch (zza.zzbM(zzao)) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    locationRequest = (LocationRequest) zza.zza(parcel, zzao, LocationRequest.CREATOR);
                    break;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    z2 = zza.zzc(parcel, zzao);
                    break;
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    z = zza.zzc(parcel, zzao);
                    break;
                case Place.TYPE_AQUARIUM /*4*/:
                    z3 = zza.zzc(parcel, zzao);
                    break;
                case Place.TYPE_ART_GALLERY /*5*/:
                    list = zza.zzc(parcel, zzao, ClientIdentity.CREATOR);
                    break;
                case Place.TYPE_ATM /*6*/:
                    str = zza.zzp(parcel, zzao);
                    break;
                case Place.TYPE_BAKERY /*7*/:
                    z4 = zza.zzc(parcel, zzao);
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
            return new LocationRequestInternal(i, locationRequest, z2, z, z3, list, str, z4);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public LocationRequestInternal[] zzha(int i) {
        return new LocationRequestInternal[i];
    }
}
