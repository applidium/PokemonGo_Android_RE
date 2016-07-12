package com.google.android.gms.internal;

import com.google.ads.AdRequest.ErrorCode;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationBannerListener;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationInterstitialListener;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.internal.client.zzl;
import com.google.android.gms.ads.internal.util.client.zza;
import com.google.android.gms.ads.internal.util.client.zzb;

@zzgr
public final class zzez<NETWORK_EXTRAS extends NetworkExtras, SERVER_PARAMETERS extends MediationServerParameters> implements MediationBannerListener, MediationInterstitialListener {
    private final zzeo zzzL;

    /* renamed from: com.google.android.gms.internal.zzez.10 */
    class AnonymousClass10 implements Runnable {
        final /* synthetic */ zzez zzzR;
        final /* synthetic */ ErrorCode zzzS;

        AnonymousClass10(zzez com_google_android_gms_internal_zzez, ErrorCode errorCode) {
            this.zzzR = com_google_android_gms_internal_zzez;
            this.zzzS = errorCode;
        }

        public void run() {
            try {
                this.zzzR.zzzL.onAdFailedToLoad(zzfa.zza(this.zzzS));
            } catch (Throwable e) {
                zzb.zzd("Could not call onAdFailedToLoad.", e);
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.zzez.1 */
    class C05301 implements Runnable {
        final /* synthetic */ zzez zzzR;

        C05301(zzez com_google_android_gms_internal_zzez) {
            this.zzzR = com_google_android_gms_internal_zzez;
        }

        public void run() {
            try {
                this.zzzR.zzzL.onAdClicked();
            } catch (Throwable e) {
                zzb.zzd("Could not call onAdClicked.", e);
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.zzez.2 */
    class C05312 implements Runnable {
        final /* synthetic */ zzez zzzR;

        C05312(zzez com_google_android_gms_internal_zzez) {
            this.zzzR = com_google_android_gms_internal_zzez;
        }

        public void run() {
            try {
                this.zzzR.zzzL.onAdOpened();
            } catch (Throwable e) {
                zzb.zzd("Could not call onAdOpened.", e);
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.zzez.3 */
    class C05323 implements Runnable {
        final /* synthetic */ zzez zzzR;

        C05323(zzez com_google_android_gms_internal_zzez) {
            this.zzzR = com_google_android_gms_internal_zzez;
        }

        public void run() {
            try {
                this.zzzR.zzzL.onAdLoaded();
            } catch (Throwable e) {
                zzb.zzd("Could not call onAdLoaded.", e);
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.zzez.4 */
    class C05334 implements Runnable {
        final /* synthetic */ zzez zzzR;

        C05334(zzez com_google_android_gms_internal_zzez) {
            this.zzzR = com_google_android_gms_internal_zzez;
        }

        public void run() {
            try {
                this.zzzR.zzzL.onAdClosed();
            } catch (Throwable e) {
                zzb.zzd("Could not call onAdClosed.", e);
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.zzez.5 */
    class C05345 implements Runnable {
        final /* synthetic */ zzez zzzR;
        final /* synthetic */ ErrorCode zzzS;

        C05345(zzez com_google_android_gms_internal_zzez, ErrorCode errorCode) {
            this.zzzR = com_google_android_gms_internal_zzez;
            this.zzzS = errorCode;
        }

        public void run() {
            try {
                this.zzzR.zzzL.onAdFailedToLoad(zzfa.zza(this.zzzS));
            } catch (Throwable e) {
                zzb.zzd("Could not call onAdFailedToLoad.", e);
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.zzez.6 */
    class C05356 implements Runnable {
        final /* synthetic */ zzez zzzR;

        C05356(zzez com_google_android_gms_internal_zzez) {
            this.zzzR = com_google_android_gms_internal_zzez;
        }

        public void run() {
            try {
                this.zzzR.zzzL.onAdLeftApplication();
            } catch (Throwable e) {
                zzb.zzd("Could not call onAdLeftApplication.", e);
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.zzez.7 */
    class C05367 implements Runnable {
        final /* synthetic */ zzez zzzR;

        C05367(zzez com_google_android_gms_internal_zzez) {
            this.zzzR = com_google_android_gms_internal_zzez;
        }

        public void run() {
            try {
                this.zzzR.zzzL.onAdOpened();
            } catch (Throwable e) {
                zzb.zzd("Could not call onAdOpened.", e);
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.zzez.8 */
    class C05378 implements Runnable {
        final /* synthetic */ zzez zzzR;

        C05378(zzez com_google_android_gms_internal_zzez) {
            this.zzzR = com_google_android_gms_internal_zzez;
        }

        public void run() {
            try {
                this.zzzR.zzzL.onAdLoaded();
            } catch (Throwable e) {
                zzb.zzd("Could not call onAdLoaded.", e);
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.zzez.9 */
    class C05389 implements Runnable {
        final /* synthetic */ zzez zzzR;

        C05389(zzez com_google_android_gms_internal_zzez) {
            this.zzzR = com_google_android_gms_internal_zzez;
        }

        public void run() {
            try {
                this.zzzR.zzzL.onAdClosed();
            } catch (Throwable e) {
                zzb.zzd("Could not call onAdClosed.", e);
            }
        }
    }

    public zzez(zzeo com_google_android_gms_internal_zzeo) {
        this.zzzL = com_google_android_gms_internal_zzeo;
    }

    public void onClick(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzb.zzaF("Adapter called onClick.");
        if (zzl.zzcF().zzgT()) {
            try {
                this.zzzL.onAdClicked();
                return;
            } catch (Throwable e) {
                zzb.zzd("Could not call onAdClicked.", e);
                return;
            }
        }
        zzb.zzaH("onClick must be called on the main UI thread.");
        zza.zzJt.post(new C05301(this));
    }

    public void onDismissScreen(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzb.zzaF("Adapter called onDismissScreen.");
        if (zzl.zzcF().zzgT()) {
            try {
                this.zzzL.onAdClosed();
                return;
            } catch (Throwable e) {
                zzb.zzd("Could not call onAdClosed.", e);
                return;
            }
        }
        zzb.zzaH("onDismissScreen must be called on the main UI thread.");
        zza.zzJt.post(new C05334(this));
    }

    public void onDismissScreen(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        zzb.zzaF("Adapter called onDismissScreen.");
        if (zzl.zzcF().zzgT()) {
            try {
                this.zzzL.onAdClosed();
                return;
            } catch (Throwable e) {
                zzb.zzd("Could not call onAdClosed.", e);
                return;
            }
        }
        zzb.zzaH("onDismissScreen must be called on the main UI thread.");
        zza.zzJt.post(new C05389(this));
    }

    public void onFailedToReceiveAd(MediationBannerAdapter<?, ?> mediationBannerAdapter, ErrorCode errorCode) {
        zzb.zzaF("Adapter called onFailedToReceiveAd with error. " + errorCode);
        if (zzl.zzcF().zzgT()) {
            try {
                this.zzzL.onAdFailedToLoad(zzfa.zza(errorCode));
                return;
            } catch (Throwable e) {
                zzb.zzd("Could not call onAdFailedToLoad.", e);
                return;
            }
        }
        zzb.zzaH("onFailedToReceiveAd must be called on the main UI thread.");
        zza.zzJt.post(new C05345(this, errorCode));
    }

    public void onFailedToReceiveAd(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter, ErrorCode errorCode) {
        zzb.zzaF("Adapter called onFailedToReceiveAd with error " + errorCode + ".");
        if (zzl.zzcF().zzgT()) {
            try {
                this.zzzL.onAdFailedToLoad(zzfa.zza(errorCode));
                return;
            } catch (Throwable e) {
                zzb.zzd("Could not call onAdFailedToLoad.", e);
                return;
            }
        }
        zzb.zzaH("onFailedToReceiveAd must be called on the main UI thread.");
        zza.zzJt.post(new AnonymousClass10(this, errorCode));
    }

    public void onLeaveApplication(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzb.zzaF("Adapter called onLeaveApplication.");
        if (zzl.zzcF().zzgT()) {
            try {
                this.zzzL.onAdLeftApplication();
                return;
            } catch (Throwable e) {
                zzb.zzd("Could not call onAdLeftApplication.", e);
                return;
            }
        }
        zzb.zzaH("onLeaveApplication must be called on the main UI thread.");
        zza.zzJt.post(new C05356(this));
    }

    public void onLeaveApplication(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        zzb.zzaF("Adapter called onLeaveApplication.");
        if (zzl.zzcF().zzgT()) {
            try {
                this.zzzL.onAdLeftApplication();
                return;
            } catch (Throwable e) {
                zzb.zzd("Could not call onAdLeftApplication.", e);
                return;
            }
        }
        zzb.zzaH("onLeaveApplication must be called on the main UI thread.");
        zza.zzJt.post(new Runnable() {
            final /* synthetic */ zzez zzzR;

            {
                this.zzzR = r1;
            }

            public void run() {
                try {
                    this.zzzR.zzzL.onAdLeftApplication();
                } catch (Throwable e) {
                    zzb.zzd("Could not call onAdLeftApplication.", e);
                }
            }
        });
    }

    public void onPresentScreen(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzb.zzaF("Adapter called onPresentScreen.");
        if (zzl.zzcF().zzgT()) {
            try {
                this.zzzL.onAdOpened();
                return;
            } catch (Throwable e) {
                zzb.zzd("Could not call onAdOpened.", e);
                return;
            }
        }
        zzb.zzaH("onPresentScreen must be called on the main UI thread.");
        zza.zzJt.post(new C05367(this));
    }

    public void onPresentScreen(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        zzb.zzaF("Adapter called onPresentScreen.");
        if (zzl.zzcF().zzgT()) {
            try {
                this.zzzL.onAdOpened();
                return;
            } catch (Throwable e) {
                zzb.zzd("Could not call onAdOpened.", e);
                return;
            }
        }
        zzb.zzaH("onPresentScreen must be called on the main UI thread.");
        zza.zzJt.post(new C05312(this));
    }

    public void onReceivedAd(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzb.zzaF("Adapter called onReceivedAd.");
        if (zzl.zzcF().zzgT()) {
            try {
                this.zzzL.onAdLoaded();
                return;
            } catch (Throwable e) {
                zzb.zzd("Could not call onAdLoaded.", e);
                return;
            }
        }
        zzb.zzaH("onReceivedAd must be called on the main UI thread.");
        zza.zzJt.post(new C05378(this));
    }

    public void onReceivedAd(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        zzb.zzaF("Adapter called onReceivedAd.");
        if (zzl.zzcF().zzgT()) {
            try {
                this.zzzL.onAdLoaded();
                return;
            } catch (Throwable e) {
                zzb.zzd("Could not call onAdLoaded.", e);
                return;
            }
        }
        zzb.zzaH("onReceivedAd must be called on the main UI thread.");
        zza.zzJt.post(new C05323(this));
    }
}
