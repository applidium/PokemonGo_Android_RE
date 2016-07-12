package com.google.android.gms.ads.internal.reward.client;

import com.google.android.gms.ads.internal.reward.client.zzd.zza;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;

public class zzg extends zza {
    private final RewardedVideoAdListener zzHd;

    public zzg(RewardedVideoAdListener rewardedVideoAdListener) {
        this.zzHd = rewardedVideoAdListener;
    }

    public void onRewardedVideoAdClosed() {
        if (this.zzHd != null) {
            this.zzHd.onRewardedVideoAdClosed();
        }
    }

    public void onRewardedVideoAdFailedToLoad(int i) {
        if (this.zzHd != null) {
            this.zzHd.onRewardedVideoAdFailedToLoad(i);
        }
    }

    public void onRewardedVideoAdLeftApplication() {
        if (this.zzHd != null) {
            this.zzHd.onRewardedVideoAdLeftApplication();
        }
    }

    public void onRewardedVideoAdLoaded() {
        if (this.zzHd != null) {
            this.zzHd.onRewardedVideoAdLoaded();
        }
    }

    public void onRewardedVideoAdOpened() {
        if (this.zzHd != null) {
            this.zzHd.onRewardedVideoAdOpened();
        }
    }

    public void onRewardedVideoStarted() {
        if (this.zzHd != null) {
            this.zzHd.onRewardedVideoStarted();
        }
    }

    public void zza(zza com_google_android_gms_ads_internal_reward_client_zza) {
        if (this.zzHd != null) {
            this.zzHd.onRewarded(new zze(com_google_android_gms_ads_internal_reward_client_zza));
        }
    }
}
