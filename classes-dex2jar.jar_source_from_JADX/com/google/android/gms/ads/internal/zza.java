package com.google.android.gms.ads.internal;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewParent;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.ThinAdSizeParcel;
import com.google.android.gms.ads.internal.client.zzf;
import com.google.android.gms.ads.internal.client.zzl;
import com.google.android.gms.ads.internal.client.zzo;
import com.google.android.gms.ads.internal.client.zzu;
import com.google.android.gms.ads.internal.client.zzv;
import com.google.android.gms.ads.internal.overlay.zzn;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzay;
import com.google.android.gms.internal.zzbh;
import com.google.android.gms.internal.zzbk;
import com.google.android.gms.internal.zzby;
import com.google.android.gms.internal.zzce;
import com.google.android.gms.internal.zzcg;
import com.google.android.gms.internal.zzck;
import com.google.android.gms.internal.zzdg;
import com.google.android.gms.internal.zzfs;
import com.google.android.gms.internal.zzfw;
import com.google.android.gms.internal.zzgr;
import com.google.android.gms.internal.zzhs;
import com.google.android.gms.internal.zzht;
import com.google.android.gms.internal.zzhw;
import com.google.android.gms.internal.zzhx;
import java.util.HashSet;

@zzgr
public abstract class zza extends com.google.android.gms.ads.internal.client.zzs.zza implements com.google.android.gms.ads.internal.client.zza, zzn, com.google.android.gms.ads.internal.request.zza.zza, zzdg, com.google.android.gms.internal.zzgg.zza, zzhw {
    protected zzcg zzoo;
    protected zzce zzop;
    protected zzce zzoq;
    boolean zzor;
    protected final zzo zzos;
    protected final zzq zzot;
    protected transient AdRequestParcel zzou;
    protected final zzay zzov;
    protected final zzd zzow;

    zza(zzq com_google_android_gms_ads_internal_zzq, zzo com_google_android_gms_ads_internal_zzo, zzd com_google_android_gms_ads_internal_zzd) {
        this.zzor = false;
        this.zzot = com_google_android_gms_ads_internal_zzq;
        if (com_google_android_gms_ads_internal_zzo == null) {
            com_google_android_gms_ads_internal_zzo = new zzo(this);
        }
        this.zzos = com_google_android_gms_ads_internal_zzo;
        this.zzow = com_google_android_gms_ads_internal_zzd;
        zzp.zzbv().zzI(this.zzot.context);
        zzp.zzby().zzb(this.zzot.context, this.zzot.zzqj);
        this.zzov = zzp.zzby().zzgt();
    }

    private AdRequestParcel zza(AdRequestParcel adRequestParcel) {
        return (!GooglePlayServicesUtil.zzag(this.zzot.context) || adRequestParcel.zzsJ == null) ? adRequestParcel : new zzf(adRequestParcel).zza(null).zzcA();
    }

    private boolean zzaR() {
        zzb.zzaG("Ad leaving application.");
        if (this.zzot.zzqs == null) {
            return false;
        }
        try {
            this.zzot.zzqs.onAdLeftApplication();
            return true;
        } catch (Throwable e) {
            zzb.zzd("Could not call AdListener.onAdLeftApplication().", e);
            return false;
        }
    }

    public void destroy() {
        zzx.zzci("destroy must be called on the main UI thread.");
        this.zzos.cancel();
        this.zzov.zzf(this.zzot.zzqo);
        this.zzot.destroy();
    }

    public boolean isLoading() {
        return this.zzor;
    }

    public boolean isReady() {
        zzx.zzci("isLoaded must be called on the main UI thread.");
        return this.zzot.zzql == null && this.zzot.zzqm == null && this.zzot.zzqo != null;
    }

    public void onAdClicked() {
        if (this.zzot.zzqo == null) {
            zzb.zzaH("Ad state was null when trying to ping click URLs.");
            return;
        }
        zzb.zzaF("Pinging click URLs.");
        this.zzot.zzqq.zzgg();
        if (this.zzot.zzqo.zzyY != null) {
            zzp.zzbv().zza(this.zzot.context, this.zzot.zzqj.zzJu, this.zzot.zzqo.zzyY);
        }
        if (this.zzot.zzqr != null) {
            try {
                this.zzot.zzqr.onAdClicked();
            } catch (Throwable e) {
                zzb.zzd("Could not notify onAdClicked event.", e);
            }
        }
    }

    public void onAppEvent(String str, String str2) {
        if (this.zzot.zzqt != null) {
            try {
                this.zzot.zzqt.onAppEvent(str, str2);
            } catch (Throwable e) {
                zzb.zzd("Could not call the AppEventListener.", e);
            }
        }
    }

    public void pause() {
        zzx.zzci("pause must be called on the main UI thread.");
    }

    protected void recordImpression() {
        zzc(this.zzot.zzqo);
    }

    public void resume() {
        zzx.zzci("resume must be called on the main UI thread.");
    }

    public void setManualImpressionsEnabled(boolean z) {
        throw new UnsupportedOperationException("Attempt to call setManualImpressionsEnabled for an unsupported ad type.");
    }

    public void stopLoading() {
        zzx.zzci("stopLoading must be called on the main UI thread.");
        this.zzor = false;
        this.zzot.zzf(true);
    }

    Bundle zza(zzbk com_google_android_gms_internal_zzbk) {
        if (com_google_android_gms_internal_zzbk == null) {
            return null;
        }
        String zzcm;
        if (com_google_android_gms_internal_zzbk.zzcx()) {
            com_google_android_gms_internal_zzbk.wakeup();
        }
        zzbh zzcv = com_google_android_gms_internal_zzbk.zzcv();
        if (zzcv != null) {
            zzcm = zzcv.zzcm();
            zzb.zzaF("In AdManger: loadAd, " + zzcv.toString());
        } else {
            zzcm = null;
        }
        if (zzcm == null) {
            return null;
        }
        Bundle bundle = new Bundle(1);
        bundle.putString("fingerprint", zzcm);
        bundle.putInt("v", 1);
        return bundle;
    }

    public void zza(AdSizeParcel adSizeParcel) {
        zzx.zzci("setAdSize must be called on the main UI thread.");
        this.zzot.zzqn = adSizeParcel;
        if (!(this.zzot.zzqo == null || this.zzot.zzqo.zzBD == null || this.zzot.zzqH != 0)) {
            this.zzot.zzqo.zzBD.zza(adSizeParcel);
        }
        if (this.zzot.zzqk != null) {
            if (this.zzot.zzqk.getChildCount() > 1) {
                this.zzot.zzqk.removeView(this.zzot.zzqk.getNextView());
            }
            this.zzot.zzqk.setMinimumWidth(adSizeParcel.widthPixels);
            this.zzot.zzqk.setMinimumHeight(adSizeParcel.heightPixels);
            this.zzot.zzqk.requestLayout();
        }
    }

    public void zza(com.google.android.gms.ads.internal.client.zzn com_google_android_gms_ads_internal_client_zzn) {
        zzx.zzci("setAdListener must be called on the main UI thread.");
        this.zzot.zzqr = com_google_android_gms_ads_internal_client_zzn;
    }

    public void zza(zzo com_google_android_gms_ads_internal_client_zzo) {
        zzx.zzci("setAdListener must be called on the main UI thread.");
        this.zzot.zzqs = com_google_android_gms_ads_internal_client_zzo;
    }

    public void zza(zzu com_google_android_gms_ads_internal_client_zzu) {
        zzx.zzci("setAppEventListener must be called on the main UI thread.");
        this.zzot.zzqt = com_google_android_gms_ads_internal_client_zzu;
    }

    public void zza(zzv com_google_android_gms_ads_internal_client_zzv) {
        zzx.zzci("setCorrelationIdProvider must be called on the main UI thread");
        this.zzot.zzqu = com_google_android_gms_ads_internal_client_zzv;
    }

    public void zza(zzck com_google_android_gms_internal_zzck) {
        throw new IllegalStateException("setOnCustomRenderedAdLoadedListener is not supported for current ad type");
    }

    public void zza(zzfs com_google_android_gms_internal_zzfs) {
        throw new IllegalStateException("setInAppPurchaseListener is not supported for current ad type");
    }

    public void zza(zzfw com_google_android_gms_internal_zzfw, String str) {
        throw new IllegalStateException("setPlayStorePurchaseParams is not supported for current ad type");
    }

    public void zza(com.google.android.gms.internal.zzhs.zza com_google_android_gms_internal_zzhs_zza) {
        if (!(com_google_android_gms_internal_zzhs_zza.zzHD.zzEO == -1 || TextUtils.isEmpty(com_google_android_gms_internal_zzhs_zza.zzHD.zzEY))) {
            long zzo = zzo(com_google_android_gms_internal_zzhs_zza.zzHD.zzEY);
            if (zzo != -1) {
                zzce zzb = this.zzoo.zzb(zzo + com_google_android_gms_internal_zzhs_zza.zzHD.zzEO);
                this.zzoo.zza(zzb, "stc");
            }
        }
        this.zzoo.zzT(com_google_android_gms_internal_zzhs_zza.zzHD.zzEY);
        this.zzoo.zza(this.zzop, "arf");
        this.zzoq = this.zzoo.zzdn();
        this.zzoo.zze("gqi", com_google_android_gms_internal_zzhs_zza.zzHD.zzEZ);
        this.zzot.zzql = null;
        this.zzot.zzqp = com_google_android_gms_internal_zzhs_zza;
        zza(com_google_android_gms_internal_zzhs_zza, this.zzoo);
    }

    protected abstract void zza(com.google.android.gms.internal.zzhs.zza com_google_android_gms_internal_zzhs_zza, zzcg com_google_android_gms_internal_zzcg);

    public void zza(HashSet<zzht> hashSet) {
        this.zzot.zza(hashSet);
    }

    protected abstract boolean zza(AdRequestParcel adRequestParcel, zzcg com_google_android_gms_internal_zzcg);

    boolean zza(zzhs com_google_android_gms_internal_zzhs) {
        return false;
    }

    protected abstract boolean zza(zzhs com_google_android_gms_internal_zzhs, zzhs com_google_android_gms_internal_zzhs2);

    void zzaL() {
        this.zzoo = new zzcg(((Boolean) zzby.zzuQ.get()).booleanValue(), "load_ad", this.zzot.zzqn.zzte);
        this.zzop = new zzce(-1, null, null);
        this.zzoq = new zzce(-1, null, null);
    }

    public zzd zzaM() {
        zzx.zzci("getAdFrame must be called on the main UI thread.");
        return zze.zzy(this.zzot.zzqk);
    }

    public AdSizeParcel zzaN() {
        zzx.zzci("getAdSize must be called on the main UI thread.");
        return this.zzot.zzqn == null ? null : new ThinAdSizeParcel(this.zzot.zzqn);
    }

    public void zzaO() {
        zzaR();
    }

    public void zzaP() {
        zzx.zzci("recordManualImpression must be called on the main UI thread.");
        if (this.zzot.zzqo == null) {
            zzb.zzaH("Ad state was null when trying to ping manual tracking URLs.");
            return;
        }
        zzb.zzaF("Pinging manual tracking URLs.");
        if (this.zzot.zzqo.zzEM != null) {
            zzp.zzbv().zza(this.zzot.context, this.zzot.zzqj.zzJu, this.zzot.zzqo.zzEM);
        }
    }

    protected boolean zzaQ() {
        zzb.m37v("Ad closing.");
        if (this.zzot.zzqs == null) {
            return false;
        }
        try {
            this.zzot.zzqs.onAdClosed();
            return true;
        } catch (Throwable e) {
            zzb.zzd("Could not call AdListener.onAdClosed().", e);
            return false;
        }
    }

    protected boolean zzaS() {
        zzb.zzaG("Ad opening.");
        if (this.zzot.zzqs == null) {
            return false;
        }
        try {
            this.zzot.zzqs.onAdOpened();
            return true;
        } catch (Throwable e) {
            zzb.zzd("Could not call AdListener.onAdOpened().", e);
            return false;
        }
    }

    protected boolean zzaT() {
        zzb.zzaG("Ad finished loading.");
        this.zzor = false;
        if (this.zzot.zzqs == null) {
            return false;
        }
        try {
            this.zzot.zzqs.onAdLoaded();
            return true;
        } catch (Throwable e) {
            zzb.zzd("Could not call AdListener.onAdLoaded().", e);
            return false;
        }
    }

    protected void zzb(View view) {
        this.zzot.zzqk.addView(view, zzp.zzbx().zzgJ());
    }

    public void zzb(zzhs com_google_android_gms_internal_zzhs) {
        this.zzoo.zza(this.zzoq, "awr");
        this.zzot.zzqm = null;
        if (!(com_google_android_gms_internal_zzhs.errorCode == -2 || com_google_android_gms_internal_zzhs.errorCode == 3)) {
            zzp.zzby().zzb(this.zzot.zzbJ());
        }
        if (com_google_android_gms_internal_zzhs.errorCode == -1) {
            this.zzor = false;
            return;
        }
        if (zza(com_google_android_gms_internal_zzhs)) {
            zzb.zzaF("Ad refresh scheduled.");
        }
        if (com_google_android_gms_internal_zzhs.errorCode != -2) {
            zze(com_google_android_gms_internal_zzhs.errorCode);
            return;
        }
        if (this.zzot.zzqF == null) {
            this.zzot.zzqF = new zzhx(this.zzot.zzqh);
        }
        this.zzov.zze(this.zzot.zzqo);
        if (zza(this.zzot.zzqo, com_google_android_gms_internal_zzhs)) {
            this.zzot.zzqo = com_google_android_gms_internal_zzhs;
            this.zzot.zzbS();
            this.zzoo.zze("is_mraid", this.zzot.zzqo.zzbY() ? "1" : "0");
            this.zzoo.zze("is_mediation", this.zzot.zzqo.zzEK ? "1" : "0");
            if (!(this.zzot.zzqo.zzBD == null || this.zzot.zzqo.zzBD.zzhe() == null)) {
                this.zzoo.zze("is_video", this.zzot.zzqo.zzBD.zzhe().zzhr() ? "1" : "0");
            }
            this.zzoo.zza(this.zzop, "ttc");
            if (zzp.zzby().zzgo() != null) {
                zzp.zzby().zzgo().zza(this.zzoo);
            }
            if (this.zzot.zzbN()) {
                zzaT();
            }
        }
    }

    public boolean zzb(AdRequestParcel adRequestParcel) {
        zzx.zzci("loadAd must be called on the main UI thread.");
        AdRequestParcel zza = zza(adRequestParcel);
        if (this.zzor) {
            if (this.zzou != null) {
                zzb.zzaH("Aborting last ad request since another ad request is already in progress. The current request object will still be cached for future refreshes.");
            }
            this.zzou = zza;
            return false;
        }
        zzb.zzaG("Starting ad request.");
        this.zzor = true;
        zzaL();
        this.zzop = this.zzoo.zzdn();
        if (!zza.zzsE) {
            zzb.zzaG("Use AdRequest.Builder.addTestDevice(\"" + zzl.zzcF().zzQ(this.zzot.context) + "\") to get test ads on this device.");
        }
        return zza(zza, this.zzoo);
    }

    protected void zzc(zzhs com_google_android_gms_internal_zzhs) {
        if (com_google_android_gms_internal_zzhs == null) {
            zzb.zzaH("Ad state was null when trying to ping impression URLs.");
            return;
        }
        zzb.zzaF("Pinging Impression URLs.");
        this.zzot.zzqq.zzgf();
        if (com_google_android_gms_internal_zzhs.zzyZ != null) {
            zzp.zzbv().zza(this.zzot.context, this.zzot.zzqj.zzJu, com_google_android_gms_internal_zzhs.zzyZ);
        }
    }

    protected boolean zzc(AdRequestParcel adRequestParcel) {
        ViewParent parent = this.zzot.zzqk.getParent();
        return (parent instanceof View) && ((View) parent).isShown() && zzp.zzbv().zzgB();
    }

    public void zzd(AdRequestParcel adRequestParcel) {
        if (zzc(adRequestParcel)) {
            zzb(adRequestParcel);
            return;
        }
        zzb.zzaG("Ad is not visible. Not refreshing ad.");
        this.zzos.zzg(adRequestParcel);
    }

    protected boolean zze(int i) {
        zzb.zzaH("Failed to load ad: " + i);
        this.zzor = false;
        if (this.zzot.zzqs == null) {
            return false;
        }
        try {
            this.zzot.zzqs.onAdFailedToLoad(i);
            return true;
        } catch (Throwable e) {
            zzb.zzd("Could not call AdListener.onAdFailedToLoad().", e);
            return false;
        }
    }

    long zzo(String str) {
        int indexOf = str.indexOf("ufe");
        int indexOf2 = str.indexOf(44, indexOf);
        if (indexOf2 == -1) {
            indexOf2 = str.length();
        }
        try {
            return Long.parseLong(str.substring(indexOf + 4, indexOf2));
        } catch (IndexOutOfBoundsException e) {
            zzb.zzaH("Invalid index for Url fetch time in CSI latency info.");
            return -1;
        } catch (NumberFormatException e2) {
            zzb.zzaH("Cannot find valid format of Url fetch time in CSI latency info.");
            return -1;
        }
    }
}
