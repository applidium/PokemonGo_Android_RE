package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.BitmapTeleporter;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.LocationStatusCodes;
import spacemadness.com.lunarconsole.C1401R;

public class zzi implements Creator<PlacePhotoResult> {
    static void zza(PlacePhotoResult placePhotoResult, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zza(parcel, 1, placePhotoResult.getStatus(), i, false);
        zzb.zzc(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, placePhotoResult.mVersionCode);
        zzb.zza(parcel, 2, placePhotoResult.zzaGs, i, false);
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzeQ(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzhm(i);
    }

    public PlacePhotoResult zzeQ(Parcel parcel) {
        Status status = null;
        int zzap = zza.zzap(parcel);
        int i = 0;
        BitmapTeleporter bitmapTeleporter = null;
        while (parcel.dataPosition() < zzap) {
            Status status2;
            BitmapTeleporter bitmapTeleporter2;
            int i2;
            int zzao = zza.zzao(parcel);
            switch (zza.zzbM(zzao)) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    status2 = (Status) zza.zza(parcel, zzao, Status.CREATOR);
                    bitmapTeleporter2 = bitmapTeleporter;
                    i2 = i;
                    break;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    i2 = i;
                    BitmapTeleporter bitmapTeleporter3 = (BitmapTeleporter) zza.zza(parcel, zzao, BitmapTeleporter.CREATOR);
                    status2 = status;
                    bitmapTeleporter2 = bitmapTeleporter3;
                    break;
                case LocationStatusCodes.GEOFENCE_NOT_AVAILABLE /*1000*/:
                    Status status3 = status;
                    bitmapTeleporter2 = bitmapTeleporter;
                    i2 = zza.zzg(parcel, zzao);
                    status2 = status3;
                    break;
                default:
                    zza.zzb(parcel, zzao);
                    status2 = status;
                    bitmapTeleporter2 = bitmapTeleporter;
                    i2 = i;
                    break;
            }
            i = i2;
            bitmapTeleporter = bitmapTeleporter2;
            status = status2;
        }
        if (parcel.dataPosition() == zzap) {
            return new PlacePhotoResult(i, status, bitmapTeleporter);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public PlacePhotoResult[] zzhm(int i) {
        return new PlacePhotoResult[i];
    }
}
