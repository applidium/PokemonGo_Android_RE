package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import com.nianticproject.holoholo.sfida.constants.BluetoothGattSupport;
import spacemadness.com.lunarconsole.C1401R;

public class zzc implements Creator<GoogleSignInAccount> {
    static void zza(GoogleSignInAccount googleSignInAccount, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zzc(parcel, 1, googleSignInAccount.versionCode);
        zzb.zza(parcel, 2, googleSignInAccount.getId(), false);
        zzb.zza(parcel, 3, googleSignInAccount.getIdToken(), false);
        zzb.zza(parcel, 4, googleSignInAccount.getEmail(), false);
        zzb.zza(parcel, 5, googleSignInAccount.getDisplayName(), false);
        zzb.zza(parcel, 6, googleSignInAccount.zzlT(), i, false);
        zzb.zza(parcel, 7, googleSignInAccount.zzlU(), false);
        zzb.zza(parcel, 8, googleSignInAccount.zzlV());
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzQ(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzaH(i);
    }

    public GoogleSignInAccount zzQ(Parcel parcel) {
        String str = null;
        int zzap = zza.zzap(parcel);
        int i = 0;
        long j = 0;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        Uri uri = null;
        String str5 = null;
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
                    uri = (Uri) zza.zza(parcel, zzao, Uri.CREATOR);
                    break;
                case Place.TYPE_BAKERY /*7*/:
                    str5 = zza.zzp(parcel, zzao);
                    break;
                case BluetoothGattSupport.GATT_INSUF_AUTHENTICATION /*8*/:
                    j = zza.zzi(parcel, zzao);
                    break;
                default:
                    zza.zzb(parcel, zzao);
                    break;
            }
        }
        if (parcel.dataPosition() == zzap) {
            return new GoogleSignInAccount(i, str, str2, str3, str4, uri, str5, j);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public GoogleSignInAccount[] zzaH(int i) {
        return new GoogleSignInAccount[i];
    }
}
