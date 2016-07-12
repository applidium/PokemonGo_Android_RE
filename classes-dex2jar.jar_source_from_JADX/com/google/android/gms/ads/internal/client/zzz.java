package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.purchase.InAppPurchaseListener;
import com.google.android.gms.ads.purchase.PlayStorePurchaseListener;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzcl;
import com.google.android.gms.internal.zzel;
import com.google.android.gms.internal.zzfx;
import com.google.android.gms.internal.zzgb;
import java.util.concurrent.atomic.AtomicBoolean;

public class zzz {
    private final zzh zznL;
    private boolean zzoN;
    private String zzpa;
    private zza zzsy;
    private AdListener zzsz;
    private final zzel zztD;
    private final AtomicBoolean zztE;
    private zzs zztF;
    private String zztG;
    private ViewGroup zztH;
    private InAppPurchaseListener zztI;
    private PlayStorePurchaseListener zztJ;
    private OnCustomRenderedAdLoadedListener zztK;
    private AppEventListener zztj;
    private AdSize[] zztk;

    public zzz(ViewGroup viewGroup) {
        this(viewGroup, null, false, zzh.zzcB());
    }

    public zzz(ViewGroup viewGroup, AttributeSet attributeSet, boolean z) {
        this(viewGroup, attributeSet, z, zzh.zzcB());
    }

    zzz(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, zzh com_google_android_gms_ads_internal_client_zzh) {
        this(viewGroup, attributeSet, z, com_google_android_gms_ads_internal_client_zzh, null);
    }

    zzz(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, zzh com_google_android_gms_ads_internal_client_zzh, zzs com_google_android_gms_ads_internal_client_zzs) {
        this.zztD = new zzel();
        this.zztH = viewGroup;
        this.zznL = com_google_android_gms_ads_internal_client_zzh;
        this.zztF = com_google_android_gms_ads_internal_client_zzs;
        this.zztE = new AtomicBoolean(false);
        if (attributeSet != null) {
            Context context = viewGroup.getContext();
            try {
                zzk com_google_android_gms_ads_internal_client_zzk = new zzk(context, attributeSet);
                this.zztk = com_google_android_gms_ads_internal_client_zzk.zzi(z);
                this.zzpa = com_google_android_gms_ads_internal_client_zzk.getAdUnitId();
                if (viewGroup.isInEditMode()) {
                    zzl.zzcF().zza(viewGroup, new AdSizeParcel(context, this.zztk[0]), "Ads by Google");
                }
            } catch (IllegalArgumentException e) {
                zzl.zzcF().zza(viewGroup, new AdSizeParcel(context, AdSize.BANNER), e.getMessage(), e.getMessage());
            }
        }
    }

    private void zzcS() {
        try {
            zzd zzaM = this.zztF.zzaM();
            if (zzaM != null) {
                this.zztH.addView((View) zze.zzp(zzaM));
            }
        } catch (Throwable e) {
            zzb.zzd("Failed to get an ad frame.", e);
        }
    }

    public void destroy() {
        try {
            if (this.zztF != null) {
                this.zztF.destroy();
            }
        } catch (Throwable e) {
            zzb.zzd("Failed to destroy AdView.", e);
        }
    }

    public AdListener getAdListener() {
        return this.zzsz;
    }

    public AdSize getAdSize() {
        try {
            if (this.zztF != null) {
                AdSizeParcel zzaN = this.zztF.zzaN();
                if (zzaN != null) {
                    return zzaN.zzcD();
                }
            }
        } catch (Throwable e) {
            zzb.zzd("Failed to get the current AdSize.", e);
        }
        return this.zztk != null ? this.zztk[0] : null;
    }

    public AdSize[] getAdSizes() {
        return this.zztk;
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

    public boolean isLoading() {
        try {
            if (this.zztF != null) {
                return this.zztF.isLoading();
            }
        } catch (Throwable e) {
            zzb.zzd("Failed to check if ad is loading.", e);
        }
        return false;
    }

    public void pause() {
        try {
            if (this.zztF != null) {
                this.zztF.pause();
            }
        } catch (Throwable e) {
            zzb.zzd("Failed to call pause.", e);
        }
    }

    public void recordManualImpression() {
        if (!this.zztE.getAndSet(true)) {
            try {
                if (this.zztF != null) {
                    this.zztF.zzaP();
                }
            } catch (Throwable e) {
                zzb.zzd("Failed to record impression.", e);
            }
        }
    }

    public void resume() {
        try {
            if (this.zztF != null) {
                this.zztF.resume();
            }
        } catch (Throwable e) {
            zzb.zzd("Failed to call resume.", e);
        }
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

    public void setAdSizes(AdSize... adSizeArr) {
        if (this.zztk != null) {
            throw new IllegalStateException("The ad size can only be set once on AdView.");
        }
        zza(adSizeArr);
    }

    public void setAdUnitId(String str) {
        if (this.zzpa != null) {
            throw new IllegalStateException("The ad unit ID can only be set once on AdView.");
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

    public void setManualImpressionsEnabled(boolean z) {
        this.zzoN = z;
        try {
            if (this.zztF != null) {
                this.zztF.setManualImpressionsEnabled(this.zzoN);
            }
        } catch (Throwable e) {
            zzb.zzd("Failed to set manual impressions.", e);
        }
    }

    public void setOnCustomRenderedAdLoadedListener(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        this.zztK = onCustomRenderedAdLoadedListener;
        try {
            if (this.zztF != null) {
                this.zztF.zza(onCustomRenderedAdLoadedListener != null ? new zzcl(onCustomRenderedAdLoadedListener) : null);
            }
        } catch (Throwable e) {
            zzb.zzd("Failed to set the onCustomRenderedAdLoadedListener.", e);
        }
    }

    public void setPlayStorePurchaseParams(PlayStorePurchaseListener playStorePurchaseListener, String str) {
        if (this.zztI != null) {
            throw new IllegalStateException("InAppPurchaseListener has already been set.");
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
                zzcT();
            }
            if (this.zztF.zzb(this.zznL.zza(this.zztH.getContext(), com_google_android_gms_ads_internal_client_zzy))) {
                this.zztD.zze(com_google_android_gms_ads_internal_client_zzy.zzcO());
            }
        } catch (Throwable e) {
            zzb.zzd("Failed to load ad.", e);
        }
    }

    public void zza(AdSize... adSizeArr) {
        this.zztk = adSizeArr;
        try {
            if (this.zztF != null) {
                this.zztF.zza(new AdSizeParcel(this.zztH.getContext(), this.zztk));
            }
        } catch (Throwable e) {
            zzb.zzd("Failed to set the ad size.", e);
        }
        this.zztH.requestLayout();
    }

    void zzcT() throws RemoteException {
        if ((this.zztk == null || this.zzpa == null) && this.zztF == null) {
            throw new IllegalStateException("The ad size and ad unit ID must be set before loadAd is called.");
        }
        this.zztF = zzcU();
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
        this.zztF.zza(zzl.zzcH());
        this.zztF.setManualImpressionsEnabled(this.zzoN);
        zzcS();
    }

    protected zzs zzcU() throws RemoteException {
        Context context = this.zztH.getContext();
        return zzl.zzcG().zza(context, new AdSizeParcel(context, this.zztk), this.zzpa, this.zztD);
    }
}
