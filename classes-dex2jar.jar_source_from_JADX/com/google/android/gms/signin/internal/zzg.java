package com.google.android.gms.signin.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import spacemadness.com.lunarconsole.C1401R;

public class zzg implements Creator<RecordConsentRequest> {
    static void zza(RecordConsentRequest recordConsentRequest, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zzc(parcel, 1, recordConsentRequest.mVersionCode);
        zzb.zza(parcel, 2, recordConsentRequest.getAccount(), i, false);
        zzb.zza(parcel, 3, recordConsentRequest.zzCj(), i, false);
        zzb.zza(parcel, 4, recordConsentRequest.zzmb(), false);
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzgD(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzjr(i);
    }

    public RecordConsentRequest zzgD(Parcel parcel) {
        Scope[] scopeArr = null;
        int zzap = zza.zzap(parcel);
        int i = 0;
        Account account = null;
        String str = null;
        while (parcel.dataPosition() < zzap) {
            Scope[] scopeArr2;
            String str2;
            int zzg;
            Account account2;
            int zzao = zza.zzao(parcel);
            Account account3;
            switch (zza.zzbM(zzao)) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    account3 = account;
                    scopeArr2 = scopeArr;
                    str2 = str;
                    zzg = zza.zzg(parcel, zzao);
                    account2 = account3;
                    break;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    account2 = (Account) zza.zza(parcel, zzao, Account.CREATOR);
                    scopeArr2 = scopeArr;
                    str2 = str;
                    zzg = i;
                    break;
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    str2 = str;
                    zzg = i;
                    account3 = account;
                    scopeArr2 = (Scope[]) zza.zzb(parcel, zzao, Scope.CREATOR);
                    account2 = account3;
                    break;
                case Place.TYPE_AQUARIUM /*4*/:
                    zzg = i;
                    Scope[] scopeArr3 = scopeArr;
                    str2 = zza.zzp(parcel, zzao);
                    account2 = account;
                    scopeArr2 = scopeArr3;
                    break;
                default:
                    zza.zzb(parcel, zzao);
                    account2 = account;
                    scopeArr2 = scopeArr;
                    str2 = str;
                    zzg = i;
                    break;
            }
            i = zzg;
            str = str2;
            scopeArr = scopeArr2;
            account = account2;
        }
        if (parcel.dataPosition() == zzap) {
            return new RecordConsentRequest(i, account, scopeArr, str);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public RecordConsentRequest[] zzjr(int i) {
        return new RecordConsentRequest[i];
    }
}
