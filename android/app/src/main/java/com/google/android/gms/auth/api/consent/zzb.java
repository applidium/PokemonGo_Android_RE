package com.google.android.gms.auth.api.consent;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.auth.firstparty.shared.ScopeDetail;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import com.nianticproject.holoholo.sfida.constants.BluetoothGattSupport;
import spacemadness.com.lunarconsole.C1401R;

public class zzb implements Creator<GetConsentIntentRequest> {
    static void zza(GetConsentIntentRequest getConsentIntentRequest, Parcel parcel, int i) {
        int zzaq = com.google.android.gms.common.internal.safeparcel.zzb.zzaq(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, getConsentIntentRequest.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, getConsentIntentRequest.getCallingPackage(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 3, getConsentIntentRequest.getCallingUid());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, getConsentIntentRequest.zzlF(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, getConsentIntentRequest.getAccount(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 6, getConsentIntentRequest.zzSe, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 7, getConsentIntentRequest.zzlG());
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 8, getConsentIntentRequest.zzlH());
        com.google.android.gms.common.internal.safeparcel.zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzD(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzau(i);
    }

    public GetConsentIntentRequest zzD(Parcel parcel) {
        String str = null;
        boolean z = false;
        int zzap = zza.zzap(parcel);
        String str2 = null;
        Account account = null;
        ScopeDetail[] scopeDetailArr = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
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
                    i2 = zza.zzg(parcel, zzao);
                    break;
                case Place.TYPE_AQUARIUM /*4*/:
                    str2 = zza.zzp(parcel, zzao);
                    break;
                case Place.TYPE_ART_GALLERY /*5*/:
                    account = (Account) zza.zza(parcel, zzao, Account.CREATOR);
                    break;
                case Place.TYPE_ATM /*6*/:
                    scopeDetailArr = (ScopeDetail[]) zza.zzb(parcel, zzao, ScopeDetail.CREATOR);
                    break;
                case Place.TYPE_BAKERY /*7*/:
                    z = zza.zzc(parcel, zzao);
                    break;
                case BluetoothGattSupport.GATT_INSUF_AUTHENTICATION /*8*/:
                    i3 = zza.zzg(parcel, zzao);
                    break;
                default:
                    zza.zzb(parcel, zzao);
                    break;
            }
        }
        if (parcel.dataPosition() == zzap) {
            return new GetConsentIntentRequest(i, str, i2, str2, account, scopeDetailArr, z, i3);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public GetConsentIntentRequest[] zzau(int i) {
        return new GetConsentIntentRequest[i];
    }
}
