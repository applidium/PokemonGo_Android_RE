package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;
import com.google.android.gms.ads.doubleclick.PublisherInterstitialAd;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.purchase.InAppPurchaseListener;
import com.google.android.gms.ads.purchase.PlayStorePurchaseListener;
import com.google.android.gms.internal.zzcl;
import com.google.android.gms.internal.zzel;
import com.google.android.gms.internal.zzfx;
import com.google.android.gms.internal.zzgb;

public class zzaa {
    private final Context mContext;
    private final zzh zznL;
    private String zzpa;
    private zza zzsy;
    private AdListener zzsz;
    private final zzel zztD;
    private zzs zztF;
    private String zztG;
    private InAppPurchaseListener zztI;
    private PlayStorePurchaseListener zztJ;
    private OnCustomRenderedAdLoadedListener zztK;
    private PublisherInterstitialAd zztL;
    private AppEventListener zztj;

    public zzaa(Context context) {
        this(context, zzh.zzcB(), null);
    }

    public zzaa(Context context, PublisherInterstitialAd publisherInterstitialAd) {
        this(context, zzh.zzcB(), publisherInterstitialAd);
    }

    public zzaa(Context context, zzh com_google_android_gms_ads_internal_client_zzh, PublisherInterstitialAd publisherInterstitialAd) {
        this.zztD = new zzel();
        this.mContext = context;
        this.zznL = com_google_android_gms_ads_internal_client_zzh;
        this.zztL = publisherInterstitialAd;
    }

    private void zzM(String str) throws RemoteException {
        if (this.zzpa == null) {
            zzN(str);
        }
        this.zztF = zzl.zzcG().zzb(this.mContext, new AdSizeParcel(), this.zzpa, this.zztD);
        if (this.zzsz != null) {
            this.zztF.zza(new zzc(this.zzsz));
        }
        if (this.zzsy != null) {
            this.zztF.zza(new zzb(this.zzsy));
        }
        if (this.zztj != null) {
            this.zztF.zza(new zzj(this.zztj));
        }
        if (this.zztI != null) {
            this.zztF.zza(new zzfx(this.zztI));
        }
        if (this.zztJ != null) {
            this.zztF.zza(new zzgb(this.zztJ), this.zztG);
        }
        if (this.zztK != null) {
            this.zztF.zza(new zzcl(this.zztK));
        }
    }

    private void zzN(String str) {
        if (this.zztF == null) {
            throw new IllegalStateException("The ad unit ID must be set on InterstitialAd before " + str + " is called.");
        }
    }

    public AdListener getAdListener() {
        return this.zzsz;
    }

    public String getAdUnitId() {
        return this.zzpa;
    }

    public AppEventListener getAppEventListener() {
        return this.zztj;
    }

    public InAppPurchaseListener getInAppPurchaseListener() {
        return this.zztI;
    }

    public String getMediationAdapterClassName() {
        try {
            if (this.zztF != null) {
                return this.zztF.getMediationAdapterClassName();
            }
        } catch (Throwable e) {
            zzb.zzd("Failed to get the mediation adapter class name.", e);
        }
        return null;
    }

    public OnCustomRenderedAdLoadedListener getOnCustomRenderedAdLoadedListener() {
        return this.zztK;
    }

    public boolean isLoaded() {
        boolean z = false;
        try {
            if (this.zztF != null) {
                z = this.zztF.isReady();
            }
        } catch (Throwable e) {
            zzb.zzd("Failed to check if ad is ready.", e);
        }
        return z;
    }

    public boolean isLoading() {
        boolean z = false;
        try {
            if (this.zztF != null) {
                z = this.zztF.isLoading();
            }
        } catch (Throwable e) {
            zzb.zzd("Failed to check if ad is loading.", e);
        }
        return z;
    }

    public void setAdListener(AdListener adListener) {
        try {
            this.zzsz = adListener;
            if (this.zztF != null) {
                this.zztF.zza(adListener != null ? new zzc(adListener) : null);
            }
        } catch (Throwable e) {
            zzb.zzd("Failed to set the AdListener.", e);
        }
    }

    public void setAdUnitId(String str) {
        if (this.zzpa != null) {
            throw new IllegalStateException("The ad unit ID can only be set once on InterstitialAd.");
        }
        this.zzpa = str;
    }

    public void setAppEventListener(AppEventListener appEventListener) {
        try {
            this.zztj = appEventListener;
            if (this.zztF != null) {
                this.zztF.zza(appEventListener != null ? new zzj(appEventListener) : null);
            }
        } catch (Throwable e) {
            zzb.zzd("Failed to set the AppEventListener.", e);
        }
    }

    public void setInAppPurchaseListener(InAppPurchaseListener inAppPurchaseListener) {
        if (this.zztJ != null) {
            throw new IllegalStateException("Play store purchase parameter has already been set.");
        }
        try {
            this.zztI = inAppPurchaseListener;
            if (this.zztF != null) {
                this.zztF.zza(inAppPurchaseListener != null ? new zzfx(inAppPurchaseListener) : null);
            }
        } catch (Throwable e) {
            zzb.zzd("Failed to set the InAppPurchaseListener.", e);
        }
    }

    public void setOnCustomRenderedAdLoadedListener(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        try {
            this.zztK = onCustomRenderedAdLoadedListener;
            if (this.zztF != null) {
                this.zztF.zza(onCustomRenderedAdLoadedListener != null ? new zzcl(onCustomRenderedAdLoadedListener) : null);
            }
        } catch (Throwable e) {
            zzb.zzd("Failed to set the OnCustomRenderedAdLoadedListener.", e);
        }
    }

    public void setPlayStorePurchaseParams(PlayStorePurchaseListener playStorePurchaseListener, String str) {
        if (this.zztI != null) {
            throw new IllegalStateException("In app purchase parameter has already been set.");
        }
        try {
            this.zztJ = playStorePurchaseListener;
            this.zztG = str;
            if (this.zztF != null) {
                this.zztF.zza(playStorePurchaseListener != null ? new zzgb(playStorePurchaseListener) : null, str);
            }
        } catch (Throwable e) {
            zzb.zzd("Failed to set the play store purchase parameter.", e);
        }
    }

    public void show() {
        try {
            zzN("show");
            this.zztF.showInterstitial();
        } catch (Throwable e) {
            zzb.zzd("Failed to show interstitial.", e);
        }
    }

    public void zza(zza com_google_android_gms_ads_internal_client_zza) {
        try {
            this.zzsy = com_google_android_gms_ads_internal_client_zza;
            if (this.zztF != null) {
                this.zztF.zza(com_google_android_gms_ads_internal_client_zza != null ? new zzb(com_google_android_gms_ads_internal_client_zza) : null);
            }
        } catch (Throwable e) {
            zzb.zzd("Failed to set the AdClickListener.", e);
        }
    }

    public void zza(zzy com_google_android_gms_ads_internal_client_zzy) {
        try {
            if (this.zztF == null) {
                zzM("loadAd");
            }
            if (this.zztF.zzb(this.zznL.zza(this.mContext, com_google_android_gms_ads_internal_client_zzy))) {
                this.zztD.zze(com_google_android_gms_ads_internal_client_zzy.zzcO());
            }
        } catch (Throwable e) {
            zzb.zzd("Failed to load ad.", e);
        }
    }
}
