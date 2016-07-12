package com.google.android.gms.location.places.personalized;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.location.LocationStatusCodes;
import com.google.android.gms.location.places.personalized.HereContent.Action;
import java.util.List;
import spacemadness.com.lunarconsole.C1401R;

public class zzb implements Creator<HereContent> {
    static void zza(HereContent hereContent, Parcel parcel, int i) {
        int zzaq = com.google.android.gms.common.internal.safeparcel.zzb.zzaq(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 1, hereContent.getData(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, hereContent.mVersionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 2, hereContent.getActions(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzfb(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzhz(i);
    }

    public HereContent zzfb(Parcel parcel) {
        List list = null;
        int zzap = zza.zzap(parcel);
        int i = 0;
        String str = null;
        while (parcel.dataPosition() < zzap) {
            int zzao = zza.zzao(parcel);
            switch (zza.zzbM(zzao)) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    str = zza.zzp(parcel, zzao);
                    break;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    list = zza.zzc(parcel, zzao, Action.CREATOR);
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
            return new HereContent(i, str, list);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public HereContent[] zzhz(int i) {
        return new HereContent[i];
    }
}
