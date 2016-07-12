package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.LocationStatusCodes;
import spacemadness.com.lunarconsole.C1401R;

public class zzh implements Creator<PlacePhotoMetadataResult> {
    static void zza(PlacePhotoMetadataResult placePhotoMetadataResult, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zza(parcel, 1, placePhotoMetadataResult.getStatus(), i, false);
        zzb.zzc(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, placePhotoMetadataResult.mVersionCode);
        zzb.zza(parcel, 2, placePhotoMetadataResult.zzaGq, i, false);
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzeP(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzhl(i);
    }

    public PlacePhotoMetadataResult zzeP(Parcel parcel) {
        DataHolder dataHolder = null;
        int zzap = zza.zzap(parcel);
        int i = 0;
        Status status = null;
        while (parcel.dataPosition() < zzap) {
            Status status2;
            DataHolder dataHolder2;
            int i2;
            int zzao = zza.zzao(parcel);
            switch (zza.zzbM(zzao)) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    status2 = (Status) zza.zza(parcel, zzao, Status.CREATOR);
                    dataHolder2 = dataHolder;
                    i2 = i;
                    break;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    i2 = i;
                    DataHolder dataHolder3 = (DataHolder) zza.zza(parcel, zzao, DataHolder.CREATOR);
                    status2 = status;
                    dataHolder2 = dataHolder3;
                    break;
                case LocationStatusCodes.GEOFENCE_NOT_AVAILABLE /*1000*/:
                    Status status3 = status;
                    dataHolder2 = dataHolder;
                    i2 = zza.zzg(parcel, zzao);
                    status2 = status3;
                    break;
                default:
                    zza.zzb(parcel, zzao);
                    status2 = status;
                    dataHolder2 = dataHolder;
                    i2 = i;
                    break;
            }
            i = i2;
            dataHolder = dataHolder2;
            status = status2;
        }
        if (parcel.dataPosition() == zzap) {
            return new PlacePhotoMetadataResult(i, status, dataHolder);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public PlacePhotoMetadataResult[] zzhl(int i) {
        return new PlacePhotoMetadataResult[i];
    }
}
