package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.server.converter.StringToIntConverter.Entry;
import java.util.ArrayList;
import spacemadness.com.lunarconsole.C1401R;

public class zzb implements Creator<StringToIntConverter> {
    static void zza(StringToIntConverter stringToIntConverter, Parcel parcel, int i) {
        int zzaq = com.google.android.gms.common.internal.safeparcel.zzb.zzaq(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, stringToIntConverter.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 2, stringToIntConverter.zzpA(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzat(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzbR(i);
    }

    public StringToIntConverter zzat(Parcel parcel) {
        int zzap = zza.zzap(parcel);
        int i = 0;
        ArrayList arrayList = null;
        while (parcel.dataPosition() < zzap) {
            int zzao = zza.zzao(parcel);
            switch (zza.zzbM(zzao)) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    i = zza.zzg(parcel, zzao);
                    break;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    arrayList = zza.zzc(parcel, zzao, Entry.CREATOR);
                    break;
                default:
                    zza.zzb(parcel, zzao);
                    break;
            }
        }
        if (parcel.dataPosition() == zzap) {
            return new StringToIntConverter(i, arrayList);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public StringToIntConverter[] zzbR(int i) {
        return new StringToIntConverter[i];
    }
}
