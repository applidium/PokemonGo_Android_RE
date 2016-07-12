package com.google.android.gms.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzab;
import com.google.android.gms.ads.internal.client.zzac;
import com.google.android.gms.ads.reward.RewardedVideoAd;

public class MobileAds {

    public static final class Settings {
        private final zzac zznV;

        public Settings() {
            this.zznV = new zzac();
        }

        @Deprecated
        public String getTrackingId() {
            return this.zznV.getTrackingId();
        }

        @Deprecated
        public boolean isGoogleAnalyticsEnabled() {
            return this.zznV.isGoogleAnalyticsEnabled();
        }

        @Deprecated
        public Settings setGoogleAnalyticsEnabled(boolean z) {
            this.zznV.zzk(z);
            return this;
        }

        @Deprecated
        public Settings setTrackingId(String str) {
            this.zznV.zzO(str);
            return this;
        }

        zzac zzaG() {
            return this.zznV;
        }
    }

    private MobileAds() {
    }

    public static RewardedVideoAd getRewardedVideoAdInstance(Context context) {
        return zzab.zzcV().getRewardedVideoAdInstance(context);
    }

    public static void initialize(Context context) {
        zzab.zzcV().initialize(context);
    }

    @Deprecated
    public static void initialize(Context context, String str) {
        initialize(context, str, null);
    }

    @Deprecated
    public static void initialize(Context context, String str, Settings settings) {
        zzab.zzcV().zza(context, str, settings == null ? null : settings.zzaG());
    }
}
