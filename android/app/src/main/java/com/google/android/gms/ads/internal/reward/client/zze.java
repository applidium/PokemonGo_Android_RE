package com.google.android.gms.ads.internal.reward.client;

import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.reward.RewardItem;

public class zze implements RewardItem {
    private final zza zzHc;

    public zze(zza com_google_android_gms_ads_internal_reward_client_zza) {
        this.zzHc = com_google_android_gms_ads_internal_reward_client_zza;
    }

    public int getAmount() {
        int i = 0;
        if (this.zzHc != null) {
            try {
                i = this.zzHc.getAmount();
            } catch (Throwable e) {
                zzb.zzd("Could not forward getAmount to RewardItem", e);
            }
        }
        return i;
    }

    public String getType() {
        String str = null;
        if (this.zzHc != null) {
            try {
                str = this.zzHc.getType();
            } catch (Throwable e) {
                zzb.zzd("Could not forward getType to RewardItem", e);
            }
        }
        return str;
    }
}
