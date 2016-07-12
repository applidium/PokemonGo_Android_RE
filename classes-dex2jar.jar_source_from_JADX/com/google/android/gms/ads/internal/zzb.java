package com.google.android.gms.ads.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.zzl;
import com.google.android.gms.ads.internal.overlay.zzg;
import com.google.android.gms.ads.internal.purchase.GInAppPurchaseManagerInfoParcel;
import com.google.android.gms.ads.internal.purchase.zzc;
import com.google.android.gms.ads.internal.purchase.zzd;
import com.google.android.gms.ads.internal.purchase.zzf;
import com.google.android.gms.ads.internal.purchase.zzj;
import com.google.android.gms.ads.internal.purchase.zzk;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel.zza;
import com.google.android.gms.ads.internal.request.CapabilityParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzby;
import com.google.android.gms.internal.zzcg;
import com.google.android.gms.internal.zzdm;
import com.google.android.gms.internal.zzef;
import com.google.android.gms.internal.zzem;
import com.google.android.gms.internal.zzfp;
import com.google.android.gms.internal.zzfr;
import com.google.android.gms.internal.zzfs;
import com.google.android.gms.internal.zzfw;
import com.google.android.gms.internal.zzgr;
import com.google.android.gms.internal.zzhs;
import com.google.android.gms.internal.zzht;
import com.google.android.gms.internal.zzid;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@zzgr
public abstract class zzb extends zza implements zzg, zzj, zzdm, zzef {
    private final Messenger mMessenger;
    protected final zzem zzox;
    protected transient boolean zzoy;

    /* renamed from: com.google.android.gms.ads.internal.zzb.1 */
    class C02011 implements Runnable {
        final /* synthetic */ zzb zzoA;
        final /* synthetic */ Intent zzoz;

        C02011(zzb com_google_android_gms_ads_internal_zzb, Intent intent) {
            this.zzoA = com_google_android_gms_ads_internal_zzb;
            this.zzoz = intent;
        }

        public void run() {
            int zzd = zzp.zzbF().zzd(this.zzoz);
            zzp.zzbF();
            if (!(zzd != 0 || this.zzoA.zzot.zzqo == null || this.zzoA.zzot.zzqo.zzBD == null || this.zzoA.zzot.zzqo.zzBD.zzhc() == null)) {
                this.zzoA.zzot.zzqo.zzBD.zzhc().close();
            }
            this.zzoA.zzot.zzqI = false;
        }
    }

    public zzb(Context context, AdSizeParcel adSizeParcel, String str, zzem com_google_android_gms_internal_zzem, VersionInfoParcel versionInfoParcel, zzd com_google_android_gms_ads_internal_zzd) {
        this(new zzq(context, adSizeParcel, str, versionInfoParcel), com_google_android_gms_internal_zzem, null, com_google_android_gms_ads_internal_zzd);
    }

    zzb(zzq com_google_android_gms_ads_internal_zzq, zzem com_google_android_gms_internal_zzem, zzo com_google_android_gms_ads_internal_zzo, zzd com_google_android_gms_ads_internal_zzd) {
        super(com_google_android_gms_ads_internal_zzq, com_google_android_gms_ads_internal_zzo, com_google_android_gms_ads_internal_zzd);
        this.zzox = com_google_android_gms_internal_zzem;
        this.mMessenger = new Messenger(new zzfp(this.zzot.context));
        this.zzoy = false;
    }

    private zza zza(AdRequestParcel adRequestParcel, Bundle bundle) {
        PackageInfo packageInfo;
        int i;
        ApplicationInfo applicationInfo = this.zzot.context.getApplicationInfo();
        try {
            packageInfo = this.zzot.context.getPackageManager().getPackageInfo(applicationInfo.packageName, 0);
        } catch (NameNotFoundException e) {
            packageInfo = null;
        }
        DisplayMetrics displayMetrics = this.zzot.context.getResources().getDisplayMetrics();
        Bundle bundle2 = null;
        if (!(this.zzot.zzqk == null || this.zzot.zzqk.getParent() == null)) {
            int[] iArr = new int[2];
            this.zzot.zzqk.getLocationOnScreen(iArr);
            int i2 = iArr[0];
            int i3 = iArr[1];
            int width = this.zzot.zzqk.getWidth();
            int height = this.zzot.zzqk.getHeight();
            i = 0;
            if (this.zzot.zzqk.isShown() && i2 + width > 0 && i3 + height > 0 && i2 <= displayMetrics.widthPixels && i3 <= displayMetrics.heightPixels) {
                i = 1;
            }
            bundle2 = new Bundle(5);
            bundle2.putInt("x", i2);
            bundle2.putInt("y", i3);
            bundle2.putInt("width", width);
            bundle2.putInt("height", height);
            bundle2.putInt("visible", i);
        }
        String zzgm = zzp.zzby().zzgm();
        this.zzot.zzqq = new zzht(zzgm, this.zzot.zzqh);
        this.zzot.zzqq.zzi(adRequestParcel);
        String zza = zzp.zzbv().zza(this.zzot.context, this.zzot.zzqk, this.zzot.zzqn);
        long j = 0;
        if (this.zzot.zzqu != null) {
            try {
                j = this.zzot.zzqu.getValue();
            } catch (RemoteException e2) {
                com.google.android.gms.ads.internal.util.client.zzb.zzaH("Cannot get correlation id, default to 0.");
            }
        }
        String uuid = UUID.randomUUID().toString();
        Bundle zza2 = zzp.zzby().zza(this.zzot.context, this, zzgm);
        List arrayList = new ArrayList();
        for (i = 0; i < this.zzot.zzqA.size(); i++) {
            arrayList.add(this.zzot.zzqA.keyAt(i));
        }
        boolean z = this.zzot.zzqv != null;
        boolean z2 = this.zzot.zzqw != null && zzp.zzby().zzgv();
        return new zza(bundle2, adRequestParcel, this.zzot.zzqn, this.zzot.zzqh, applicationInfo, packageInfo, zzgm, zzp.zzby().getSessionId(), this.zzot.zzqj, zza2, this.zzot.zzqD, arrayList, bundle, zzp.zzby().zzgq(), this.mMessenger, displayMetrics.widthPixels, displayMetrics.heightPixels, displayMetrics.density, zza, j, uuid, zzby.zzdf(), this.zzot.zzqg, this.zzot.zzqB, new CapabilityParcel(z, z2), this.zzot.zzbR());
    }

    public String getMediationAdapterClassName() {
        return this.zzot.zzqo == null ? null : this.zzot.zzqo.zzzw;
    }

    public void onAdClicked() {
        if (this.zzot.zzqo == null) {
            com.google.android.gms.ads.internal.util.client.zzb.zzaH("Ad state was null when trying to ping click URLs.");
            return;
        }
        if (!(this.zzot.zzqo.zzHx == null || this.zzot.zzqo.zzHx.zzyY == null)) {
            zzp.zzbH().zza(this.zzot.context, this.zzot.zzqj.zzJu, this.zzot.zzqo, this.zzot.zzqh, false, this.zzot.zzqo.zzHx.zzyY);
        }
        if (!(this.zzot.zzqo.zzzu == null || this.zzot.zzqo.zzzu.zzyR == null)) {
            zzp.zzbH().zza(this.zzot.context, this.zzot.zzqj.zzJu, this.zzot.zzqo, this.zzot.zzqh, false, this.zzot.zzqo.zzzu.zzyR);
        }
        super.onAdClicked();
    }

    public void pause() {
        zzx.zzci("pause must be called on the main UI thread.");
        if (!(this.zzot.zzqo == null || this.zzot.zzqo.zzBD == null || !this.zzot.zzbN())) {
            zzp.zzbx().zza(this.zzot.zzqo.zzBD.getWebView());
        }
        if (!(this.zzot.zzqo == null || this.zzot.zzqo.zzzv == null)) {
            try {
                this.zzot.zzqo.zzzv.pause();
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzb.zzaH("Could not pause mediation adapter.");
            }
        }
        this.zzov.zzg(this.zzot.zzqo);
        this.zzos.pause();
    }

    public void resume() {
        zzx.zzci("resume must be called on the main UI thread.");
        if (!(this.zzot.zzqo == null || this.zzot.zzqo.zzBD == null || !this.zzot.zzbN())) {
            zzp.zzbx().zzb(this.zzot.zzqo.zzBD.getWebView());
        }
        if (!(this.zzot.zzqo == null || this.zzot.zzqo.zzzv == null)) {
            try {
                this.zzot.zzqo.zzzv.resume();
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzb.zzaH("Could not resume mediation adapter.");
            }
        }
        this.zzos.resume();
        this.zzov.zzh(this.zzot.zzqo);
    }

    public void showInterstitial() {
        throw new IllegalStateException("showInterstitial is not supported for current ad type");
    }

    public void zza(zzfs com_google_android_gms_internal_zzfs) {
        zzx.zzci("setInAppPurchaseListener must be called on the main UI thread.");
        this.zzot.zzqv = com_google_android_gms_internal_zzfs;
    }

    public void zza(zzfw com_google_android_gms_internal_zzfw, String str) {
        zzx.zzci("setPlayStorePurchaseParams must be called on the main UI thread.");
        this.zzot.zzqE = new zzk(str);
        this.zzot.zzqw = com_google_android_gms_internal_zzfw;
        if (!zzp.zzby().zzgp() && com_google_android_gms_internal_zzfw != null) {
            new zzc(this.zzot.context, this.zzot.zzqw, this.zzot.zzqE).zzgz();
        }
    }

    protected void zza(zzhs com_google_android_gms_internal_zzhs, boolean z) {
        if (com_google_android_gms_internal_zzhs == null) {
            com.google.android.gms.ads.internal.util.client.zzb.zzaH("Ad state was null when trying to ping impression URLs.");
            return;
        }
        super.zzc(com_google_android_gms_internal_zzhs);
        if (!(com_google_android_gms_internal_zzhs.zzHx == null || com_google_android_gms_internal_zzhs.zzHx.zzyZ == null)) {
            zzp.zzbH().zza(this.zzot.context, this.zzot.zzqj.zzJu, com_google_android_gms_internal_zzhs, this.zzot.zzqh, z, com_google_android_gms_internal_zzhs.zzHx.zzyZ);
        }
        if (com_google_android_gms_internal_zzhs.zzzu != null && com_google_android_gms_internal_zzhs.zzzu.zzyS != null) {
            zzp.zzbH().zza(this.zzot.context, this.zzot.zzqj.zzJu, com_google_android_gms_internal_zzhs, this.zzot.zzqh, z, com_google_android_gms_internal_zzhs.zzzu.zzyS);
        }
    }

    public void zza(String str, ArrayList<String> arrayList) {
        zzfr com_google_android_gms_ads_internal_purchase_zzd = new zzd(str, arrayList, this.zzot.context, this.zzot.zzqj.zzJu);
        if (this.zzot.zzqv == null) {
            com.google.android.gms.ads.internal.util.client.zzb.zzaH("InAppPurchaseListener is not set. Try to launch default purchase flow.");
            if (!zzl.zzcF().zzR(this.zzot.context)) {
                com.google.android.gms.ads.internal.util.client.zzb.zzaH("Google Play Service unavailable, cannot launch default purchase flow.");
                return;
            } else if (this.zzot.zzqw == null) {
                com.google.android.gms.ads.internal.util.client.zzb.zzaH("PlayStorePurchaseListener is not set.");
                return;
            } else if (this.zzot.zzqE == null) {
                com.google.android.gms.ads.internal.util.client.zzb.zzaH("PlayStorePurchaseVerifier is not initialized.");
                return;
            } else if (this.zzot.zzqI) {
                com.google.android.gms.ads.internal.util.client.zzb.zzaH("An in-app purchase request is already in progress, abort");
                return;
            } else {
                this.zzot.zzqI = true;
                try {
                    if (this.zzot.zzqw.isValidPurchase(str)) {
                        zzp.zzbF().zza(this.zzot.context, this.zzot.zzqj.zzJx, new GInAppPurchaseManagerInfoParcel(this.zzot.context, this.zzot.zzqE, com_google_android_gms_ads_internal_purchase_zzd, this));
                        return;
                    } else {
                        this.zzot.zzqI = false;
                        return;
                    }
                } catch (RemoteException e) {
                    com.google.android.gms.ads.internal.util.client.zzb.zzaH("Could not start In-App purchase.");
                    this.zzot.zzqI = false;
                    return;
                }
            }
        }
        try {
            this.zzot.zzqv.zza(com_google_android_gms_ads_internal_purchase_zzd);
        } catch (RemoteException e2) {
            com.google.android.gms.ads.internal.util.client.zzb.zzaH("Could not start In-App purchase.");
        }
    }

    public void zza(String str, boolean z, int i, Intent intent, zzf com_google_android_gms_ads_internal_purchase_zzf) {
        try {
            if (this.zzot.zzqw != null) {
                this.zzot.zzqw.zza(new com.google.android.gms.ads.internal.purchase.zzg(this.zzot.context, str, z, i, intent, com_google_android_gms_ads_internal_purchase_zzf));
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzaH("Fail to invoke PlayStorePurchaseListener.");
        }
        zzid.zzIE.postDelayed(new C02011(this, intent), 500);
    }

    public boolean zza(AdRequestParcel adRequestParcel, zzcg com_google_android_gms_internal_zzcg) {
        if (!zzaU()) {
            return false;
        }
        Bundle zza = zza(zzp.zzby().zzE(this.zzot.context));
        this.zzos.cancel();
        this.zzot.zzqH = 0;
        zza zza2 = zza(adRequestParcel, zza);
        com_google_android_gms_internal_zzcg.zze("seq_num", zza2.zzEq);
        com_google_android_gms_internal_zzcg.zze("request_id", zza2.zzEC);
        com_google_android_gms_internal_zzcg.zze("session_id", zza2.zzEr);
        if (zza2.zzEo != null) {
            com_google_android_gms_internal_zzcg.zze("app_version", String.valueOf(zza2.zzEo.versionCode));
        }
        this.zzot.zzql = zzp.zzbr().zza(this.zzot.context, zza2, this.zzot.zzqi, this);
        return true;
    }

    protected boolean zza(AdRequestParcel adRequestParcel, zzhs com_google_android_gms_internal_zzhs, boolean z) {
        if (!z && this.zzot.zzbN()) {
            if (com_google_android_gms_internal_zzhs.zzzc > 0) {
                this.zzos.zza(adRequestParcel, com_google_android_gms_internal_zzhs.zzzc);
            } else if (com_google_android_gms_internal_zzhs.zzHx != null && com_google_android_gms_internal_zzhs.zzHx.zzzc > 0) {
                this.zzos.zza(adRequestParcel, com_google_android_gms_internal_zzhs.zzHx.zzzc);
            } else if (!com_google_android_gms_internal_zzhs.zzEK && com_google_android_gms_internal_zzhs.errorCode == 2) {
                this.zzos.zzg(adRequestParcel);
            }
        }
        return this.zzos.zzbp();
    }

    boolean zza(zzhs com_google_android_gms_internal_zzhs) {
        AdRequestParcel adRequestParcel;
        boolean z = false;
        if (this.zzou != null) {
            adRequestParcel = this.zzou;
            this.zzou = null;
        } else {
            adRequestParcel = com_google_android_gms_internal_zzhs.zzEn;
            if (adRequestParcel.extras != null) {
                z = adRequestParcel.extras.getBoolean("_noRefresh", false);
            }
        }
        return zza(adRequestParcel, com_google_android_gms_internal_zzhs, z);
    }

    protected boolean zza(zzhs com_google_android_gms_internal_zzhs, zzhs com_google_android_gms_internal_zzhs2) {
        int i;
        int i2 = 0;
        if (!(com_google_android_gms_internal_zzhs == null || com_google_android_gms_internal_zzhs.zzzx == null)) {
            com_google_android_gms_internal_zzhs.zzzx.zza(null);
        }
        if (com_google_android_gms_internal_zzhs2.zzzx != null) {
            com_google_android_gms_internal_zzhs2.zzzx.zza((zzef) this);
        }
        if (com_google_android_gms_internal_zzhs2.zzHx != null) {
            i2 = com_google_android_gms_internal_zzhs2.zzHx.zzzf;
            i = com_google_android_gms_internal_zzhs2.zzHx.zzzg;
        } else {
            i = 0;
        }
        this.zzot.zzqF.zzf(i2, i);
        return true;
    }

    protected boolean zzaU() {
        return zzp.zzbv().zza(this.zzot.context.getPackageManager(), this.zzot.context.getPackageName(), "android.permission.INTERNET") && zzp.zzbv().zzH(this.zzot.context);
    }

    public void zzaV() {
        this.zzov.zze(this.zzot.zzqo);
        this.zzoy = false;
        zzaQ();
        this.zzot.zzqq.zzgh();
    }

    public void zzaW() {
        this.zzoy = true;
        zzaS();
    }

    public void zzaX() {
        onAdClicked();
    }

    public void zzaY() {
        zzaV();
    }

    public void zzaZ() {
        zzaO();
    }

    public void zzb(zzhs com_google_android_gms_internal_zzhs) {
        super.zzb(com_google_android_gms_internal_zzhs);
        if (com_google_android_gms_internal_zzhs.errorCode == 3 && com_google_android_gms_internal_zzhs.zzHx != null && com_google_android_gms_internal_zzhs.zzHx.zzza != null) {
            com.google.android.gms.ads.internal.util.client.zzb.zzaF("Pinging no fill URLs.");
            zzp.zzbH().zza(this.zzot.context, this.zzot.zzqj.zzJu, com_google_android_gms_internal_zzhs, this.zzot.zzqh, false, com_google_android_gms_internal_zzhs.zzHx.zzza);
        }
    }

    public void zzba() {
        zzaW();
    }

    public void zzbb() {
        if (this.zzot.zzqo != null) {
            com.google.android.gms.ads.internal.util.client.zzb.zzaH("Mediation adapter " + this.zzot.zzqo.zzzw + " refreshed, but mediation adapters should never refresh.");
        }
        zza(this.zzot.zzqo, true);
        zzaT();
    }

    protected boolean zzc(AdRequestParcel adRequestParcel) {
        return super.zzc(adRequestParcel) && !this.zzoy;
    }
}
