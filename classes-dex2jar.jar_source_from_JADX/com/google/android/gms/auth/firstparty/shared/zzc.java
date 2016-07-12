package com.google.android.gms.auth.firstparty.shared;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import com.nianticproject.holoholo.sfida.constants.BluetoothGattSupport;
import java.util.ArrayList;
import java.util.List;
import spacemadness.com.lunarconsole.C1401R;

public class zzc implements Creator<ScopeDetail> {
    static void zza(ScopeDetail scopeDetail, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zzc(parcel, 1, scopeDetail.version);
        zzb.zza(parcel, 2, scopeDetail.description, false);
        zzb.zza(parcel, 3, scopeDetail.zzTH, false);
        zzb.zza(parcel, 4, scopeDetail.zzTI, false);
        zzb.zza(parcel, 5, scopeDetail.zzTJ, false);
        zzb.zza(parcel, 6, scopeDetail.zzTK, false);
        zzb.zzb(parcel, 7, scopeDetail.zzTL, false);
        zzb.zza(parcel, 8, scopeDetail.zzTM, i, false);
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzV(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzaM(i);
    }

    public ScopeDetail zzV(Parcel parcel) {
        String str = null;
        int zzap = zza.zzap(parcel);
        int i = 0;
        List arrayList = new ArrayList();
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        FACLData fACLData = null;
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
                    str2 = zza.zzp(parcel, zzao);
                    break;
                case Place.TYPE_AQUARIUM /*4*/:
                    str3 = zza.zzp(parcel, zzao);
                    break;
                case Place.TYPE_ART_GALLERY /*5*/:
                    str4 = zza.zzp(parcel, zzao);
                    break;
                case Place.TYPE_ATM /*6*/:
                    str5 = zza.zzp(parcel, zzao);
                    break;
                case Place.TYPE_BAKERY /*7*/:
                    arrayList = zza.zzD(parcel, zzao);
                    break;
                case BluetoothGattSupport.GATT_INSUF_AUTHENTICATION /*8*/:
                    fACLData = (FACLData) zza.zza(parcel, zzao, FACLData.CREATOR);
                    break;
                default:
                    zza.zzb(parcel, zzao);
                    break;
            }
        }
        if (parcel.dataPosition() == zzap) {
            return new ScopeDetail(i, str, str2, str3, str4, str5, arrayList, fACLData);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public ScopeDetail[] zzaM(int i) {
        return new ScopeDetail[i];
    }
}
