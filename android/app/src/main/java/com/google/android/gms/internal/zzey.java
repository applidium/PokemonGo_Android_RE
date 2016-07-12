package com.google.android.gms.internal;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.mediation.MediationAdapter;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzen.zza;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

@zzgr
public final class zzey<NETWORK_EXTRAS extends NetworkExtras, SERVER_PARAMETERS extends MediationServerParameters> extends zza {
    private final MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> zzzP;
    private final NETWORK_EXTRAS zzzQ;

    public zzey(MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> mediationAdapter, NETWORK_EXTRAS network_extras) {
        this.zzzP = mediationAdapter;
        this.zzzQ = network_extras;
    }

    private SERVER_PARAMETERS zzb(String str, int i, String str2) throws RemoteException {
        Map hashMap;
        if (str != null) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                hashMap = new HashMap(jSONObject.length());
                Iterator keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String str3 = (String) keys.next();
                    hashMap.put(str3, jSONObject.getString(str3));
                }
            } catch (Throwable th) {
                zzb.zzd("Could not get MediationServerParameters.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            hashMap = new HashMap(0);
        }
        Class serverParametersType = this.zzzP.getServerParametersType();
        if (serverParametersType == null) {
            return null;
        }
        MediationServerParameters mediationServerParameters = (MediationServerParameters) serverParametersType.newInstance();
        mediationServerParameters.load(hashMap);
        return mediationServerParameters;
    }

    public void destroy() throws RemoteException {
        try {
            this.zzzP.destroy();
        } catch (Throwable th) {
            zzb.zzd("Could not destroy adapter.", th);
            RemoteException remoteException = new RemoteException();
        }
    }

    public zzd getView() throws RemoteException {
        if (this.zzzP instanceof MediationBannerAdapter) {
            try {
                return zze.zzy(((MediationBannerAdapter) this.zzzP).getBannerView());
            } catch (Throwable th) {
                zzb.zzd("Could not get banner view from adapter.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            zzb.zzaH("MediationAdapter is not a MediationBannerAdapter: " + this.zzzP.getClass().getCanonicalName());
            throw new RemoteException();
        }
    }

    public boolean isInitialized() {
        return true;
    }

    public void pause() throws RemoteException {
        throw new RemoteException();
    }

    public void resume() throws RemoteException {
        throw new RemoteException();
    }

    public void showInterstitial() throws RemoteException {
        if (this.zzzP instanceof MediationInterstitialAdapter) {
            zzb.zzaF("Showing interstitial from adapter.");
            try {
                ((MediationInterstitialAdapter) this.zzzP).showInterstitial();
            } catch (Throwable th) {
                zzb.zzd("Could not show interstitial from adapter.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            zzb.zzaH("MediationAdapter is not a MediationInterstitialAdapter: " + this.zzzP.getClass().getCanonicalName());
            throw new RemoteException();
        }
    }

    public void showVideo() {
    }

    public void zza(AdRequestParcel adRequestParcel, String str) {
    }

    public void zza(zzd com_google_android_gms_dynamic_zzd, AdRequestParcel adRequestParcel, String str, com.google.android.gms.ads.internal.reward.mediation.client.zza com_google_android_gms_ads_internal_reward_mediation_client_zza, String str2) throws RemoteException {
    }

    public void zza(zzd com_google_android_gms_dynamic_zzd, AdRequestParcel adRequestParcel, String str, zzeo com_google_android_gms_internal_zzeo) throws RemoteException {
        zza(com_google_android_gms_dynamic_zzd, adRequestParcel, str, null, com_google_android_gms_internal_zzeo);
    }

    public void zza(zzd com_google_android_gms_dynamic_zzd, AdRequestParcel adRequestParcel, String str, String str2, zzeo com_google_android_gms_internal_zzeo) throws RemoteException {
        if (this.zzzP instanceof MediationInterstitialAdapter) {
            zzb.zzaF("Requesting interstitial ad from adapter.");
            try {
                ((MediationInterstitialAdapter) this.zzzP).requestInterstitialAd(new zzez(com_google_android_gms_internal_zzeo), (Activity) zze.zzp(com_google_android_gms_dynamic_zzd), zzb(str, adRequestParcel.zzsF, str2), zzfa.zzh(adRequestParcel), this.zzzQ);
            } catch (Throwable th) {
                zzb.zzd("Could not request interstitial ad from adapter.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            zzb.zzaH("MediationAdapter is not a MediationInterstitialAdapter: " + this.zzzP.getClass().getCanonicalName());
            throw new RemoteException();
        }
    }

    public void zza(zzd com_google_android_gms_dynamic_zzd, AdRequestParcel adRequestParcel, String str, String str2, zzeo com_google_android_gms_internal_zzeo, NativeAdOptionsParcel nativeAdOptionsParcel, List<String> list) {
    }

    public void zza(zzd com_google_android_gms_dynamic_zzd, AdSizeParcel adSizeParcel, AdRequestParcel adRequestParcel, String str, zzeo com_google_android_gms_internal_zzeo) throws RemoteException {
        zza(com_google_android_gms_dynamic_zzd, adSizeParcel, adRequestParcel, str, null, com_google_android_gms_internal_zzeo);
    }

    public void zza(zzd com_google_android_gms_dynamic_zzd, AdSizeParcel adSizeParcel, AdRequestParcel adRequestParcel, String str, String str2, zzeo com_google_android_gms_internal_zzeo) throws RemoteException {
        if (this.zzzP instanceof MediationBannerAdapter) {
            zzb.zzaF("Requesting banner ad from adapter.");
            try {
                ((MediationBannerAdapter) this.zzzP).requestBannerAd(new zzez(com_google_android_gms_internal_zzeo), (Activity) zze.zzp(com_google_android_gms_dynamic_zzd), zzb(str, adRequestParcel.zzsF, str2), zzfa.zzb(adSizeParcel), zzfa.zzh(adRequestParcel), this.zzzQ);
            } catch (Throwable th) {
                zzb.zzd("Could not request banner ad from adapter.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            zzb.zzaH("MediationAdapter is not a MediationBannerAdapter: " + this.zzzP.getClass().getCanonicalName());
            throw new RemoteException();
        }
    }

    public zzeq zzdV() {
        return null;
    }

    public zzer zzdW() {
        return null;
    }

    public Bundle zzdX() {
        return new Bundle();
    }

    public Bundle zzdY() {
        return new Bundle();
    }

    public Bundle zzdZ() {
        return new Bundle();
    }
}
