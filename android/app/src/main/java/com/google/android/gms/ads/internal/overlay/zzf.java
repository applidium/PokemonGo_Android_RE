package com.google.android.gms.ads.internal.overlay;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.ads.internal.InterstitialAdParameterParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import com.nianticproject.holoholo.sfida.constants.BluetoothGattSupport;
import com.upsight.android.internal.persistence.subscription.Subscriptions;
import spacemadness.com.lunarconsole.C1401R;

public class zzf implements Creator<AdOverlayInfoParcel> {
    static void zza(AdOverlayInfoParcel adOverlayInfoParcel, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zzc(parcel, 1, adOverlayInfoParcel.versionCode);
        zzb.zza(parcel, 2, adOverlayInfoParcel.zzBA, i, false);
        zzb.zza(parcel, 3, adOverlayInfoParcel.zzeK(), false);
        zzb.zza(parcel, 4, adOverlayInfoParcel.zzeL(), false);
        zzb.zza(parcel, 5, adOverlayInfoParcel.zzeM(), false);
        zzb.zza(parcel, 6, adOverlayInfoParcel.zzeN(), false);
        zzb.zza(parcel, 7, adOverlayInfoParcel.zzBF, false);
        zzb.zza(parcel, 8, adOverlayInfoParcel.zzBG);
        zzb.zza(parcel, 9, adOverlayInfoParcel.zzBH, false);
        zzb.zza(parcel, 10, adOverlayInfoParcel.zzeP(), false);
        zzb.zzc(parcel, 11, adOverlayInfoParcel.orientation);
        zzb.zzc(parcel, 12, adOverlayInfoParcel.zzBJ);
        zzb.zza(parcel, 13, adOverlayInfoParcel.url, false);
        zzb.zza(parcel, 14, adOverlayInfoParcel.zzqj, i, false);
        zzb.zza(parcel, 15, adOverlayInfoParcel.zzeO(), false);
        zzb.zza(parcel, 17, adOverlayInfoParcel.zzBM, i, false);
        zzb.zza(parcel, 16, adOverlayInfoParcel.zzBL, false);
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzg(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzw(i);
    }

    public AdOverlayInfoParcel zzg(Parcel parcel) {
        int zzap = zza.zzap(parcel);
        int i = 0;
        AdLauncherIntentInfoParcel adLauncherIntentInfoParcel = null;
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        IBinder iBinder3 = null;
        IBinder iBinder4 = null;
        String str = null;
        boolean z = false;
        String str2 = null;
        IBinder iBinder5 = null;
        int i2 = 0;
        int i3 = 0;
        String str3 = null;
        VersionInfoParcel versionInfoParcel = null;
        IBinder iBinder6 = null;
        String str4 = null;
        InterstitialAdParameterParcel interstitialAdParameterParcel = null;
        while (parcel.dataPosition() < zzap) {
            int zzao = zza.zzao(parcel);
            switch (zza.zzbM(zzao)) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    i = zza.zzg(parcel, zzao);
                    break;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    adLauncherIntentInfoParcel = (AdLauncherIntentInfoParcel) zza.zza(parcel, zzao, AdLauncherIntentInfoParcel.CREATOR);
                    break;
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    iBinder = zza.zzq(parcel, zzao);
                    break;
                case Place.TYPE_AQUARIUM /*4*/:
                    iBinder2 = zza.zzq(parcel, zzao);
                    break;
                case Place.TYPE_ART_GALLERY /*5*/:
                    iBinder3 = zza.zzq(parcel, zzao);
                    break;
                case Place.TYPE_ATM /*6*/:
                    iBinder4 = zza.zzq(parcel, zzao);
                    break;
                case Place.TYPE_BAKERY /*7*/:
                    str = zza.zzp(parcel, zzao);
                    break;
                case BluetoothGattSupport.GATT_INSUF_AUTHENTICATION /*8*/:
                    z = zza.zzc(parcel, zzao);
                    break;
                case Place.TYPE_BAR /*9*/:
                    str2 = zza.zzp(parcel, zzao);
                    break;
                case Subscriptions.MAX_QUEUE_LENGTH /*10*/:
                    iBinder5 = zza.zzq(parcel, zzao);
                    break;
                case Place.TYPE_BICYCLE_STORE /*11*/:
                    i2 = zza.zzg(parcel, zzao);
                    break;
                case Place.TYPE_BOOK_STORE /*12*/:
                    i3 = zza.zzg(parcel, zzao);
                    break;
                case Place.TYPE_BOWLING_ALLEY /*13*/:
                    str3 = zza.zzp(parcel, zzao);
                    break;
                case Place.TYPE_BUS_STATION /*14*/:
                    versionInfoParcel = (VersionInfoParcel) zza.zza(parcel, zzao, VersionInfoParcel.CREATOR);
                    break;
                case Place.TYPE_CAFE /*15*/:
                    iBinder6 = zza.zzq(parcel, zzao);
                    break;
                case Place.TYPE_CAMPGROUND /*16*/:
                    str4 = zza.zzp(parcel, zzao);
                    break;
                case Place.TYPE_CAR_DEALER /*17*/:
                    interstitialAdParameterParcel = (InterstitialAdParameterParcel) zza.zza(parcel, zzao, InterstitialAdParameterParcel.CREATOR);
                    break;
                default:
                    zza.zzb(parcel, zzao);
                    break;
            }
        }
        if (parcel.dataPosition() == zzap) {
            return new AdOverlayInfoParcel(i, adLauncherIntentInfoParcel, iBinder, iBinder2, iBinder3, iBinder4, str, z, str2, iBinder5, i2, i3, str3, versionInfoParcel, iBinder6, str4, interstitialAdParameterParcel);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public AdOverlayInfoParcel[] zzw(int i) {
        return new AdOverlayInfoParcel[i];
    }
}
