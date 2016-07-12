package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import java.util.List;
import spacemadness.com.lunarconsole.C1401R;

public class zzd implements Creator<TokenData> {
    static void zza(TokenData tokenData, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zzc(parcel, 1, tokenData.mVersionCode);
        zzb.zza(parcel, 2, tokenData.getToken(), false);
        zzb.zza(parcel, 3, tokenData.zzlA(), false);
        zzb.zza(parcel, 4, tokenData.zzlB());
        zzb.zza(parcel, 5, tokenData.zzlC());
        zzb.zzb(parcel, 6, tokenData.zzlD(), false);
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzC(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzat(i);
    }

    public TokenData zzC(Parcel parcel) {
        String str = null;
        boolean z = false;
        int zzap = zza.zzap(parcel);
        Long l = null;
        List list = null;
        boolean z2 = false;
        int i = 0;
        while (parcel.dataPosition() < zzap) {
            int zzao = zza.zzao(parcel);
            switch (zza.zzbM(zzao)) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    i = zza.zzg(parcel, zzao);
                    break;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    str = zza.zzp(parcel, zzao);
                    break;
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    l = zza.zzj(parcel, zzao);
                    break;
                case Place.TYPE_AQUARIUM /*4*/:
                    z = zza.zzc(parcel, zzao);
                    break;
                case Place.TYPE_ART_GALLERY /*5*/:
                    z2 = zza.zzc(parcel, zzao);
                    break;
                case Place.TYPE_ATM /*6*/:
                    list = zza.zzD(parcel, zzao);
                    break;
                default:
                    zza.zzb(parcel, zzao);
                    break;
            }
        }
        if (parcel.dataPosition() == zzap) {
            return new TokenData(i, str, l, z, z2, list);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public TokenData[] zzat(int i) {
        return new TokenData[i];
    }
}
