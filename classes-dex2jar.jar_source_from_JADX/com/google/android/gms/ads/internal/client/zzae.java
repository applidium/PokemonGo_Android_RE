package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import com.nianticproject.holoholo.sfida.constants.BluetoothGattSupport;
import com.upsight.android.internal.persistence.subscription.Subscriptions;
import spacemadness.com.lunarconsole.C1401R;

public class zzae implements Creator<SearchAdRequestParcel> {
    static void zza(SearchAdRequestParcel searchAdRequestParcel, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zzc(parcel, 1, searchAdRequestParcel.versionCode);
        zzb.zzc(parcel, 2, searchAdRequestParcel.zztP);
        zzb.zzc(parcel, 3, searchAdRequestParcel.backgroundColor);
        zzb.zzc(parcel, 4, searchAdRequestParcel.zztQ);
        zzb.zzc(parcel, 5, searchAdRequestParcel.zztR);
        zzb.zzc(parcel, 6, searchAdRequestParcel.zztS);
        zzb.zzc(parcel, 7, searchAdRequestParcel.zztT);
        zzb.zzc(parcel, 8, searchAdRequestParcel.zztU);
        zzb.zzc(parcel, 9, searchAdRequestParcel.zztV);
        zzb.zza(parcel, 10, searchAdRequestParcel.zztW, false);
        zzb.zzc(parcel, 11, searchAdRequestParcel.zztX);
        zzb.zza(parcel, 12, searchAdRequestParcel.zztY, false);
        zzb.zzc(parcel, 13, searchAdRequestParcel.zztZ);
        zzb.zzc(parcel, 14, searchAdRequestParcel.zzua);
        zzb.zza(parcel, 15, searchAdRequestParcel.zzub, false);
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzd(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzn(i);
    }

    public SearchAdRequestParcel zzd(Parcel parcel) {
        int zzap = zza.zzap(parcel);
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        String str = null;
        int i10 = 0;
        String str2 = null;
        int i11 = 0;
        int i12 = 0;
        String str3 = null;
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
                    i4 = zza.zzg(parcel, zzao);
                    break;
                case Place.TYPE_ART_GALLERY /*5*/:
                    i5 = zza.zzg(parcel, zzao);
                    break;
                case Place.TYPE_ATM /*6*/:
                    i6 = zza.zzg(parcel, zzao);
                    break;
                case Place.TYPE_BAKERY /*7*/:
                    i7 = zza.zzg(parcel, zzao);
                    break;
                case BluetoothGattSupport.GATT_INSUF_AUTHENTICATION /*8*/:
                    i8 = zza.zzg(parcel, zzao);
                    break;
                case Place.TYPE_BAR /*9*/:
                    i9 = zza.zzg(parcel, zzao);
                    break;
                case Subscriptions.MAX_QUEUE_LENGTH /*10*/:
                    str = zza.zzp(parcel, zzao);
                    break;
                case Place.TYPE_BICYCLE_STORE /*11*/:
                    i10 = zza.zzg(parcel, zzao);
                    break;
                case Place.TYPE_BOOK_STORE /*12*/:
                    str2 = zza.zzp(parcel, zzao);
                    break;
                case Place.TYPE_BOWLING_ALLEY /*13*/:
                    i11 = zza.zzg(parcel, zzao);
                    break;
                case Place.TYPE_BUS_STATION /*14*/:
                    i12 = zza.zzg(parcel, zzao);
                    break;
                case Place.TYPE_CAFE /*15*/:
                    str3 = zza.zzp(parcel, zzao);
                    break;
                default:
                    zza.zzb(parcel, zzao);
                    break;
            }
        }
        if (parcel.dataPosition() == zzap) {
            return new SearchAdRequestParcel(i, i2, i3, i4, i5, i6, i7, i8, i9, str, i10, str2, i11, i12, str3);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public SearchAdRequestParcel[] zzn(int i) {
        return new SearchAdRequestParcel[i];
    }
}
