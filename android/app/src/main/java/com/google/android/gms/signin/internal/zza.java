package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import spacemadness.com.lunarconsole.C1401R;

public class zza implements Creator<AuthAccountResult> {
    static void zza(AuthAccountResult authAccountResult, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zzc(parcel, 1, authAccountResult.mVersionCode);
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzgB(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzjo(i);
    }

    public AuthAccountResult zzgB(Parcel parcel) {
        int zzap = com.google.android.gms.common.internal.safeparcel.zza.zzap(parcel);
        int i = 0;
        while (parcel.dataPosition() < zzap) {
            int zzao = com.google.android.gms.common.internal.safeparcel.zza.zzao(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzbM(zzao)) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzao);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzao);
                    break;
            }
        }
        if (parcel.dataPosition() == zzap) {
            return new AuthAccountResult(i);
        }
        throw new com.google.android.gms.common.internal.safeparcel.zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public AuthAccountResult[] zzjo(int i) {
        return new AuthAccountResult[i];
    }
}
