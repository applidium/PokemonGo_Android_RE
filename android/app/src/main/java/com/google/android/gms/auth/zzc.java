package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.List;
import spacemadness.com.lunarconsole.C1401R;

public class zzc implements Creator<AccountChangeEventsResponse> {
    static void zza(AccountChangeEventsResponse accountChangeEventsResponse, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zzc(parcel, 1, accountChangeEventsResponse.mVersion);
        zzb.zzc(parcel, 2, accountChangeEventsResponse.zzoQ, false);
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzB(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzas(i);
    }

    public AccountChangeEventsResponse zzB(Parcel parcel) {
        int zzap = zza.zzap(parcel);
        int i = 0;
        List list = null;
        while (parcel.dataPosition() < zzap) {
            int zzao = zza.zzao(parcel);
            switch (zza.zzbM(zzao)) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    i = zza.zzg(parcel, zzao);
                    break;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    list = zza.zzc(parcel, zzao, AccountChangeEvent.CREATOR);
                    break;
                default:
                    zza.zzb(parcel, zzao);
                    break;
            }
        }
        if (parcel.dataPosition() == zzap) {
            return new AccountChangeEventsResponse(i, list);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public AccountChangeEventsResponse[] zzas(int i) {
        return new AccountChangeEventsResponse[i];
    }
}
