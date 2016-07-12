package com.google.android.gms.location.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.LocationStatusCodes;
import spacemadness.com.lunarconsole.C1401R;

public class zzc implements Creator<ClientIdentity> {
    static void zza(ClientIdentity clientIdentity, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zzc(parcel, 1, clientIdentity.uid);
        zzb.zzc(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, clientIdentity.getVersionCode());
        zzb.zza(parcel, 2, clientIdentity.packageName, false);
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzeF(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzgX(i);
    }

    public ClientIdentity zzeF(Parcel parcel) {
        int i = 0;
        int zzap = zza.zzap(parcel);
        String str = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzap) {
            int zzao = zza.zzao(parcel);
            switch (zza.zzbM(zzao)) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    i = zza.zzg(parcel, zzao);
                    break;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    str = zza.zzp(parcel, zzao);
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
            return new ClientIdentity(i2, i, str);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public ClientIdentity[] zzgX(int i) {
        return new ClientIdentity[i];
    }
}
