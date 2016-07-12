package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import spacemadness.com.lunarconsole.C1401R;

public class zzy implements Creator<ResolveAccountRequest> {
    static void zza(ResolveAccountRequest resolveAccountRequest, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zzc(parcel, 1, resolveAccountRequest.mVersionCode);
        zzb.zza(parcel, 2, resolveAccountRequest.getAccount(), i, false);
        zzb.zzc(parcel, 3, resolveAccountRequest.getSessionId());
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzal(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzbJ(i);
    }

    public ResolveAccountRequest zzal(Parcel parcel) {
        int i = 0;
        int zzap = zza.zzap(parcel);
        Account account = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzap) {
            int zzao = zza.zzao(parcel);
            switch (zza.zzbM(zzao)) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    i = zza.zzg(parcel, zzao);
                    break;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    account = (Account) zza.zza(parcel, zzao, Account.CREATOR);
                    break;
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    i2 = zza.zzg(parcel, zzao);
                    break;
                default:
                    zza.zzb(parcel, zzao);
                    break;
            }
        }
        if (parcel.dataPosition() == zzap) {
            return new ResolveAccountRequest(i, account, i2);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public ResolveAccountRequest[] zzbJ(int i) {
        return new ResolveAccountRequest[i];
    }
}
