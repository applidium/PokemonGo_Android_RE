package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.Window;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzby;
import com.google.android.gms.internal.zzcg;
import com.google.android.gms.internal.zzdo;
import com.google.android.gms.internal.zzem;
import com.google.android.gms.internal.zzgr;
import com.google.android.gms.internal.zzhs;
import com.google.android.gms.internal.zzhz;
import com.google.android.gms.internal.zzid;
import com.google.android.gms.internal.zziz;
import com.upsight.android.internal.persistence.PersistenceModule;

@zzgr
public class zzk extends zzc implements zzdo {
    protected transient boolean zzpk;
    private boolean zzpl;
    private float zzpm;
    private String zzpn;

    @zzgr
    private class zza extends zzhz {
        private final String zzpo;
        final /* synthetic */ zzk zzpp;

        public zza(zzk com_google_android_gms_ads_internal_zzk, String str) {
            this.zzpp = com_google_android_gms_ads_internal_zzk;
            this.zzpo = str;
        }

        public void onStop() {
        }

        public void zzbn() {
            zzp.zzbv().zzh(this.zzpp.zzot.context, this.zzpo);
        }
    }

    @zzgr
    private class zzb extends zzhz {
        private final String zzpo;
        final /* synthetic */ zzk zzpp;
        private final Bitmap zzpq;

        /* renamed from: com.google.android.gms.ads.internal.zzk.zzb.1 */
        class C02081 implements Runnable {
            final /* synthetic */ AdOverlayInfoParcel zzpr;
            final /* synthetic */ zzb zzps;

            C02081(zzb com_google_android_gms_ads_internal_zzk_zzb, AdOverlayInfoParcel adOverlayInfoParcel) {
                this.zzps = com_google_android_gms_ads_internal_zzk_zzb;
                this.zzpr = adOverlayInfoParcel;
            }

            public void run() {
                zzp.zzbt().zza(this.zzps.zzpp.zzot.context, this.zzpr);
            }
        }

        public zzb(zzk com_google_android_gms_ads_internal_zzk, Bitmap bitmap, String str) {
            this.zzpp = com_google_android_gms_ads_internal_zzk;
            this.zzpq = bitmap;
            this.zzpo = str;
        }

        public void onStop() {
        }

        public void zzbn() {
            InterstitialAdParameterParcel interstitialAdParameterParcel = new InterstitialAdParameterParcel(this.zzpp.zzot.zzpt, this.zzpp.zzbl(), this.zzpp.zzot.zzpt ? zzp.zzbv().zza(this.zzpp.zzot.context, this.zzpq, this.zzpo) : false ? this.zzpo : null, this.zzpp.zzpl, this.zzpp.zzpm);
            int requestedOrientation = this.zzpp.zzot.zzqo.zzBD.getRequestedOrientation();
            if (requestedOrientation == -1) {
                requestedOrientation = this.zzpp.zzot.zzqo.orientation;
            }
            zzid.zzIE.post(new C02081(this, new AdOverlayInfoParcel(this.zzpp, this.zzpp, this.zzpp, this.zzpp.zzot.zzqo.zzBD, requestedOrientation, this.zzpp.zzot.zzqj, this.zzpp.zzot.zzqo.zzEP, interstitialAdParameterParcel)));
        }
    }

    public zzk(Context context, AdSizeParcel adSizeParcel, String str, zzem com_google_android_gms_internal_zzem, VersionInfoParcel versionInfoParcel, zzd com_google_android_gms_ads_internal_zzd) {
        super(context, adSizeParcel, str, com_google_android_gms_internal_zzem, versionInfoParcel, com_google_android_gms_ads_internal_zzd);
        this.zzpk = false;
        this.zzpn = PersistenceModule.DATA_STORE_BACKGROUND + hashCode() + "." + "png";
    }

    private void zzb(Bundle bundle) {
        zzp.zzbv().zzb(this.zzot.context, this.zzot.zzqj.zzJu, "gmob-apps", bundle, false);
    }

    private void zzbm() {
        new zza(this, this.zzpn).zzgz();
        if (this.zzot.zzbN()) {
            this.zzot.zzbK();
            this.zzot.zzqo = null;
            this.zzot.zzpt = false;
            this.zzpk = false;
        }
    }

    public void showInterstitial() {
        zzx.zzci("showInterstitial must be called on the main UI thread.");
        if (this.zzot.zzqo == null) {
            com.google.android.gms.ads.internal.util.client.zzb.zzaH("The interstitial has not loaded.");
            return;
        }
        if (((Boolean) zzby.zzvo.get()).booleanValue()) {
            Bundle bundle;
            String packageName = this.zzot.context.getApplicationContext() != null ? this.zzot.context.getApplicationContext().getPackageName() : this.zzot.context.getPackageName();
            if (!this.zzpk) {
                com.google.android.gms.ads.internal.util.client.zzb.zzaH("It is not recommended to show an interstitial before onAdLoaded completes.");
                bundle = new Bundle();
                bundle.putString("appid", packageName);
                bundle.putString("action", "show_interstitial_before_load_finish");
                zzb(bundle);
            }
            if (!zzp.zzbv().zzN(this.zzot.context)) {
                com.google.android.gms.ads.internal.util.client.zzb.zzaH("It is not recommended to show an interstitial when app is not in foreground.");
                bundle = new Bundle();
                bundle.putString("appid", packageName);
                bundle.putString("action", "show_interstitial_app_not_in_foreground");
                zzb(bundle);
            }
        }
        if (!this.zzot.zzbO()) {
            if (this.zzot.zzqo.zzEK) {
                try {
                    this.zzot.zzqo.zzzv.showInterstitial();
                } catch (Throwable e) {
                    com.google.android.gms.ads.internal.util.client.zzb.zzd("Could not show interstitial.", e);
                    zzbm();
                }
            } else if (this.zzot.zzqo.zzBD == null) {
                com.google.android.gms.ads.internal.util.client.zzb.zzaH("The interstitial failed to load.");
            } else if (this.zzot.zzqo.zzBD.zzhi()) {
                com.google.android.gms.ads.internal.util.client.zzb.zzaH("The interstitial is already showing.");
            } else {
                this.zzot.zzqo.zzBD.zzC(true);
                if (this.zzot.zzqo.zzHw != null) {
                    this.zzov.zza(this.zzot.zzqn, this.zzot.zzqo);
                }
                Bitmap zzO = this.zzot.zzpt ? zzp.zzbv().zzO(this.zzot.context) : null;
                if (!((Boolean) zzby.zzvz.get()).booleanValue() || zzO == null) {
                    InterstitialAdParameterParcel interstitialAdParameterParcel = new InterstitialAdParameterParcel(this.zzot.zzpt, zzbl(), null, false, 0.0f);
                    int requestedOrientation = this.zzot.zzqo.zzBD.getRequestedOrientation();
                    if (requestedOrientation == -1) {
                        requestedOrientation = this.zzot.zzqo.orientation;
                    }
                    zzp.zzbt().zza(this.zzot.context, new AdOverlayInfoParcel(this, this, this, this.zzot.zzqo.zzBD, requestedOrientation, this.zzot.zzqj, this.zzot.zzqo.zzEP, interstitialAdParameterParcel));
                    return;
                }
                new zzb(this, zzO, this.zzpn).zzgz();
            }
        }
    }

    protected zziz zza(com.google.android.gms.internal.zzhs.zza com_google_android_gms_internal_zzhs_zza, zze com_google_android_gms_ads_internal_zze) {
        zziz zza = zzp.zzbw().zza(this.zzot.context, this.zzot.zzqn, false, false, this.zzot.zzqi, this.zzot.zzqj, this.zzoo, this.zzow);
        zza.zzhe().zzb(this, null, this, this, ((Boolean) zzby.zzvc.get()).booleanValue(), this, this, com_google_android_gms_ads_internal_zze, null);
        zza.zzaJ(com_google_android_gms_internal_zzhs_zza.zzHC.zzEC);
        return zza;
    }

    public void zza(boolean z, float f) {
        this.zzpl = z;
        this.zzpm = f;
    }

    public boolean zza(AdRequestParcel adRequestParcel, zzcg com_google_android_gms_internal_zzcg) {
        if (this.zzot.zzqo == null) {
            return super.zza(adRequestParcel, com_google_android_gms_internal_zzcg);
        }
        com.google.android.gms.ads.internal.util.client.zzb.zzaH("An interstitial is already loading. Aborting.");
        return false;
    }

    protected boolean zza(AdRequestParcel adRequestParcel, zzhs com_google_android_gms_internal_zzhs, boolean z) {
        if (this.zzot.zzbN() && com_google_android_gms_internal_zzhs.zzBD != null) {
            zzp.zzbx().zza(com_google_android_gms_internal_zzhs.zzBD.getWebView());
        }
        return this.zzos.zzbp();
    }

    public boolean zza(zzhs com_google_android_gms_internal_zzhs, zzhs com_google_android_gms_internal_zzhs2) {
        if (!super.zza(com_google_android_gms_internal_zzhs, com_google_android_gms_internal_zzhs2)) {
            return false;
        }
        if (!(this.zzot.zzbN() || this.zzot.zzqG == null || com_google_android_gms_internal_zzhs2.zzHw == null)) {
            this.zzov.zza(this.zzot.zzqn, com_google_android_gms_internal_zzhs2, this.zzot.zzqG);
        }
        return true;
    }

    protected boolean zzaQ() {
        zzbm();
        return super.zzaQ();
    }

    protected boolean zzaT() {
        if (!super.zzaT()) {
            return false;
        }
        this.zzpk = true;
        return true;
    }

    public void zzaW() {
        recordImpression();
        super.zzaW();
    }

    protected boolean zzbl() {
        if (!(this.zzot.context instanceof Activity)) {
            return false;
        }
        Window window = ((Activity) this.zzot.context).getWindow();
        if (window == null || window.getDecorView() == null) {
            return false;
        }
        Rect rect = new Rect();
        Rect rect2 = new Rect();
        window.getDecorView().getGlobalVisibleRect(rect, null);
        window.getDecorView().getWindowVisibleDisplayFrame(rect2);
        return (rect.bottom == 0 || rect2.bottom == 0 || rect.top != rect2.top) ? false : true;
    }

    public void zzd(boolean z) {
        this.zzot.zzpt = z;
    }
}
