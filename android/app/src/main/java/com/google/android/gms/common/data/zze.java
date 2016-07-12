package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.LocationStatusCodes;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import spacemadness.com.lunarconsole.C1401R;

public class zze implements Creator<DataHolder> {
    static void zza(DataHolder dataHolder, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zza(parcel, 1, dataHolder.zzow(), false);
        zzb.zzc(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, dataHolder.getVersionCode());
        zzb.zza(parcel, 2, dataHolder.zzox(), i, false);
        zzb.zzc(parcel, 3, dataHolder.getStatusCode());
        zzb.zza(parcel, 4, dataHolder.zzor(), false);
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzag(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzbv(i);
    }

    public DataHolder zzag(Parcel parcel) {
        int i = 0;
        String[] strArr = null;
        int zzap = zza.zzap(parcel);
        CursorWindow[] cursorWindowArr = null;
        Bundle bundle = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzap) {
            int zzao = zza.zzao(parcel);
            switch (zza.zzbM(zzao)) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    strArr = zza.zzB(parcel, zzao);
                    break;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    cursorWindowArr = (CursorWindow[]) zza.zzb(parcel, zzao, CursorWindow.CREATOR);
                    break;
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    i2 = zza.zzg(parcel, zzao);
                    break;
                case Place.TYPE_AQUARIUM /*4*/:
                    bundle = zza.zzr(parcel, zzao);
                    break;
                case LocationStatusCodes.GEOFENCE_NOT_AVAILABLE /*1000*/:
                    i = zza.zzg(parcel, zzao);
                    break;
                default:
                    zza.zzb(parcel, zzao);
                    break;
            }
        }
        if (parcel.dataPosition() != zzap) {
            throw new zza.zza("Overread allowed size end=" + zzap, parcel);
        }
        DataHolder dataHolder = new DataHolder(i, strArr, cursorWindowArr, i2, bundle);
        dataHolder.zzov();
        return dataHolder;
    }

    public DataHolder[] zzbv(int i) {
        return new DataHolder[i];
    }
}
