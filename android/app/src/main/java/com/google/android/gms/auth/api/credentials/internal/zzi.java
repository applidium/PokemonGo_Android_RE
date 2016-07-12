package com.google.android.gms.auth.api.credentials.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.LocationStatusCodes;
import spacemadness.com.lunarconsole.C1401R;

public class zzi implements Creator<SaveRequest> {
    static void zza(SaveRequest saveRequest, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zza(parcel, 1, saveRequest.getCredential(), i, false);
        zzb.zzc(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, saveRequest.mVersionCode);
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzK(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzaB(i);
    }

    public SaveRequest zzK(Parcel parcel) {
        int zzap = zza.zzap(parcel);
        int i = 0;
        Credential credential = null;
        while (parcel.dataPosition() < zzap) {
            int zzao = zza.zzao(parcel);
            switch (zza.zzbM(zzao)) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    credential = (Credential) zza.zza(parcel, zzao, Credential.CREATOR);
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
            return new SaveRequest(i, credential);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public SaveRequest[] zzaB(int i) {
        return new SaveRequest[i];
    }
}
