package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.server.response.FieldMappingDictionary.Entry;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import java.util.ArrayList;
import spacemadness.com.lunarconsole.C1401R;

public class zzc implements Creator<FieldMappingDictionary> {
    static void zza(FieldMappingDictionary fieldMappingDictionary, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zzc(parcel, 1, fieldMappingDictionary.getVersionCode());
        zzb.zzc(parcel, 2, fieldMappingDictionary.zzpS(), false);
        zzb.zza(parcel, 3, fieldMappingDictionary.zzpT(), false);
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzax(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzbV(i);
    }

    public FieldMappingDictionary zzax(Parcel parcel) {
        String str = null;
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
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    str = zza.zzp(parcel, zzao);
                    break;
                default:
                    zza.zzb(parcel, zzao);
                    break;
            }
        }
        if (parcel.dataPosition() == zzap) {
            return new FieldMappingDictionary(i, arrayList, str);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public FieldMappingDictionary[] zzbV(int i) {
        return new FieldMappingDictionary[i];
    }
}
