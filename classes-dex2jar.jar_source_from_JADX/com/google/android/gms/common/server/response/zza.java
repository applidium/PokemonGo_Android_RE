package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.server.converter.ConverterWrapper;
import com.google.android.gms.common.server.response.FastJsonResponse.Field;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import com.nianticproject.holoholo.sfida.constants.BluetoothGattSupport;
import spacemadness.com.lunarconsole.C1401R;

public class zza implements Creator<Field> {
    static void zza(Field field, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zzc(parcel, 1, field.getVersionCode());
        zzb.zzc(parcel, 2, field.zzpB());
        zzb.zza(parcel, 3, field.zzpH());
        zzb.zzc(parcel, 4, field.zzpC());
        zzb.zza(parcel, 5, field.zzpI());
        zzb.zza(parcel, 6, field.zzpJ(), false);
        zzb.zzc(parcel, 7, field.zzpK());
        zzb.zza(parcel, 8, field.zzpM(), false);
        zzb.zza(parcel, 9, field.zzpO(), i, false);
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzav(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzbT(i);
    }

    public Field zzav(Parcel parcel) {
        String str = null;
        boolean z = false;
        int zzap = com.google.android.gms.common.internal.safeparcel.zza.zzap(parcel);
        String str2 = null;
        ConverterWrapper converterWrapper = null;
        boolean z2 = false;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (parcel.dataPosition() < zzap) {
            int zzao = com.google.android.gms.common.internal.safeparcel.zza.zzao(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzbM(zzao)) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzao);
                    break;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    i2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzao);
                    break;
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    z = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzao);
                    break;
                case Place.TYPE_AQUARIUM /*4*/:
                    i3 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzao);
                    break;
                case Place.TYPE_ART_GALLERY /*5*/:
                    z2 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzao);
                    break;
                case Place.TYPE_ATM /*6*/:
                    str = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, zzao);
                    break;
                case Place.TYPE_BAKERY /*7*/:
                    i4 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzao);
                    break;
                case BluetoothGattSupport.GATT_INSUF_AUTHENTICATION /*8*/:
                    str2 = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, zzao);
                    break;
                case Place.TYPE_BAR /*9*/:
                    converterWrapper = (ConverterWrapper) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzao, ConverterWrapper.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzao);
                    break;
            }
        }
        if (parcel.dataPosition() == zzap) {
            return new Field(i, i2, z, i3, z2, str, i4, str2, converterWrapper);
        }
        throw new com.google.android.gms.common.internal.safeparcel.zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public Field[] zzbT(int i) {
        return new Field[i];
    }
}
