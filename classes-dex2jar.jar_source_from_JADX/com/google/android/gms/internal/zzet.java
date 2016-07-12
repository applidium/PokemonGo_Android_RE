package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.NativeAdMapper;
import com.google.android.gms.ads.mediation.NativeAppInstallAdMapper;
import com.google.android.gms.ads.mediation.NativeContentAdMapper;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzen.zza;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

@zzgr
public final class zzet extends zza {
    private final MediationAdapter zzzJ;
    private zzeu zzzK;

    public zzet(MediationAdapter mediationAdapter) {
        this.zzzJ = mediationAdapter;
    }

    private Bundle zza(String str, int i, String str2) throws RemoteException {
        zzb.zzaH("Server parameters: " + str);
        try {
            Bundle bundle = new Bundle();
            if (str != null) {
                JSONObject jSONObject = new JSONObject(str);
                Bundle bundle2 = new Bundle();
                Iterator keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String str3 = (String) keys.next();
                    bundle2.putString(str3, jSONObject.getString(str3));
                }
                bundle = bundle2;
            }
            if (this.zzzJ instanceof AdMobAdapter) {
                bundle.putString("adJson", str2);
                bundle.putInt("tagForChildDirectedTreatment", i);
            }
            return bundle;
        } catch (Throwable th) {
            zzb.zzd("Could not get Server Parameters Bundle.", th);
            RemoteException remoteException = new RemoteException();
        }
    }

    public void destroy() throws RemoteException {
        try {
            this.zzzJ.onDestroy();
        } catch (Throwable th) {
            zzb.zzd("Could not destroy adapter.", th);
            RemoteException remoteException = new RemoteException();
        }
    }

    public zzd getView() throws RemoteException {
        if (this.zzzJ instanceof MediationBannerAdapter) {
            try {
                return zze.zzy(((MediationBannerAdapter) this.zzzJ).getBannerView());
            } catch (Throwable th) {
                zzb.zzd("Could not get banner view from adapter.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            zzb.zzaH("MediationAdapter is not a MediationBannerAdapter: " + this.zzzJ.getClass().getCanonicalName());
            throw new RemoteException();
        }
    }

    public boolean isInitialized() throws RemoteException {
        if (this.zzzJ instanceof MediationRewardedVideoAdAdapter) {
            zzb.zzaF("Check if adapter is initialized.");
            try {
                return ((MediationRewardedVideoAdAdapter) this.zzzJ).isInitialized();
            } catch (Throwable th) {
                zzb.zzd("Could not check if adapter is initialized.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            zzb.zzaH("MediationAdapter is not a MediationRewardedVideoAdAdapter: " + this.zzzJ.getClass().getCanonicalName());
            throw new RemoteException();
        }
    }

    public void pause() throws RemoteException {
        try {
            this.zzzJ.onPause();
        } catch (Throwable th) {
            zzb.zzd("Could not pause adapter.", th);
            RemoteException remoteException = new RemoteException();
        }
    }

    public void resume() throws RemoteException {
        try {
            this.zzzJ.onResume();
        } catch (Throwable th) {
            zzb.zzd("Could not resume adapter.", th);
            RemoteException remoteException = new RemoteException();
        }
    }

    public void showInterstitial() throws RemoteException {
        if (this.zzzJ instanceof MediationInterstitialAdapter) {
            zzb.zzaF("Showing interstitial from adapter.");
            try {
                ((MediationInterstitialAdapter) this.zzzJ).showInterstitial();
            } catch (Throwable th) {
                zzb.zzd("Could not show interstitial from adapter.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            zzb.zzaH("MediationAdapter is not a MediationInterstitialAdapter: " + this.zzzJ.getClass().getCanonicalName());
            throw new RemoteException();
        }
    }

    public void showVideo() throws RemoteException {
        if (this.zzzJ instanceof MediationRewardedVideoAdAdapter) {
            zzb.zzaF("Show rewarded video ad from adapter.");
            try {
                ((MediationRewardedVideoAdAdapter) this.zzzJ).showVideo();
            } catch (Throwable th) {
                zzb.zzd("Could not show rewarded video ad from adapter.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            zzb.zzaH("MediationAdapter is not a MediationRewardedVideoAdAdapter: " + this.zzzJ.getClass().getCanonicalName());
            throw new RemoteException();
        }
    }

    public void zza(AdRequestParcel adRequestParcel, String str) throws RemoteException {
        if (this.zzzJ instanceof MediationRewardedVideoAdAdapter) {
            zzb.zzaF("Requesting rewarded video ad from adapter.");
            try {
                MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter = (MediationRewardedVideoAdAdapter) this.zzzJ;
                mediationRewardedVideoAdAdapter.loadAd(new zzes(adRequestParcel.zzsB == -1 ? null : new Date(adRequestParcel.zzsB), adRequestParcel.zzsC, adRequestParcel.zzsD != null ? new HashSet(adRequestParcel.zzsD) : null, adRequestParcel.zzsJ, adRequestParcel.zzsE, adRequestParcel.zzsF), zza(str, adRequestParcel.zzsF, null), adRequestParcel.zzsL != null ? adRequestParcel.zzsL.getBundle(mediationRewardedVideoAdAdapter.getClass().getName()) : null);
            } catch (Throwable th) {
                zzb.zzd("Could not load rewarded video ad from adapter.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            zzb.zzaH("MediationAdapter is not a MediationRewardedVideoAdAdapter: " + this.zzzJ.getClass().getCanonicalName());
            throw new RemoteException();
        }
    }

    public void zza(zzd com_google_android_gms_dynamic_zzd, AdRequestParcel adRequestParcel, String str, com.google.android.gms.ads.internal.reward.mediation.client.zza com_google_android_gms_ads_internal_reward_mediation_client_zza, String str2) throws RemoteException {
        if (this.zzzJ instanceof MediationRewardedVideoAdAdapter) {
            zzb.zzaF("Initialize rewarded video adapter.");
            try {
                MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter = (MediationRewardedVideoAdAdapter) this.zzzJ;
                mediationRewardedVideoAdAdapter.initialize((Context) zze.zzp(com_google_android_gms_dynamic_zzd), new zzes(adRequestParcel.zzsB == -1 ? null : new Date(adRequestParcel.zzsB), adRequestParcel.zzsC, adRequestParcel.zzsD != null ? new HashSet(adRequestParcel.zzsD) : null, adRequestParcel.zzsJ, adRequestParcel.zzsE, adRequestParcel.zzsF), str, new com.google.android.gms.ads.internal.reward.mediation.client.zzb(com_google_android_gms_ads_internal_reward_mediation_client_zza), zza(str2, adRequestParcel.zzsF, null), adRequestParcel.zzsL != null ? adRequestParcel.zzsL.getBundle(mediationRewardedVideoAdAdapter.getClass().getName()) : null);
            } catch (Throwable th) {
                zzb.zzd("Could not initialize rewarded video adapter.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            zzb.zzaH("MediationAdapter is not a MediationRewardedVideoAdAdapter: " + this.zzzJ.getClass().getCanonicalName());
            throw new RemoteException();
        }
    }

    public void zza(zzd com_google_android_gms_dynamic_zzd, AdRequestParcel adRequestParcel, String str, zzeo com_google_android_gms_internal_zzeo) throws RemoteException {
        zza(com_google_android_gms_dynamic_zzd, adRequestParcel, str, null, com_google_android_gms_internal_zzeo);
    }

    public void zza(zzd com_google_android_gms_dynamic_zzd, AdRequestParcel adRequestParcel, String str, String str2, zzeo com_google_android_gms_internal_zzeo) throws RemoteException {
        if (this.zzzJ instanceof MediationInterstitialAdapter) {
            zzb.zzaF("Requesting interstitial ad from adapter.");
            try {
                MediationInterstitialAdapter mediationInterstitialAdapter = (MediationInterstitialAdapter) this.zzzJ;
                mediationInterstitialAdapter.requestInterstitialAd((Context) zze.zzp(com_google_android_gms_dynamic_zzd), new zzeu(com_google_android_gms_internal_zzeo), zza(str, adRequestParcel.zzsF, str2), new zzes(adRequestParcel.zzsB == -1 ? null : new Date(adRequestParcel.zzsB), adRequestParcel.zzsC, adRequestParcel.zzsD != null ? new HashSet(adRequestParcel.zzsD) : null, adRequestParcel.zzsJ, adRequestParcel.zzsE, adRequestParcel.zzsF), adRequestParcel.zzsL != null ? adRequestParcel.zzsL.getBundle(mediationInterstitialAdapter.getClass().getName()) : null);
            } catch (Throwable th) {
                zzb.zzd("Could not request interstitial ad from adapter.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            zzb.zzaH("MediationAdapter is not a MediationInterstitialAdapter: " + this.zzzJ.getClass().getCanonicalName());
            throw new RemoteException();
        }
    }

    public void zza(zzd com_google_android_gms_dynamic_zzd, AdRequestParcel adRequestParcel, String str, String str2, zzeo com_google_android_gms_internal_zzeo, NativeAdOptionsParcel nativeAdOptionsParcel, List<String> list) throws RemoteException {
        if (this.zzzJ instanceof MediationNativeAdapter) {
            try {
                MediationNativeAdapter mediationNativeAdapter = (MediationNativeAdapter) this.zzzJ;
                zzex com_google_android_gms_internal_zzex = new zzex(adRequestParcel.zzsB == -1 ? null : new Date(adRequestParcel.zzsB), adRequestParcel.zzsC, adRequestParcel.zzsD != null ? new HashSet(adRequestParcel.zzsD) : null, adRequestParcel.zzsJ, adRequestParcel.zzsE, adRequestParcel.zzsF, nativeAdOptionsParcel, list);
                Bundle bundle = adRequestParcel.zzsL != null ? adRequestParcel.zzsL.getBundle(mediationNativeAdapter.getClass().getName()) : null;
                this.zzzK = new zzeu(com_google_android_gms_internal_zzeo);
                mediationNativeAdapter.requestNativeAd((Context) zze.zzp(com_google_android_gms_dynamic_zzd), this.zzzK, zza(str, adRequestParcel.zzsF, str2), com_google_android_gms_internal_zzex, bundle);
            } catch (Throwable th) {
                zzb.zzd("Could not request interstitial ad from adapter.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            zzb.zzaH("MediationAdapter is not a MediationNativeAdapter: " + this.zzzJ.getClass().getCanonicalName());
            throw new RemoteException();
        }
    }

    public void zza(zzd com_google_android_gms_dynamic_zzd, AdSizeParcel adSizeParcel, AdRequestParcel adRequestParcel, String str, zzeo com_google_android_gms_internal_zzeo) throws RemoteException {
        zza(com_google_android_gms_dynamic_zzd, adSizeParcel, adRequestParcel, str, null, com_google_android_gms_internal_zzeo);
    }

    public void zza(zzd com_google_android_gms_dynamic_zzd, AdSizeParcel adSizeParcel, AdRequestParcel adRequestParcel, String str, String str2, zzeo com_google_android_gms_internal_zzeo) throws RemoteException {
        if (this.zzzJ instanceof MediationBannerAdapter) {
            zzb.zzaF("Requesting banner ad from adapter.");
            try {
                MediationBannerAdapter mediationBannerAdapter = (MediationBannerAdapter) this.zzzJ;
                mediationBannerAdapter.requestBannerAd((Context) zze.zzp(com_google_android_gms_dynamic_zzd), new zzeu(com_google_android_gms_internal_zzeo), zza(str, adRequestParcel.zzsF, str2), com.google.android.gms.ads.zza.zza(adSizeParcel.width, adSizeParcel.height, adSizeParcel.zzte), new zzes(adRequestParcel.zzsB == -1 ? null : new Date(adRequestParcel.zzsB), adRequestParcel.zzsC, adRequestParcel.zzsD != null ? new HashSet(adRequestParcel.zzsD) : null, adRequestParcel.zzsJ, adRequestParcel.zzsE, adRequestParcel.zzsF), adRequestParcel.zzsL != null ? adRequestParcel.zzsL.getBundle(mediationBannerAdapter.getClass().getName()) : null);
            } catch (Throwable th) {
                zzb.zzd("Could not request banner ad from adapter.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            zzb.zzaH("MediationAdapter is not a MediationBannerAdapter: " + this.zzzJ.getClass().getCanonicalName());
            throw new RemoteException();
        }
    }

    public zzeq zzdV() {
        NativeAdMapper zzeb = this.zzzK.zzeb();
        return zzeb instanceof NativeAppInstallAdMapper ? new zzev((NativeAppInstallAdMapper) zzeb) : null;
    }

    public zzer zzdW() {
        NativeAdMapper zzeb = this.zzzK.zzeb();
        return zzeb instanceof NativeContentAdMapper ? new zzew((NativeContentAdMapper) zzeb) : null;
    }

    public Bundle zzdX() {
        if (this.zzzJ instanceof zzjj) {
            return ((zzjj) this.zzzJ).zzdX();
        }
        zzb.zzaH("MediationAdapter is not a v2 MediationBannerAdapter: " + this.zzzJ.getClass().getCanonicalName());
        return new Bundle();
    }

    public Bundle zzdY() {
        if (this.zzzJ instanceof zzjk) {
            return ((zzjk) this.zzzJ).zzdY();
        }
        zzb.zzaH("MediationAdapter is not a v2 MediationInterstitialAdapter: " + this.zzzJ.getClass().getCanonicalName());
        return new Bundle();
    }

    public Bundle zzdZ() {
        return new Bundle();
    }
}
