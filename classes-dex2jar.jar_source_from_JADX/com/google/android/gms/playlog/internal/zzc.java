package com.google.android.gms.playlog.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import spacemadness.com.lunarconsole.C1401R;

public class zzc implements Creator<LogEvent> {
    static void zza(LogEvent logEvent, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zzc(parcel, 1, logEvent.versionCode);
        zzb.zza(parcel, 2, logEvent.zzaRG);
        zzb.zza(parcel, 3, logEvent.tag, false);
        zzb.zza(parcel, 4, logEvent.zzaRI, false);
        zzb.zza(parcel, 5, logEvent.zzaRJ, false);
        zzb.zza(parcel, 6, logEvent.zzaRH);
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzgi(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zziU(i);
    }

    public LogEvent zzgi(Parcel parcel) {
        long j = 0;
        String str = null;
        int zzap = zza.zzap(parcel);
        int i = 0;
        byte[] bArr = null;
        Bundle bundle = null;
        long j2 = 0;
        while (parcel.dataPosition() < zzap) {
            int zzao = zza.zzao(parcel);
            switch (zza.zzbM(zzao)) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    i = zza.zzg(parcel, zzao);
                    break;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    j = zza.zzi(parcel, zzao);
                    break;
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    str = zza.zzp(parcel, zzao);
                    break;
                case Place.TYPE_AQUARIUM /*4*/:
                    bArr = zza.zzs(parcel, zzao);
                    break;
                case Place.TYPE_ART_GALLERY /*5*/:
                    bundle = zza.zzr(parcel, zzao);
                    break;
                case Place.TYPE_ATM /*6*/:
                    j2 = zza.zzi(parcel, zzao);
                    break;
                default:
                    zza.zzb(parcel, zzao);
                    break;
            }
        }
        if (parcel.dataPosition() == zzap) {
            return new LogEvent(i, j, j2, str, bArr, bundle);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public LogEvent[] zziU(int i) {
        return new LogEvent[i];
    }
}
