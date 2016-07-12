package com.google.android.gms.ads.internal.reward.client;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import spacemadness.com.lunarconsole.C1401R;

public class zzh implements Creator<RewardedVideoAdRequestParcel> {
    static void zza(RewardedVideoAdRequestParcel rewardedVideoAdRequestParcel, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zzc(parcel, 1, rewardedVideoAdRequestParcel.versionCode);
        zzb.zza(parcel, 2, rewardedVideoAdRequestParcel.zzEn, i, false);
        zzb.zza(parcel, 3, rewardedVideoAdRequestParcel.zzqh, false);
        zzb.zzI(parcel, zzaq);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzn(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzJ(i);
    }

    public RewardedVideoAdRequestParcel[] zzJ(int i) {
        return new RewardedVideoAdRequestParcel[i];
    }

    public RewardedVideoAdRequestParcel zzn(Parcel parcel) {
        AdRequestParcel adRequestParcel = null;
        int zzap = zza.zzap(parcel);
        int i = 0;
        String str = null;
        while (parcel.dataPosition() < zzap) {
            int zzao = zza.zzao(parcel);
            switch (zza.zzbM(zzao)) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    i = zza.zzg(parcel, zzao);
                    break;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    adRequestParcel = (AdRequestParcel) zza.zza(parcel, zzao, AdRequestParcel.CREATOR);
                    break;
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    str = zza.zzp(parcel, zzao);
                    break;
                default:
                    zza.zzb(parcel, zzao);
                    break;
            }
        }
        if (parcel.dataPosition() == zzap) {
            return new RewardedVideoAdRequestParcel(i, adRequestParcel, str);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }
}
