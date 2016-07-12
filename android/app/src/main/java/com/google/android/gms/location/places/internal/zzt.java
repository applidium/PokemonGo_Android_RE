package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.LocationStatusCodes;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import spacemadness.com.lunarconsole.C1401R;

public class zzt implements Creator<PlacesParams> {
    static void zza(PlacesParams placesParams, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zza(parcel, 1, placesParams.zzaHR, false);
        zzb.zzc(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, placesParams.versionCode);
        zzb.zza(parcel, 2, placesParams.zzaHS, false);
        zzb.zza(parcel, 3, placesParams.zzaHT, false);
        zzb.zza(parcel, 4, placesParams.zzaGG, false);
        zzb.zza(parcel, 5, placesParams.zzaHU, false);
        zzb.zzc(parcel, 6, placesParams.zzaHV);
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzeY(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzhw(i);
    }

    public PlacesParams zzeY(Parcel parcel) {
        int i = 0;
        String str = null;
        int zzap = zza.zzap(parcel);
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzap) {
            int zzao = zza.zzao(parcel);
            switch (zza.zzbM(zzao)) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    str = zza.zzp(parcel, zzao);
                    break;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    str2 = zza.zzp(parcel, zzao);
                    break;
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    str3 = zza.zzp(parcel, zzao);
                    break;
                case Place.TYPE_AQUARIUM /*4*/:
                    str4 = zza.zzp(parcel, zzao);
                    break;
                case Place.TYPE_ART_GALLERY /*5*/:
                    str5 = zza.zzp(parcel, zzao);
                    break;
                case Place.TYPE_ATM /*6*/:
                    i2 = zza.zzg(parcel, zzao);
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
            return new PlacesParams(i, str, str2, str3, str4, str5, i2);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public PlacesParams[] zzhw(int i) {
        return new PlacesParams[i];
    }
}
