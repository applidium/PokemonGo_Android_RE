package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.reward.client.zzi;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.reward.RewardedVideoAd;
import com.google.android.gms.internal.zzel;

public class zzab {
    private static final Object zzpy;
    private static zzab zztM;
    private zzw zztN;
    private RewardedVideoAd zztO;

    static {
        zzpy = new Object();
    }

    private zzab() {
    }

    public static zzab zzcV() {
        zzab com_google_android_gms_ads_internal_client_zzab;
        synchronized (zzpy) {
            if (zztM == null) {
                zztM = new zzab();
            }
            com_google_android_gms_ads_internal_client_zzab = zztM;
        }
        return com_google_android_gms_ads_internal_client_zzab;
    }

    public RewardedVideoAd getRewardedVideoAdInstance(Context context) {
        RewardedVideoAd rewardedVideoAd;
        synchronized (zzpy) {
            if (this.zztO != null) {
                rewardedVideoAd = this.zztO;
            } else {
                this.zztO = new zzi(context, zzl.zzcK().zza(context, new zzel()));
                rewardedVideoAd = this.zztO;
            }
        }
        return rewardedVideoAd;
    }

    public void initialize(Context context) {
        synchronized (zzpy) {
            if (this.zztN != null) {
            } else if (context == null) {
                throw new IllegalArgumentException("Context cannot be null.");
            } else {
                try {
                    this.zztN = zzl.zzcI().zzt(context);
                    this.zztN.zza();
                } catch (RemoteException e) {
                    zzb.zzaH("Fail to initialize mobile ads setting manager");
                }
            }
        }
    }

    public void zza(Context context, String str, zzac com_google_android_gms_ads_internal_client_zzac) {
        initialize(context);
    }
}
