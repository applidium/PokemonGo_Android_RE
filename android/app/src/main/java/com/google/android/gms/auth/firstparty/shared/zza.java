package com.google.android.gms.auth.firstparty.shared;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import spacemadness.com.lunarconsole.C1401R;

public class zza implements Creator<FACLConfig> {
    static void zza(FACLConfig fACLConfig, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zzc(parcel, 1, fACLConfig.version);
        zzb.zza(parcel, 2, fACLConfig.zzTx);
        zzb.zza(parcel, 3, fACLConfig.zzTy, false);
        zzb.zza(parcel, 4, fACLConfig.zzTz);
        zzb.zza(parcel, 5, fACLConfig.zzTA);
        zzb.zza(parcel, 6, fACLConfig.zzTB);
        zzb.zza(parcel, 7, fACLConfig.zzTC);
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzT(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzaK(i);
    }

    public FACLConfig zzT(Parcel parcel) {
        boolean z = false;
        int zzap = com.google.android.gms.common.internal.safeparcel.zza.zzap(parcel);
        String str = null;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        int i = 0;
        while (parcel.dataPosition() < zzap) {
            int zzao = com.google.android.gms.common.internal.safeparcel.zza.zzao(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzbM(zzao)) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzao);
                    break;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    z = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzao);
                    break;
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    str = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, zzao);
                    break;
                case Place.TYPE_AQUARIUM /*4*/:
                    z2 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzao);
                    break;
                case Place.TYPE_ART_GALLERY /*5*/:
                    z3 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzao);
                    break;
                case Place.TYPE_ATM /*6*/:
                    z4 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzao);
                    break;
                case Place.TYPE_BAKERY /*7*/:
                    z5 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzao);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzao);
                    break;
            }
        }
        if (parcel.dataPosition() == zzap) {
            return new FACLConfig(i, z, str, z2, z3, z4, z5);
        }
        throw new com.google.android.gms.common.internal.safeparcel.zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public FACLConfig[] zzaK(int i) {
        return new FACLConfig[i];
    }
}
