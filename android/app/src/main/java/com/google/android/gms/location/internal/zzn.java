package com.google.android.gms.location.internal;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.LocationStatusCodes;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import spacemadness.com.lunarconsole.C1401R;

public class zzn implements Creator<LocationRequestUpdateData> {
    static void zza(LocationRequestUpdateData locationRequestUpdateData, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zzc(parcel, 1, locationRequestUpdateData.zzaFJ);
        zzb.zzc(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, locationRequestUpdateData.getVersionCode());
        zzb.zza(parcel, 2, locationRequestUpdateData.zzaFK, i, false);
        zzb.zza(parcel, 3, locationRequestUpdateData.zzwF(), false);
        zzb.zza(parcel, 4, locationRequestUpdateData.mPendingIntent, i, false);
        zzb.zza(parcel, 5, locationRequestUpdateData.zzwG(), false);
        zzb.zza(parcel, 6, locationRequestUpdateData.zzwH(), false);
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzeI(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzhb(i);
    }

    public LocationRequestUpdateData zzeI(Parcel parcel) {
        LocationRequestInternal locationRequestInternal = null;
        int zzap = zza.zzap(parcel);
        int i = 0;
        int i2 = 1;
        IBinder iBinder = null;
        PendingIntent pendingIntent = null;
        IBinder iBinder2 = null;
        IBinder iBinder3 = null;
        while (parcel.dataPosition() < zzap) {
            int zzao = zza.zzao(parcel);
            switch (zza.zzbM(zzao)) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    i2 = zza.zzg(parcel, zzao);
                    break;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    locationRequestInternal = (LocationRequestInternal) zza.zza(parcel, zzao, LocationRequestInternal.CREATOR);
                    break;
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    iBinder = zza.zzq(parcel, zzao);
                    break;
                case Place.TYPE_AQUARIUM /*4*/:
                    pendingIntent = (PendingIntent) zza.zza(parcel, zzao, PendingIntent.CREATOR);
                    break;
                case Place.TYPE_ART_GALLERY /*5*/:
                    iBinder2 = zza.zzq(parcel, zzao);
                    break;
                case Place.TYPE_ATM /*6*/:
                    iBinder3 = zza.zzq(parcel, zzao);
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
            return new LocationRequestUpdateData(i, i2, locationRequestInternal, iBinder, pendingIntent, iBinder2, iBinder3);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public LocationRequestUpdateData[] zzhb(int i) {
        return new LocationRequestUpdateData[i];
    }
}
