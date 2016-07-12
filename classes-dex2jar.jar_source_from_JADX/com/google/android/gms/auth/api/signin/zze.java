package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import java.util.ArrayList;
import spacemadness.com.lunarconsole.C1401R;

public class zze implements Creator<GoogleSignInConfig> {
    static void zza(GoogleSignInConfig googleSignInConfig, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zzc(parcel, 1, googleSignInConfig.versionCode);
        zzb.zzc(parcel, 2, googleSignInConfig.zzlS(), false);
        zzb.zza(parcel, 3, googleSignInConfig.getAccount(), i, false);
        zzb.zza(parcel, 4, googleSignInConfig.zzlY());
        zzb.zza(parcel, 5, googleSignInConfig.zzlZ());
        zzb.zza(parcel, 6, googleSignInConfig.zzma());
        zzb.zza(parcel, 7, googleSignInConfig.zzmb(), false);
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzR(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzaI(i);
    }

    public GoogleSignInConfig zzR(Parcel parcel) {
        ArrayList arrayList = null;
        boolean z = false;
        int zzap = zza.zzap(parcel);
        Account account = null;
        String str = null;
        boolean z2 = false;
        boolean z3 = false;
        int i = 0;
        while (parcel.dataPosition() < zzap) {
            int zzao = zza.zzao(parcel);
            switch (zza.zzbM(zzao)) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    i = zza.zzg(parcel, zzao);
                    break;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    arrayList = zza.zzc(parcel, zzao, Scope.CREATOR);
                    break;
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    account = (Account) zza.zza(parcel, zzao, Account.CREATOR);
                    break;
                case Place.TYPE_AQUARIUM /*4*/:
                    z = zza.zzc(parcel, zzao);
                    break;
                case Place.TYPE_ART_GALLERY /*5*/:
                    z2 = zza.zzc(parcel, zzao);
                    break;
                case Place.TYPE_ATM /*6*/:
                    z3 = zza.zzc(parcel, zzao);
                    break;
                case Place.TYPE_BAKERY /*7*/:
                    str = zza.zzp(parcel, zzao);
                    break;
                default:
                    zza.zzb(parcel, zzao);
                    break;
            }
        }
        if (parcel.dataPosition() == zzap) {
            return new GoogleSignInConfig(i, arrayList, account, z, z2, z3, str);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public GoogleSignInConfig[] zzaI(int i) {
        return new GoogleSignInConfig[i];
    }
}
