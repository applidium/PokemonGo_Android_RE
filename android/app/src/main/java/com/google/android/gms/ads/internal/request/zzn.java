package com.google.android.gms.ads.internal.request;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import spacemadness.com.lunarconsole.C1401R;

public class zzn implements Creator<StringParcel> {
    static void zza(StringParcel stringParcel, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zzc(parcel, 1, stringParcel.mVersionCode);
        zzb.zza(parcel, 2, stringParcel.zzvY, false);
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzm(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzH(i);
    }

    public StringParcel[] zzH(int i) {
        return new StringParcel[i];
    }

    public StringParcel zzm(Parcel parcel) {
        int zzap = zza.zzap(parcel);
        int i = 0;
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
                default:
                    zza.zzb(parcel, zzao);
                    break;
            }
        }
        if (parcel.dataPosition() == zzap) {
            return new StringParcel(i, str);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }
}
