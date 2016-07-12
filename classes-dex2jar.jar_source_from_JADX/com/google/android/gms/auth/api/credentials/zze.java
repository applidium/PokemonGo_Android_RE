package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.LocationStatusCodes;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import java.util.List;
import spacemadness.com.lunarconsole.C1401R;

public class zze implements Creator<PasswordSpecification> {
    static void zza(PasswordSpecification passwordSpecification, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zza(parcel, 1, passwordSpecification.zzSv, false);
        zzb.zzc(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, passwordSpecification.mVersionCode);
        zzb.zzb(parcel, 2, passwordSpecification.zzSw, false);
        zzb.zza(parcel, 3, passwordSpecification.zzSx, false);
        zzb.zzc(parcel, 4, passwordSpecification.zzSy);
        zzb.zzc(parcel, 5, passwordSpecification.zzSz);
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzI(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzaz(i);
    }

    public PasswordSpecification zzI(Parcel parcel) {
        String str = null;
        int i = 0;
        int zzap = zza.zzap(parcel);
        List list = null;
        List list2 = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < zzap) {
            int zzao = zza.zzao(parcel);
            switch (zza.zzbM(zzao)) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    str = zza.zzp(parcel, zzao);
                    break;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    list = zza.zzD(parcel, zzao);
                    break;
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    list2 = zza.zzC(parcel, zzao);
                    break;
                case Place.TYPE_AQUARIUM /*4*/:
                    i2 = zza.zzg(parcel, zzao);
                    break;
                case Place.TYPE_ART_GALLERY /*5*/:
                    i3 = zza.zzg(parcel, zzao);
                    break;
                case LocationStatusCodes.GEOFENCE_NOT_AVAILABLE /*1000*/:
                    i = zza.zzg(parcel, zzao);
                    break;
                default:
                    zza.zzb(parcel, zzao);
                    break;
            }
        }
        if (parcel.dataPosition() == zzap) {
            return new PasswordSpecification(i, str, list, list2, i2, i3);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public PasswordSpecification[] zzaz(int i) {
        return new PasswordSpecification[i];
    }
}
