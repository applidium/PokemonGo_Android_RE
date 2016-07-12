package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.server.response.FastJsonResponse.Field;
import com.google.android.gms.common.server.response.FieldMappingDictionary.FieldMapPair;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import spacemadness.com.lunarconsole.C1401R;

public class zzb implements Creator<FieldMapPair> {
    static void zza(FieldMapPair fieldMapPair, Parcel parcel, int i) {
        int zzaq = com.google.android.gms.common.internal.safeparcel.zzb.zzaq(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, fieldMapPair.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, fieldMapPair.key, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, fieldMapPair.zzahi, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzaw(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzbU(i);
    }

    public FieldMapPair zzaw(Parcel parcel) {
        Field field = null;
        int zzap = zza.zzap(parcel);
        int i = 0;
        String str = null;
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
                    field = (Field) zza.zza(parcel, zzao, Field.CREATOR);
                    break;
                default:
                    zza.zzb(parcel, zzao);
                    break;
            }
        }
        if (parcel.dataPosition() == zzap) {
            return new FieldMapPair(i, str, field);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public FieldMapPair[] zzbU(int i) {
        return new FieldMapPair[i];
    }
}
