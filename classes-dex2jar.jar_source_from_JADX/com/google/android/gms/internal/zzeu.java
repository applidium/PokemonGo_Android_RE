package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationNativeListener;
import com.google.android.gms.ads.mediation.NativeAdMapper;
import com.google.android.gms.common.internal.zzx;

@zzgr
public final class zzeu implements MediationBannerListener, MediationInterstitialListener, MediationNativeListener {
    private final zzeo zzzL;
    private NativeAdMapper zzzM;

    public zzeu(zzeo com_google_android_gms_internal_zzeo) {
        this.zzzL = com_google_android_gms_internal_zzeo;
    }

    public void onAdClicked(MediationBannerAdapter mediationBannerAdapter) {
        zzx.zzci("onAdClicked must be called on the main UI thread.");
        zzb.zzaF("Adapter called onAdClicked.");
        try {
            this.zzzL.onAdClicked();
        } catch (Throwable e) {
            zzb.zzd("Could not call onAdClicked.", e);
        }
    }

    public void onAdClicked(MediationInterstitialAdapter mediationInterstitialAdapter) {
        zzx.zzci("onAdClicked must be called on the main UI thread.");
        zzb.zzaF("Adapter called onAdClicked.");
        try {
            this.zzzL.onAdClicked();
        } catch (Throwable e) {
            zzb.zzd("Could not call onAdClicked.", e);
        }
    }

    public void onAdClicked(MediationNativeAdapter mediationNativeAdapter) {
        zzx.zzci("onAdClicked must be called on the main UI thread.");
        zzb.zzaF("Adapter called onAdClicked.");
        try {
            this.zzzL.onAdClicked();
        } catch (Throwable e) {
            zzb.zzd("Could not call onAdClicked.", e);
        }
    }

    public void onAdClosed(MediationBannerAdapter mediationBannerAdapter) {
        zzx.zzci("onAdClosed must be called on the main UI thread.");
        zzb.zzaF("Adapter called onAdClosed.");
        try {
            this.zzzL.onAdClosed();
        } catch (Throwable e) {
            zzb.zzd("Could not call onAdClosed.", e);
        }
    }

    public void onAdClosed(MediationInterstitialAdapter mediationInterstitialAdapter) {
        zzx.zzci("onAdClosed must be called on the main UI thread.");
        zzb.zzaF("Adapter called onAdClosed.");
        try {
            this.zzzL.onAdClosed();
        } catch (Throwable e) {
            zzb.zzd("Could not call onAdClosed.", e);
        }
    }

    public void onAdClosed(MediationNativeAdapter mediationNativeAdapter) {
        zzx.zzci("onAdClosed must be called on the main UI thread.");
        zzb.zzaF("Adapter called onAdClosed.");
        try {
            this.zzzL.onAdClosed();
        } catch (Throwable e) {
            zzb.zzd("Could not call onAdClosed.", e);
        }
    }

    public void onAdFailedToLoad(MediationBannerAdapter mediationBannerAdapter, int i) {
        zzx.zzci("onAdFailedToLoad must be called on the main UI thread.");
        zzb.zzaF("Adapter called onAdFailedToLoad with error. " + i);
        try {
            this.zzzL.onAdFailedToLoad(i);
        } catch (Throwable e) {
            zzb.zzd("Could not call onAdFailedToLoad.", e);
        }
    }

    public void onAdFailedToLoad(MediationInterstitialAdapter mediationInterstitialAdapter, int i) {
        zzx.zzci("onAdFailedToLoad must be called on the main UI thread.");
        zzb.zzaF("Adapter called onAdFailedToLoad with error " + i + ".");
        try {
            this.zzzL.onAdFailedToLoad(i);
        } catch (Throwable e) {
            zzb.zzd("Could not call onAdFailedToLoad.", e);
        }
    }

    public void onAdFailedToLoad(MediationNativeAdapter mediationNativeAdapter, int i) {
        zzx.zzci("onAdFailedToLoad must be called on the main UI thread.");
        zzb.zzaF("Adapter called onAdFailedToLoad with error " + i + ".");
        try {
            this.zzzL.onAdFailedToLoad(i);
        } catch (Throwable e) {
            zzb.zzd("Could not call onAdFailedToLoad.", e);
        }
    }

    public void onAdLeftApplication(MediationBannerAdapter mediationBannerAdapter) {
        zzx.zzci("onAdLeftApplication must be called on the main UI thread.");
        zzb.zzaF("Adapter called onAdLeftApplication.");
        try {
            this.zzzL.onAdLeftApplication();
        } catch (Throwable e) {
            zzb.zzd("Could not call onAdLeftApplication.", e);
        }
    }

    public void onAdLeftApplication(MediationInterstitialAdapter mediationInterstitialAdapter) {
        zzx.zzci("onAdLeftApplication must be called on the main UI thread.");
        zzb.zzaF("Adapter called onAdLeftApplication.");
        try {
            this.zzzL.onAdLeftApplication();
        } catch (Throwable e) {
            zzb.zzd("Could not call onAdLeftApplication.", e);
        }
    }

    public void onAdLeftApplication(MediationNativeAdapter mediationNativeAdapter) {
        zzx.zzci("onAdLeftApplication must be called on the main UI thread.");
        zzb.zzaF("Adapter called onAdLeftApplication.");
        try {
            this.zzzL.onAdLeftApplication();
        } catch (Throwable e) {
            zzb.zzd("Could not call onAdLeftApplication.", e);
        }
    }

    public void onAdLoaded(MediationBannerAdapter mediationBannerAdapter) {
        zzx.zzci("onAdLoaded must be called on the main UI thread.");
        zzb.zzaF("Adapter called onAdLoaded.");
        try {
            this.zzzL.onAdLoaded();
        } catch (Throwable e) {
            zzb.zzd("Could not call onAdLoaded.", e);
        }
    }

    public void onAdLoaded(MediationInterstitialAdapter mediationInterstitialAdapter) {
        zzx.zzci("onAdLoaded must be called on the main UI thread.");
        zzb.zzaF("Adapter called onAdLoaded.");
        try {
            this.zzzL.onAdLoaded();
        } catch (Throwable e) {
            zzb.zzd("Could not call onAdLoaded.", e);
        }
    }

    public void onAdLoaded(MediationNativeAdapter mediationNativeAdapter, NativeAdMapper nativeAdMapper) {
        zzx.zzci("onAdLoaded must be called on the main UI thread.");
        zzb.zzaF("Adapter called onAdLoaded.");
        this.zzzM = nativeAdMapper;
        try {
            this.zzzL.onAdLoaded();
        } catch (Throwable e) {
            zzb.zzd("Could not call onAdLoaded.", e);
        }
    }

    public void onAdOpened(MediationBannerAdapter mediationBannerAdapter) {
        zzx.zzci("onAdOpened must be called on the main UI thread.");
        zzb.zzaF("Adapter called onAdOpened.");
        try {
            this.zzzL.onAdOpened();
        } catch (Throwable e) {
            zzb.zzd("Could not call onAdOpened.", e);
        }
    }

    public void onAdOpened(MediationInterstitialAdapter mediationInterstitialAdapter) {
        zzx.zzci("onAdOpened must be called on the main UI thread.");
        zzb.zzaF("Adapter called onAdOpened.");
        try {
            this.zzzL.onAdOpened();
        } catch (Throwable e) {
            zzb.zzd("Could not call onAdOpened.", e);
        }
    }

    public void onAdOpened(MediationNativeAdapter mediationNativeAdapter) {
        zzx.zzci("onAdOpened must be called on the main UI thread.");
        zzb.zzaF("Adapter called onAdOpened.");
        try {
            this.zzzL.onAdOpened();
        } catch (Throwable e) {
            zzb.zzd("Could not call onAdOpened.", e);
        }
    }

    public NativeAdMapper zzeb() {
        return this.zzzM;
    }
}
