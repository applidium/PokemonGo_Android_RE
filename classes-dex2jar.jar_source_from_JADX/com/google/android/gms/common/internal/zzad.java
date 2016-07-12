package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import spacemadness.com.lunarconsole.C1401R;

public class zzad implements Creator<ValidateAccountRequest> {
    static void zza(ValidateAccountRequest validateAccountRequest, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zzc(parcel, 1, validateAccountRequest.mVersionCode);
        zzb.zzc(parcel, 2, validateAccountRequest.zzpu());
        zzb.zza(parcel, 3, validateAccountRequest.zzaeH, false);
        zzb.zza(parcel, 4, validateAccountRequest.zzpv(), i, false);
        zzb.zza(parcel, 5, validateAccountRequest.zzpw(), false);
        zzb.zza(parcel, 6, validateAccountRequest.getCallingPackage(), false);
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzan(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzbL(i);
    }

    public ValidateAccountRequest zzan(Parcel parcel) {
        int i = 0;
        IBinder iBinder = null;
        int zzap = zza.zzap(parcel);
        Scope[] scopeArr = null;
        Bundle bundle = null;
        String str = null;
        int i2 = 0;
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
                    iBinder = zza.zzq(parcel, zzao);
                    break;
                case Place.TYPE_AQUARIUM /*4*/:
                    scopeArr = (Scope[]) zza.zzb(parcel, zzao, Scope.CREATOR);
                    break;
                case Place.TYPE_ART_GALLERY /*5*/:
                    bundle = zza.zzr(parcel, zzao);
                    break;
                case Place.TYPE_ATM /*6*/:
                    str = zza.zzp(parcel, zzao);
                    break;
                default:
                    zza.zzb(parcel, zzao);
                    break;
            }
        }
        if (parcel.dataPosition() == zzap) {
            return new ValidateAccountRequest(i, i2, iBinder, scopeArr, bundle, str);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public ValidateAccountRequest[] zzbL(int i) {
        return new ValidateAccountRequest[i];
    }
}
