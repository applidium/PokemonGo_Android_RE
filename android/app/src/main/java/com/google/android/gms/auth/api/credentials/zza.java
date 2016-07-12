package com.google.android.gms.auth.api.credentials;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.LocationStatusCodes;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import com.nianticproject.holoholo.sfida.constants.BluetoothGattSupport;
import java.util.List;
import spacemadness.com.lunarconsole.C1401R;

public class zza implements Creator<Credential> {
    static void zza(Credential credential, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zza(parcel, 1, credential.getId(), false);
        zzb.zzc(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, credential.mVersionCode);
        zzb.zza(parcel, 2, credential.getName(), false);
        zzb.zza(parcel, 3, credential.getProfilePictureUri(), i, false);
        zzb.zzc(parcel, 4, credential.getIdTokens(), false);
        zzb.zza(parcel, 5, credential.getPassword(), false);
        zzb.zza(parcel, 6, credential.getAccountType(), false);
        zzb.zza(parcel, 7, credential.getGeneratedPassword(), false);
        zzb.zza(parcel, 8, credential.zzlI(), false);
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzE(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzav(i);
    }

    public Credential zzE(Parcel parcel) {
        String str = null;
        int zzap = com.google.android.gms.common.internal.safeparcel.zza.zzap(parcel);
        int i = 0;
        String str2 = null;
        Uri uri = null;
        List list = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        while (parcel.dataPosition() < zzap) {
            int zzao = com.google.android.gms.common.internal.safeparcel.zza.zzao(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzbM(zzao)) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    str = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, zzao);
                    break;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    str2 = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, zzao);
                    break;
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    uri = (Uri) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzao, Uri.CREATOR);
                    break;
                case Place.TYPE_AQUARIUM /*4*/:
                    list = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzao, IdToken.CREATOR);
                    break;
                case Place.TYPE_ART_GALLERY /*5*/:
                    str3 = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, zzao);
                    break;
                case Place.TYPE_ATM /*6*/:
                    str4 = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, zzao);
                    break;
                case Place.TYPE_BAKERY /*7*/:
                    str5 = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, zzao);
                    break;
                case BluetoothGattSupport.GATT_INSUF_AUTHENTICATION /*8*/:
                    str6 = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, zzao);
                    break;
                case LocationStatusCodes.GEOFENCE_NOT_AVAILABLE /*1000*/:
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzao);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzao);
                    break;
            }
        }
        if (parcel.dataPosition() == zzap) {
            return new Credential(i, str, str2, uri, list, str3, str4, str5, str6);
        }
        throw new com.google.android.gms.common.internal.safeparcel.zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public Credential[] zzav(int i) {
        return new Credential[i];
    }
}
