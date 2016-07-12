package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.LocationStatusCodes;
import java.util.Collection;
import spacemadness.com.lunarconsole.C1401R;

public class zzc implements Creator<AutocompleteFilter> {
    static void zza(AutocompleteFilter autocompleteFilter, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zza(parcel, 1, autocompleteFilter.zzwM());
        zzb.zzc(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, autocompleteFilter.mVersionCode);
        zzb.zza(parcel, 2, autocompleteFilter.zzaFX, false);
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzeL(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzhg(i);
    }

    public AutocompleteFilter zzeL(Parcel parcel) {
        boolean z = false;
        int zzap = zza.zzap(parcel);
        Collection collection = null;
        int i = 0;
        while (parcel.dataPosition() < zzap) {
            int zzao = zza.zzao(parcel);
            switch (zza.zzbM(zzao)) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    z = zza.zzc(parcel, zzao);
                    break;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    collection = zza.zzC(parcel, zzao);
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
            return new AutocompleteFilter(i, z, collection);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public AutocompleteFilter[] zzhg(int i) {
        return new AutocompleteFilter[i];
    }
}
