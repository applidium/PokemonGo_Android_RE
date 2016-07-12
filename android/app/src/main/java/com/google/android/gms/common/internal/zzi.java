package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import com.nianticproject.holoholo.sfida.constants.BluetoothGattSupport;
import spacemadness.com.lunarconsole.C1401R;

public class zzi implements Creator<GetServiceRequest> {
    static void zza(GetServiceRequest getServiceRequest, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zzc(parcel, 1, getServiceRequest.version);
        zzb.zzc(parcel, 2, getServiceRequest.zzafq);
        zzb.zzc(parcel, 3, getServiceRequest.zzafr);
        zzb.zza(parcel, 4, getServiceRequest.zzafs, false);
        zzb.zza(parcel, 5, getServiceRequest.zzaft, false);
        zzb.zza(parcel, 6, getServiceRequest.zzafu, i, false);
        zzb.zza(parcel, 7, getServiceRequest.zzafv, false);
        zzb.zza(parcel, 8, getServiceRequest.zzafw, i, false);
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzak(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzbD(i);
    }

    public GetServiceRequest zzak(Parcel parcel) {
        int i = 0;
        String str = null;
        int zzap = zza.zzap(parcel);
        IBinder iBinder = null;
        Scope[] scopeArr = null;
        Bundle bundle = null;
        Account account = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < zzap) {
            int zzao = zza.zzao(parcel);
            switch (zza.zzbM(zzao)) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    i = zza.zzg(parcel, zzao);
                    break;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    i2 = zza.zzg(parcel, zzao);
                    break;
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    i3 = zza.zzg(parcel, zzao);
                    break;
                case Place.TYPE_AQUARIUM /*4*/:
                    str = zza.zzp(parcel, zzao);
                    break;
                case Place.TYPE_ART_GALLERY /*5*/:
                    iBinder = zza.zzq(parcel, zzao);
                    break;
                case Place.TYPE_ATM /*6*/:
                    scopeArr = (Scope[]) zza.zzb(parcel, zzao, Scope.CREATOR);
                    break;
                case Place.TYPE_BAKERY /*7*/:
                    bundle = zza.zzr(parcel, zzao);
                    break;
                case BluetoothGattSupport.GATT_INSUF_AUTHENTICATION /*8*/:
                    account = (Account) zza.zza(parcel, zzao, Account.CREATOR);
                    break;
                default:
                    zza.zzb(parcel, zzao);
                    break;
            }
        }
        if (parcel.dataPosition() == zzap) {
            return new GetServiceRequest(i, i2, i3, str, iBinder, scopeArr, bundle, account);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public GetServiceRequest[] zzbD(int i) {
        return new GetServiceRequest[i];
    }
}
