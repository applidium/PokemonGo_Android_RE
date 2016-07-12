package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.LocationStatusCodes;
import spacemadness.com.lunarconsole.C1401R;

public class zzd implements Creator<IdToken> {
    static void zza(IdToken idToken, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zza(parcel, 1, idToken.getAccountType(), false);
        zzb.zzc(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, idToken.mVersionCode);
        zzb.zza(parcel, 2, idToken.getIdToken(), false);
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzH(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzay(i);
    }

    public IdToken zzH(Parcel parcel) {
        String str = null;
        int zzap = zza.zzap(parcel);
        int i = 0;
        String str2 = null;
        while (parcel.dataPosition() < zzap) {
            int zzao = zza.zzao(parcel);
            switch (zza.zzbM(zzao)) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    str2 = zza.zzp(parcel, zzao);
                    break;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    str = zza.zzp(parcel, zzao);
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
            return new IdToken(i, str2, str);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public IdToken[] zzay(int i) {
        return new IdToken[i];
    }
}
