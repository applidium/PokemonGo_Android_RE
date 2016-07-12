package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.location.LocationStatusCodes;
import spacemadness.com.lunarconsole.C1401R;

public class zzb implements Creator<CredentialPickerConfig> {
    static void zza(CredentialPickerConfig credentialPickerConfig, Parcel parcel, int i) {
        int zzaq = com.google.android.gms.common.internal.safeparcel.zzb.zzaq(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 1, credentialPickerConfig.shouldShowAddAccountButton());
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, credentialPickerConfig.mVersionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, credentialPickerConfig.shouldShowCancelButton());
        com.google.android.gms.common.internal.safeparcel.zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzF(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzaw(i);
    }

    public CredentialPickerConfig zzF(Parcel parcel) {
        boolean z = false;
        int zzap = zza.zzap(parcel);
        boolean z2 = false;
        int i = 0;
        while (parcel.dataPosition() < zzap) {
            int zzao = zza.zzao(parcel);
            switch (zza.zzbM(zzao)) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    z2 = zza.zzc(parcel, zzao);
                    break;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    z = zza.zzc(parcel, zzao);
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
            return new CredentialPickerConfig(i, z2, z);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public CredentialPickerConfig[] zzaw(int i) {
        return new CredentialPickerConfig[i];
    }
}
