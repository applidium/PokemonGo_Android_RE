package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import java.util.List;
import spacemadness.com.lunarconsole.C1401R;

public class zzb implements Creator<GestureRequest> {
    static void zza(GestureRequest gestureRequest, Parcel parcel, int i) {
        int zzaq = com.google.android.gms.common.internal.safeparcel.zzb.zzaq(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 1, gestureRequest.zzww(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, gestureRequest.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzeA(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzgO(i);
    }

    public GestureRequest zzeA(Parcel parcel) {
        int zzap = zza.zzap(parcel);
        int i = 0;
        List list = null;
        while (parcel.dataPosition() < zzap) {
            int zzao = zza.zzao(parcel);
            switch (zza.zzbM(zzao)) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    list = zza.zzC(parcel, zzao);
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
            return new GestureRequest(i, list);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public GestureRequest[] zzgO(int i) {
        return new GestureRequest[i];
    }
}
