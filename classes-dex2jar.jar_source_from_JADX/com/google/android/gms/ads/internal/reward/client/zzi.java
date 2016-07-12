package com.google.android.gms.ads.internal.reward.client;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.internal.client.zzh;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.reward.RewardedVideoAd;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;

public class zzi implements RewardedVideoAd {
    private final Context mContext;
    private String zzGY;
    private RewardedVideoAdListener zzHd;
    private final zzb zzHe;
    private final Object zzpd;

    public zzi(Context context, zzb com_google_android_gms_ads_internal_reward_client_zzb) {
        this.zzpd = new Object();
        this.zzHe = com_google_android_gms_ads_internal_reward_client_zzb;
        this.mContext = context;
    }

    public void destroy() {
        synchronized (this.zzpd) {
            if (this.zzHe == null) {
                return;
            }
            try {
                this.zzHe.destroy();
            } catch (Throwable e) {
                zzb.zzd("Could not forward destroy to RewardedVideoAd", e);
            }
        }
    }

    public RewardedVideoAdListener getRewardedVideoAdListener() {
        RewardedVideoAdListener rewardedVideoAdListener;
        synchronized (this.zzpd) {
            rewardedVideoAdListener = this.zzHd;
        }
        return rewardedVideoAdListener;
    }

    public String getUserId() {
        String str;
        synchronized (this.zzpd) {
            str = this.zzGY;
        }
        return str;
    }

    public boolean isLoaded() {
        boolean z = false;
        synchronized (this.zzpd) {
            if (this.zzHe == null) {
            } else {
                try {
                    z = this.zzHe.isLoaded();
                } catch (Throwable e) {
                    zzb.zzd("Could not forward isLoaded to RewardedVideoAd", e);
                }
            }
        }
        return z;
    }

    public void loadAd(String str, AdRequest adRequest) {
        synchronized (this.zzpd) {
            if (this.zzHe == null) {
                return;
            }
            try {
                this.zzHe.zza(zzh.zzcB().zza(this.mContext, adRequest.zzaF(), str));
            } catch (Throwable e) {
                zzb.zzd("Could not forward loadAd to RewardedVideoAd", e);
            }
        }
    }

    public void pause() {
        synchronized (this.zzpd) {
            if (this.zzHe == null) {
                return;
            }
            try {
                this.zzHe.pause();
            } catch (Throwable e) {
                zzb.zzd("Could not forward pause to RewardedVideoAd", e);
            }
        }
    }

    public void resume() {
        synchronized (this.zzpd) {
            if (this.zzHe == null) {
                return;
            }
            try {
                this.zzHe.resume();
            } catch (Throwable e) {
                zzb.zzd("Could not forward resume to RewardedVideoAd", e);
            }
        }
    }

    public void setRewardedVideoAdListener(RewardedVideoAdListener rewardedVideoAdListener) {
        synchronized (this.zzpd) {
            this.zzHd = rewardedVideoAdListener;
            if (this.zzHe != null) {
                try {
                    this.zzHe.zza(new zzg(rewardedVideoAdListener));
                } catch (Throwable e) {
                    zzb.zzd("Could not forward setRewardedVideoAdListener to RewardedVideoAd", e);
                }
            }
        }
    }

    public void setUserId(String str) {
        synchronized (this.zzpd) {
            if (TextUtils.isEmpty(this.zzGY)) {
                this.zzGY = str;
                if (this.zzHe != null) {
                    try {
                        this.zzHe.setUserId(str);
                    } catch (Throwable e) {
                        zzb.zzd("Could not forward setUserId to RewardedVideoAd", e);
                    }
                }
                return;
            }
            zzb.zzaH("A user id has already been set, ignoring.");
        }
    }

    public void show() {
        synchronized (this.zzpd) {
            if (this.zzHe == null) {
                return;
            }
            try {
                this.zzHe.show();
            } catch (Throwable e) {
                zzb.zzd("Could not forward show to RewardedVideoAd", e);
            }
        }
    }
}
