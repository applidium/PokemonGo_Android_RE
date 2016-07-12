package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.reward.client.RewardedVideoAdRequestParcel;
import com.google.android.gms.ads.internal.reward.client.zzb.zza;
import com.google.android.gms.ads.internal.reward.client.zzd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;

public class zzhf extends zza {
    private final Context mContext;
    private final zzhg zzGW;
    private final VersionInfoParcel zzpb;
    private final Object zzpd;

    public zzhf(Context context, zzem com_google_android_gms_internal_zzem, VersionInfoParcel versionInfoParcel) {
        this.mContext = context;
        this.zzpb = versionInfoParcel;
        this.zzGW = new zzhg(context, AdSizeParcel.zzcC(), com_google_android_gms_internal_zzem, versionInfoParcel);
        this.zzpd = new Object();
    }

    public void destroy() {
        synchronized (this.zzpd) {
            this.zzGW.destroy();
        }
    }

    public boolean isLoaded() {
        boolean isLoaded;
        synchronized (this.zzpd) {
            isLoaded = this.zzGW.isLoaded();
        }
        return isLoaded;
    }

    public void pause() {
        synchronized (this.zzpd) {
            this.zzGW.pause();
        }
    }

    public void resume() {
        synchronized (this.zzpd) {
            this.zzGW.resume();
        }
    }

    public void setUserId(String str) {
        synchronized (this.zzpd) {
            this.zzGW.setUserId(str);
        }
    }

    public void show() {
        synchronized (this.zzpd) {
            this.zzGW.zzga();
        }
    }

    public void zza(RewardedVideoAdRequestParcel rewardedVideoAdRequestParcel) {
        synchronized (this.zzpd) {
            this.zzGW.zza(rewardedVideoAdRequestParcel);
        }
    }

    public void zza(zzd com_google_android_gms_ads_internal_reward_client_zzd) {
        synchronized (this.zzpd) {
            this.zzGW.zza(com_google_android_gms_ads_internal_reward_client_zzd);
        }
    }
}
