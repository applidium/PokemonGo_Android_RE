package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import spacemadness.com.lunarconsole.C1401R;

public class zza implements Creator<EmailSignInConfig> {
    static void zza(EmailSignInConfig emailSignInConfig, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zzc(parcel, 1, emailSignInConfig.versionCode);
        zzb.zza(parcel, 2, emailSignInConfig.zzlO(), i, false);
        zzb.zza(parcel, 3, emailSignInConfig.zzlQ(), false);
        zzb.zza(parcel, 4, emailSignInConfig.zzlP(), i, false);
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzO(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzaF(i);
    }

    public EmailSignInConfig zzO(Parcel parcel) {
        String str = null;
        int zzap = com.google.android.gms.common.internal.safeparcel.zza.zzap(parcel);
        int i = 0;
        Uri uri = null;
        Uri uri2 = null;
        while (parcel.dataPosition() < zzap) {
            String str2;
            Uri uri3;
            int zzg;
            Uri uri4;
            int zzao = com.google.android.gms.common.internal.safeparcel.zza.zzao(parcel);
            Uri uri5;
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzbM(zzao)) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    uri5 = uri;
                    str2 = str;
                    uri3 = uri2;
                    zzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzao);
                    uri4 = uri5;
                    break;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    uri4 = (Uri) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzao, Uri.CREATOR);
                    str2 = str;
                    uri3 = uri2;
                    zzg = i;
                    break;
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    uri3 = uri2;
                    zzg = i;
                    uri5 = uri;
                    str2 = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, zzao);
                    uri4 = uri5;
                    break;
                case Place.TYPE_AQUARIUM /*4*/:
                    zzg = i;
                    String str3 = str;
                    uri3 = (Uri) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzao, Uri.CREATOR);
                    uri4 = uri;
                    str2 = str3;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzao);
                    uri4 = uri;
                    str2 = str;
                    uri3 = uri2;
                    zzg = i;
                    break;
            }
            i = zzg;
            uri2 = uri3;
            str = str2;
            uri = uri4;
        }
        if (parcel.dataPosition() == zzap) {
            return new EmailSignInConfig(i, uri, str, uri2);
        }
        throw new com.google.android.gms.common.internal.safeparcel.zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public EmailSignInConfig[] zzaF(int i) {
        return new EmailSignInConfig[i];
    }
}
