package com.google.android.gms.auth.api.proxy;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.LocationStatusCodes;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import spacemadness.com.lunarconsole.C1401R;

public class zzc implements Creator<ProxyResponse> {
    static void zza(ProxyResponse proxyResponse, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zzc(parcel, 1, proxyResponse.googlePlayServicesStatusCode);
        zzb.zzc(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, proxyResponse.versionCode);
        zzb.zza(parcel, 2, proxyResponse.recoveryAction, i, false);
        zzb.zzc(parcel, 3, proxyResponse.statusCode);
        zzb.zza(parcel, 4, proxyResponse.zzSK, false);
        zzb.zza(parcel, 5, proxyResponse.body, false);
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzN(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzaE(i);
    }

    public ProxyResponse zzN(Parcel parcel) {
        PendingIntent pendingIntent = null;
        int i = 0;
        int zzap = zza.zzap(parcel);
        Bundle bundle = null;
        byte[] bArr = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < zzap) {
            int zzao = zza.zzao(parcel);
            switch (zza.zzbM(zzao)) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    i2 = zza.zzg(parcel, zzao);
                    break;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    pendingIntent = (PendingIntent) zza.zza(parcel, zzao, PendingIntent.CREATOR);
                    break;
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    i3 = zza.zzg(parcel, zzao);
                    break;
                case Place.TYPE_AQUARIUM /*4*/:
                    bundle = zza.zzr(parcel, zzao);
                    break;
                case Place.TYPE_ART_GALLERY /*5*/:
                    bArr = zza.zzs(parcel, zzao);
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
            return new ProxyResponse(i, i2, pendingIntent, i3, bundle, bArr);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public ProxyResponse[] zzaE(int i) {
        return new ProxyResponse[i];
    }
}
