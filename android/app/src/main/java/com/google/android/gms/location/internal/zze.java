package com.google.android.gms.location.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.LocationStatusCodes;
import spacemadness.com.lunarconsole.C1401R;

public class zze implements Creator<FusedLocationProviderResult> {
    static void zza(FusedLocationProviderResult fusedLocationProviderResult, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zza(parcel, 1, fusedLocationProviderResult.getStatus(), i, false);
        zzb.zzc(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, fusedLocationProviderResult.getVersionCode());
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzeG(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzgY(i);
    }

    public FusedLocationProviderResult zzeG(Parcel parcel) {
        int zzap = zza.zzap(parcel);
        int i = 0;
        Status status = null;
        while (parcel.dataPosition() < zzap) {
            int zzao = zza.zzao(parcel);
            switch (zza.zzbM(zzao)) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    status = (Status) zza.zza(parcel, zzao, Status.CREATOR);
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
            return new FusedLocationProviderResult(i, status);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public FusedLocationProviderResult[] zzgY(int i) {
        return new FusedLocationProviderResult[i];
    }
}
