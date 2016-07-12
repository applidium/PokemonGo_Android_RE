package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.reward.client.RewardedVideoAdRequestParcel;
import com.google.android.gms.ads.internal.reward.client.zzd;
import com.google.android.gms.ads.internal.reward.mediation.client.RewardItemParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzhs.zza;
import java.util.HashMap;

@zzgr
public class zzhg extends zzb implements zzhk {
    private zzd zzGX;
    private String zzGY;
    private boolean zzGZ;
    private HashMap<String, zzhh> zzHa;

    /* renamed from: com.google.android.gms.internal.zzhg.1 */
    class C05671 implements Runnable {
        final /* synthetic */ zzhg zzHb;
        final /* synthetic */ zza zzoB;

        C05671(zzhg com_google_android_gms_internal_zzhg, zza com_google_android_gms_internal_zzhs_zza) {
            this.zzHb = com_google_android_gms_internal_zzhg;
            this.zzoB = com_google_android_gms_internal_zzhs_zza;
        }

        public void run() {
            this.zzHb.zzb(new zzhs(this.zzoB, null, null, null, null, null, null));
        }
    }

    public zzhg(Context context, AdSizeParcel adSizeParcel, zzem com_google_android_gms_internal_zzem, VersionInfoParcel versionInfoParcel) {
        super(context, adSizeParcel, null, com_google_android_gms_internal_zzem, versionInfoParcel, null);
        this.zzHa = new HashMap();
    }

    public void destroy() {
        zzx.zzci("destroy must be called on the main UI thread.");
        for (String str : this.zzHa.keySet()) {
            try {
                zzhh com_google_android_gms_internal_zzhh = (zzhh) this.zzHa.get(str);
                if (!(com_google_android_gms_internal_zzhh == null || com_google_android_gms_internal_zzhh.zzgc() == null)) {
                    com_google_android_gms_internal_zzhh.zzgc().destroy();
                }
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzb.zzaH("Fail to destroy adapter: " + str);
            }
        }
    }

    public boolean isLoaded() {
        zzx.zzci("isLoaded must be called on the main UI thread.");
        return this.zzot.zzql == null && this.zzot.zzqm == null && this.zzot.zzqo != null && !this.zzGZ;
    }

    public void onRewardedVideoAdClosed() {
        if (this.zzGX != null) {
            try {
                this.zzGX.onRewardedVideoAdClosed();
            } catch (Throwable e) {
                com.google.android.gms.ads.internal.util.client.zzb.zzd("Could not call RewardedVideoAdListener.onAdClosed().", e);
            }
        }
    }

    public void onRewardedVideoAdLeftApplication() {
        if (this.zzGX != null) {
            try {
                this.zzGX.onRewardedVideoAdLeftApplication();
            } catch (Throwable e) {
                com.google.android.gms.ads.internal.util.client.zzb.zzd("Could not call RewardedVideoAdListener.onAdLeftApplication().", e);
            }
        }
    }

    public void onRewardedVideoAdOpened() {
        zza(this.zzot.zzqo, false);
        if (this.zzGX != null) {
            try {
                this.zzGX.onRewardedVideoAdOpened();
            } catch (Throwable e) {
                com.google.android.gms.ads.internal.util.client.zzb.zzd("Could not call RewardedVideoAdListener.onAdOpened().", e);
            }
        }
    }

    public void onRewardedVideoStarted() {
        zzp.zzbH().zza(this.zzot.context, this.zzot.zzqj.zzJu, this.zzot.zzqo, this.zzot.zzqh, false, this.zzot.zzqo.zzzu.zzyU);
        if (this.zzGX != null) {
            try {
                this.zzGX.onRewardedVideoStarted();
            } catch (Throwable e) {
                com.google.android.gms.ads.internal.util.client.zzb.zzd("Could not call RewardedVideoAdListener.onVideoStarted().", e);
            }
        }
    }

    public void pause() {
        zzx.zzci("pause must be called on the main UI thread.");
        for (String str : this.zzHa.keySet()) {
            try {
                zzhh com_google_android_gms_internal_zzhh = (zzhh) this.zzHa.get(str);
                if (!(com_google_android_gms_internal_zzhh == null || com_google_android_gms_internal_zzhh.zzgc() == null)) {
                    com_google_android_gms_internal_zzhh.zzgc().pause();
                }
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzb.zzaH("Fail to pause adapter: " + str);
            }
        }
    }

    public void resume() {
        zzx.zzci("resume must be called on the main UI thread.");
        for (String str : this.zzHa.keySet()) {
            try {
                zzhh com_google_android_gms_internal_zzhh = (zzhh) this.zzHa.get(str);
                if (!(com_google_android_gms_internal_zzhh == null || com_google_android_gms_internal_zzhh.zzgc() == null)) {
                    com_google_android_gms_internal_zzhh.zzgc().resume();
                }
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzb.zzaH("Fail to resume adapter: " + str);
            }
        }
    }

    public void setUserId(String str) {
        zzx.zzci("setUserId must be called on the main UI thread.");
        this.zzGY = str;
    }

    public void zza(RewardedVideoAdRequestParcel rewardedVideoAdRequestParcel) {
        zzx.zzci("loadAd must be called on the main UI thread.");
        if (TextUtils.isEmpty(rewardedVideoAdRequestParcel.zzqh)) {
            com.google.android.gms.ads.internal.util.client.zzb.zzaH("Invalid ad unit id. Aborting.");
            return;
        }
        this.zzGZ = false;
        this.zzot.zzqh = rewardedVideoAdRequestParcel.zzqh;
        super.zzb(rewardedVideoAdRequestParcel.zzEn);
    }

    public void zza(zzd com_google_android_gms_ads_internal_reward_client_zzd) {
        zzx.zzci("setRewardedVideoAdListener must be called on the main UI thread.");
        this.zzGX = com_google_android_gms_ads_internal_reward_client_zzd;
    }

    public void zza(RewardItemParcel rewardItemParcel) {
        zzp.zzbH().zza(this.zzot.context, this.zzot.zzqj.zzJu, this.zzot.zzqo, this.zzot.zzqh, false, this.zzot.zzqo.zzzu.zzyV);
        if (this.zzGX != null) {
            try {
                if (this.zzot.zzqo == null || this.zzot.zzqo.zzHx == null || TextUtils.isEmpty(this.zzot.zzqo.zzHx.zzzd)) {
                    this.zzGX.zza(new zzhe(rewardItemParcel.type, rewardItemParcel.zzHv));
                } else {
                    this.zzGX.zza(new zzhe(this.zzot.zzqo.zzHx.zzzd, this.zzot.zzqo.zzHx.zzze));
                }
            } catch (Throwable e) {
                com.google.android.gms.ads.internal.util.client.zzb.zzd("Could not call RewardedVideoAdListener.onRewarded().", e);
            }
        }
    }

    public void zza(zza com_google_android_gms_internal_zzhs_zza, zzcg com_google_android_gms_internal_zzcg) {
        if (com_google_android_gms_internal_zzhs_zza.errorCode != -2) {
            zzid.zzIE.post(new C05671(this, com_google_android_gms_internal_zzhs_zza));
            return;
        }
        this.zzot.zzqH = 0;
        this.zzot.zzqm = new zzhn(this.zzot.context, this.zzGY, com_google_android_gms_internal_zzhs_zza, this);
        com.google.android.gms.ads.internal.util.client.zzb.zzaF("AdRenderer: " + this.zzot.zzqm.getClass().getName());
        this.zzot.zzqm.zzfu();
    }

    public boolean zza(zzhs com_google_android_gms_internal_zzhs, zzhs com_google_android_gms_internal_zzhs2) {
        if (this.zzGX != null) {
            try {
                this.zzGX.onRewardedVideoAdLoaded();
            } catch (Throwable e) {
                com.google.android.gms.ads.internal.util.client.zzb.zzd("Could not call RewardedVideoAdListener.onAdLoaded().", e);
            }
        }
        return true;
    }

    public zzhh zzau(String str) {
        zzhh com_google_android_gms_internal_zzhh;
        Throwable e;
        zzhh com_google_android_gms_internal_zzhh2 = (zzhh) this.zzHa.get(str);
        if (com_google_android_gms_internal_zzhh2 != null) {
            return com_google_android_gms_internal_zzhh2;
        }
        try {
            com_google_android_gms_internal_zzhh = new zzhh(this.zzox.zzae(str), this);
            try {
                this.zzHa.put(str, com_google_android_gms_internal_zzhh);
                return com_google_android_gms_internal_zzhh;
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable e3) {
            Throwable th = e3;
            com_google_android_gms_internal_zzhh = com_google_android_gms_internal_zzhh2;
            e = th;
            com.google.android.gms.ads.internal.util.client.zzb.zzd("Fail to instantiate adapter " + str, e);
            return com_google_android_gms_internal_zzhh;
        }
    }

    protected boolean zze(int i) {
        com.google.android.gms.ads.internal.util.client.zzb.zzaH("Failed to load ad: " + i);
        if (this.zzGX == null) {
            return false;
        }
        try {
            this.zzGX.onRewardedVideoAdFailedToLoad(i);
            return true;
        } catch (Throwable e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzd("Could not call RewardedVideoAdListener.onAdFailedToLoad().", e);
            return false;
        }
    }

    public void zzga() {
        zzx.zzci("showAd must be called on the main UI thread.");
        if (isLoaded()) {
            this.zzGZ = true;
            zzhh zzau = zzau(this.zzot.zzqo.zzzw);
            if (zzau != null && zzau.zzgc() != null) {
                try {
                    zzau.zzgc().showVideo();
                    return;
                } catch (Throwable e) {
                    com.google.android.gms.ads.internal.util.client.zzb.zzd("Could not call showVideo.", e);
                    return;
                }
            }
            return;
        }
        com.google.android.gms.ads.internal.util.client.zzb.zzaH("The reward video has not loaded.");
    }

    public void zzgb() {
        onAdClicked();
    }
}
