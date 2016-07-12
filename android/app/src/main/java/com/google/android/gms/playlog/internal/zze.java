package com.google.android.gms.playlog.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import com.nianticproject.holoholo.sfida.constants.BluetoothGattSupport;
import com.upsight.android.internal.persistence.subscription.Subscriptions;
import spacemadness.com.lunarconsole.C1401R;

public class zze implements Creator<PlayLoggerContext> {
    static void zza(PlayLoggerContext playLoggerContext, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zzc(parcel, 1, playLoggerContext.versionCode);
        zzb.zza(parcel, 2, playLoggerContext.packageName, false);
        zzb.zzc(parcel, 3, playLoggerContext.zzaRR);
        zzb.zzc(parcel, 4, playLoggerContext.zzaRS);
        zzb.zza(parcel, 5, playLoggerContext.zzaRT, false);
        zzb.zza(parcel, 6, playLoggerContext.zzaRU, false);
        zzb.zza(parcel, 7, playLoggerContext.zzaRV);
        zzb.zza(parcel, 8, playLoggerContext.zzaRW, false);
        zzb.zza(parcel, 9, playLoggerContext.zzaRX);
        zzb.zzc(parcel, 10, playLoggerContext.zzaRY);
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzgj(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zziV(i);
    }

    public PlayLoggerContext zzgj(Parcel parcel) {
        String str = null;
        boolean z = false;
        int zzap = zza.zzap(parcel);
        boolean z2 = true;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
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
                    i2 = zza.zzg(parcel, zzao);
                    break;
                case Place.TYPE_AQUARIUM /*4*/:
                    i3 = zza.zzg(parcel, zzao);
                    break;
                case Place.TYPE_ART_GALLERY /*5*/:
                    str2 = zza.zzp(parcel, zzao);
                    break;
                case Place.TYPE_ATM /*6*/:
                    str3 = zza.zzp(parcel, zzao);
                    break;
                case Place.TYPE_BAKERY /*7*/:
                    z2 = zza.zzc(parcel, zzao);
                    break;
                case BluetoothGattSupport.GATT_INSUF_AUTHENTICATION /*8*/:
                    str4 = zza.zzp(parcel, zzao);
                    break;
                case Place.TYPE_BAR /*9*/:
                    z = zza.zzc(parcel, zzao);
                    break;
                case Subscriptions.MAX_QUEUE_LENGTH /*10*/:
                    i4 = zza.zzg(parcel, zzao);
                    break;
                default:
                    zza.zzb(parcel, zzao);
                    break;
            }
        }
        if (parcel.dataPosition() == zzap) {
            return new PlayLoggerContext(i, str, i2, i3, str2, str3, z2, str4, z, i4);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public PlayLoggerContext[] zziV(int i) {
        return new PlayLoggerContext[i];
    }
}
