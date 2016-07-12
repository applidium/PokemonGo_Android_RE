package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.LocationStatusCodes;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import spacemadness.com.lunarconsole.C1401R;

public class zzd implements Creator<Status> {
    static void zza(Status status, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zzc(parcel, 1, status.getStatusCode());
        zzb.zzc(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, status.getVersionCode());
        zzb.zza(parcel, 2, status.getStatusMessage(), false);
        zzb.zza(parcel, 3, status.zznH(), i, false);
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzae(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzbm(i);
    }

    public Status zzae(Parcel parcel) {
        PendingIntent pendingIntent = null;
        int zzap = zza.zzap(parcel);
        int i = 0;
        int i2 = 0;
        String str = null;
        while (parcel.dataPosition() < zzap) {
            int zzao = zza.zzao(parcel);
            switch (zza.zzbM(zzao)) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    i = zza.zzg(parcel, zzao);
                    break;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    str = zza.zzp(parcel, zzao);
                    break;
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    pendingIntent = (PendingIntent) zza.zza(parcel, zzao, PendingIntent.CREATOR);
                    break;
                case LocationStatusCodes.GEOFENCE_NOT_AVAILABLE /*1000*/:
                    i2 = zza.zzg(parcel, zzao);
                    break;
                default:
                    zza.zzb(parcel, zzao);
                    break;
            }
        }
        if (parcel.dataPosition() == zzap) {
            return new Status(i2, i, str, pendingIntent);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public Status[] zzbm(int i) {
        return new Status[i];
    }
}
