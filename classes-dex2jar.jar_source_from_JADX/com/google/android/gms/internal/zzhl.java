package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.reward.mediation.client.RewardItemParcel;
import com.google.android.gms.ads.internal.reward.mediation.client.zza.zza;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;

@zzgr
public class zzhl extends zza {
    private zzhm zzHh;
    private zzhj zzHn;
    private zzhk zzHo;

    public zzhl(zzhk com_google_android_gms_internal_zzhk) {
        this.zzHo = com_google_android_gms_internal_zzhk;
    }

    public void zza(zzd com_google_android_gms_dynamic_zzd, RewardItemParcel rewardItemParcel) {
        if (this.zzHo != null) {
            this.zzHo.zza(rewardItemParcel);
        }
    }

    public void zza(zzhj com_google_android_gms_internal_zzhj) {
        this.zzHn = com_google_android_gms_internal_zzhj;
    }

    public void zza(zzhm com_google_android_gms_internal_zzhm) {
        this.zzHh = com_google_android_gms_internal_zzhm;
    }

    public void zzb(zzd com_google_android_gms_dynamic_zzd, int i) {
        if (this.zzHn != null) {
            this.zzHn.zzK(i);
        }
    }

    public void zzc(zzd com_google_android_gms_dynamic_zzd, int i) {
        if (this.zzHh != null) {
            this.zzHh.zzb(zze.zzp(com_google_android_gms_dynamic_zzd).getClass().getName(), i);
        }
    }

    public void zzg(zzd com_google_android_gms_dynamic_zzd) {
        if (this.zzHn != null) {
            this.zzHn.zzge();
        }
    }

    public void zzh(zzd com_google_android_gms_dynamic_zzd) {
        if (this.zzHh != null) {
            this.zzHh.zzav(zze.zzp(com_google_android_gms_dynamic_zzd).getClass().getName());
        }
    }

    public void zzi(zzd com_google_android_gms_dynamic_zzd) {
        if (this.zzHo != null) {
            this.zzHo.onRewardedVideoAdOpened();
        }
    }

    public void zzj(zzd com_google_android_gms_dynamic_zzd) {
        if (this.zzHo != null) {
            this.zzHo.onRewardedVideoStarted();
        }
    }

    public void zzk(zzd com_google_android_gms_dynamic_zzd) {
        if (this.zzHo != null) {
            this.zzHo.onRewardedVideoAdClosed();
        }
    }

    public void zzl(zzd com_google_android_gms_dynamic_zzd) {
        if (this.zzHo != null) {
            this.zzHo.zzgb();
        }
    }

    public void zzm(zzd com_google_android_gms_dynamic_zzd) {
        if (this.zzHo != null) {
            this.zzHo.onRewardedVideoAdLeftApplication();
        }
    }
}
