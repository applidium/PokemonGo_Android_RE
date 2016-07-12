package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.formats.zzd;
import com.google.android.gms.ads.internal.formats.zze;
import com.google.android.gms.ads.internal.formats.zzf;
import com.google.android.gms.ads.internal.formats.zzg;
import com.google.android.gms.ads.internal.formats.zzh;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzcg;
import com.google.android.gms.internal.zzck;
import com.google.android.gms.internal.zzcw;
import com.google.android.gms.internal.zzcx;
import com.google.android.gms.internal.zzcy;
import com.google.android.gms.internal.zzcz;
import com.google.android.gms.internal.zzem;
import com.google.android.gms.internal.zzeq;
import com.google.android.gms.internal.zzer;
import com.google.android.gms.internal.zzfs;
import com.google.android.gms.internal.zzgr;
import com.google.android.gms.internal.zzhs;
import com.google.android.gms.internal.zzhs.zza;
import com.google.android.gms.internal.zzid;
import com.google.android.gms.internal.zzmi;
import java.util.List;

@zzgr
public class zzn extends zzb {

    /* renamed from: com.google.android.gms.ads.internal.zzn.1 */
    class C02091 implements Runnable {
        final /* synthetic */ zza zzoB;
        final /* synthetic */ zzn zzpB;

        C02091(zzn com_google_android_gms_ads_internal_zzn, zza com_google_android_gms_internal_zzhs_zza) {
            this.zzpB = com_google_android_gms_ads_internal_zzn;
            this.zzoB = com_google_android_gms_internal_zzhs_zza;
        }

        public void run() {
            this.zzpB.zzb(new zzhs(this.zzoB, null, null, null, null, null, null));
        }
    }

    /* renamed from: com.google.android.gms.ads.internal.zzn.2 */
    class C02102 implements Runnable {
        final /* synthetic */ zzn zzpB;
        final /* synthetic */ zzd zzpC;

        C02102(zzn com_google_android_gms_ads_internal_zzn, zzd com_google_android_gms_ads_internal_formats_zzd) {
            this.zzpB = com_google_android_gms_ads_internal_zzn;
            this.zzpC = com_google_android_gms_ads_internal_formats_zzd;
        }

        public void run() {
            try {
                this.zzpB.zzot.zzqx.zza(this.zzpC);
            } catch (Throwable e) {
                zzb.zzd("Could not call OnAppInstallAdLoadedListener.onAppInstallAdLoaded().", e);
            }
        }
    }

    /* renamed from: com.google.android.gms.ads.internal.zzn.3 */
    class C02113 implements Runnable {
        final /* synthetic */ zzn zzpB;
        final /* synthetic */ zze zzpD;

        C02113(zzn com_google_android_gms_ads_internal_zzn, zze com_google_android_gms_ads_internal_formats_zze) {
            this.zzpB = com_google_android_gms_ads_internal_zzn;
            this.zzpD = com_google_android_gms_ads_internal_formats_zze;
        }

        public void run() {
            try {
                this.zzpB.zzot.zzqy.zza(this.zzpD);
            } catch (Throwable e) {
                zzb.zzd("Could not call OnContentAdLoadedListener.onContentAdLoaded().", e);
            }
        }
    }

    /* renamed from: com.google.android.gms.ads.internal.zzn.4 */
    class C02124 implements Runnable {
        final /* synthetic */ zzn zzpB;
        final /* synthetic */ String zzpE;
        final /* synthetic */ zzhs zzpF;

        C02124(zzn com_google_android_gms_ads_internal_zzn, String str, zzhs com_google_android_gms_internal_zzhs) {
            this.zzpB = com_google_android_gms_ads_internal_zzn;
            this.zzpE = str;
            this.zzpF = com_google_android_gms_internal_zzhs;
        }

        public void run() {
            try {
                ((zzcz) this.zzpB.zzot.zzqA.get(this.zzpE)).zza((zzf) this.zzpF.zzHB);
            } catch (Throwable e) {
                zzb.zzd("Could not call onCustomTemplateAdLoadedListener.onCustomTemplateAdLoaded().", e);
            }
        }
    }

    public zzn(Context context, AdSizeParcel adSizeParcel, String str, zzem com_google_android_gms_internal_zzem, VersionInfoParcel versionInfoParcel) {
        super(context, adSizeParcel, str, com_google_android_gms_internal_zzem, versionInfoParcel, null);
    }

    private static zzd zza(zzeq com_google_android_gms_internal_zzeq) throws RemoteException {
        return new zzd(com_google_android_gms_internal_zzeq.getHeadline(), com_google_android_gms_internal_zzeq.getImages(), com_google_android_gms_internal_zzeq.getBody(), com_google_android_gms_internal_zzeq.zzdw() != null ? com_google_android_gms_internal_zzeq.zzdw() : null, com_google_android_gms_internal_zzeq.getCallToAction(), com_google_android_gms_internal_zzeq.getStarRating(), com_google_android_gms_internal_zzeq.getStore(), com_google_android_gms_internal_zzeq.getPrice(), null, com_google_android_gms_internal_zzeq.getExtras());
    }

    private static zze zza(zzer com_google_android_gms_internal_zzer) throws RemoteException {
        return new zze(com_google_android_gms_internal_zzer.getHeadline(), com_google_android_gms_internal_zzer.getImages(), com_google_android_gms_internal_zzer.getBody(), com_google_android_gms_internal_zzer.zzdA() != null ? com_google_android_gms_internal_zzer.zzdA() : null, com_google_android_gms_internal_zzer.getCallToAction(), com_google_android_gms_internal_zzer.getAdvertiser(), null, com_google_android_gms_internal_zzer.getExtras());
    }

    private void zza(zzd com_google_android_gms_ads_internal_formats_zzd) {
        zzid.zzIE.post(new C02102(this, com_google_android_gms_ads_internal_formats_zzd));
    }

    private void zza(zze com_google_android_gms_ads_internal_formats_zze) {
        zzid.zzIE.post(new C02113(this, com_google_android_gms_ads_internal_formats_zze));
    }

    private void zza(zzhs com_google_android_gms_internal_zzhs, String str) {
        zzid.zzIE.post(new C02124(this, str, com_google_android_gms_internal_zzhs));
    }

    public void pause() {
        throw new IllegalStateException("Native Ad DOES NOT support pause().");
    }

    public void recordImpression() {
        zza(this.zzot.zzqo, false);
    }

    public void resume() {
        throw new IllegalStateException("Native Ad DOES NOT support resume().");
    }

    public void showInterstitial() {
        throw new IllegalStateException("Interstitial is NOT supported by NativeAdManager.");
    }

    public void zza(zzck com_google_android_gms_internal_zzck) {
        throw new IllegalStateException("CustomRendering is NOT supported by NativeAdManager.");
    }

    public void zza(zzfs com_google_android_gms_internal_zzfs) {
        throw new IllegalStateException("In App Purchase is NOT supported by NativeAdManager.");
    }

    public void zza(zza com_google_android_gms_internal_zzhs_zza, zzcg com_google_android_gms_internal_zzcg) {
        if (com_google_android_gms_internal_zzhs_zza.zzqn != null) {
            this.zzot.zzqn = com_google_android_gms_internal_zzhs_zza.zzqn;
        }
        if (com_google_android_gms_internal_zzhs_zza.errorCode != -2) {
            zzid.zzIE.post(new C02091(this, com_google_android_gms_internal_zzhs_zza));
            return;
        }
        this.zzot.zzqH = 0;
        this.zzot.zzqm = zzp.zzbu().zza(this.zzot.context, this, com_google_android_gms_internal_zzhs_zza, this.zzot.zzqi, null, this.zzox, this, com_google_android_gms_internal_zzcg);
        zzb.zzaF("AdRenderer: " + this.zzot.zzqm.getClass().getName());
    }

    public void zza(zzmi<String, zzcz> com_google_android_gms_internal_zzmi_java_lang_String__com_google_android_gms_internal_zzcz) {
        zzx.zzci("setOnCustomTemplateAdLoadedListeners must be called on the main UI thread.");
        this.zzot.zzqA = com_google_android_gms_internal_zzmi_java_lang_String__com_google_android_gms_internal_zzcz;
    }

    public void zza(List<String> list) {
        zzx.zzci("setNativeTemplates must be called on the main UI thread.");
        this.zzot.zzqD = list;
    }

    protected boolean zza(AdRequestParcel adRequestParcel, zzhs com_google_android_gms_internal_zzhs, boolean z) {
        return this.zzos.zzbp();
    }

    protected boolean zza(zzhs com_google_android_gms_internal_zzhs, zzhs com_google_android_gms_internal_zzhs2) {
        zza(null);
        if (this.zzot.zzbN()) {
            if (com_google_android_gms_internal_zzhs2.zzEK) {
                try {
                    zzeq zzdV = com_google_android_gms_internal_zzhs2.zzzv.zzdV();
                    zzer zzdW = com_google_android_gms_internal_zzhs2.zzzv.zzdW();
                    if (zzdV != null) {
                        zzd zza = zza(zzdV);
                        zza.zza(new zzg(this.zzot.context, this, this.zzot.zzqi, zzdV));
                        zza(zza);
                    } else if (zzdW != null) {
                        zze zza2 = zza(zzdW);
                        zza2.zza(new zzg(this.zzot.context, this, this.zzot.zzqi, zzdW));
                        zza(zza2);
                    } else {
                        zzb.zzaH("No matching mapper for retrieved native ad template.");
                        zze(0);
                        return false;
                    }
                } catch (Throwable e) {
                    zzb.zzd("Failed to get native ad mapper", e);
                }
            } else {
                zzh.zza com_google_android_gms_ads_internal_formats_zzh_zza = com_google_android_gms_internal_zzhs2.zzHB;
                if ((com_google_android_gms_ads_internal_formats_zzh_zza instanceof zze) && this.zzot.zzqy != null) {
                    zza((zze) com_google_android_gms_internal_zzhs2.zzHB);
                } else if ((com_google_android_gms_ads_internal_formats_zzh_zza instanceof zzd) && this.zzot.zzqx != null) {
                    zza((zzd) com_google_android_gms_internal_zzhs2.zzHB);
                } else if (!(com_google_android_gms_ads_internal_formats_zzh_zza instanceof zzf) || this.zzot.zzqA == null || this.zzot.zzqA.get(((zzf) com_google_android_gms_ads_internal_formats_zzh_zza).getCustomTemplateId()) == null) {
                    zzb.zzaH("No matching listener for retrieved native ad template.");
                    zze(0);
                    return false;
                } else {
                    zza(com_google_android_gms_internal_zzhs2, ((zzf) com_google_android_gms_ads_internal_formats_zzh_zza).getCustomTemplateId());
                }
            }
            return super.zza(com_google_android_gms_internal_zzhs, com_google_android_gms_internal_zzhs2);
        }
        throw new IllegalStateException("Native ad DOES NOT have custom rendering mode.");
    }

    public void zzb(NativeAdOptionsParcel nativeAdOptionsParcel) {
        zzx.zzci("setNativeAdOptions must be called on the main UI thread.");
        this.zzot.zzqB = nativeAdOptionsParcel;
    }

    public void zzb(zzcw com_google_android_gms_internal_zzcw) {
        zzx.zzci("setOnAppInstallAdLoadedListener must be called on the main UI thread.");
        this.zzot.zzqx = com_google_android_gms_internal_zzcw;
    }

    public void zzb(zzcx com_google_android_gms_internal_zzcx) {
        zzx.zzci("setOnContentAdLoadedListener must be called on the main UI thread.");
        this.zzot.zzqy = com_google_android_gms_internal_zzcx;
    }

    public void zzb(zzmi<String, zzcy> com_google_android_gms_internal_zzmi_java_lang_String__com_google_android_gms_internal_zzcy) {
        zzx.zzci("setOnCustomClickListener must be called on the main UI thread.");
        this.zzot.zzqz = com_google_android_gms_internal_zzmi_java_lang_String__com_google_android_gms_internal_zzcy;
    }

    public zzmi<String, zzcz> zzbo() {
        zzx.zzci("getOnCustomTemplateAdLoadedListeners must be called on the main UI thread.");
        return this.zzot.zzqA;
    }

    public zzcy zzr(String str) {
        zzx.zzci("getOnCustomClickListener must be called on the main UI thread.");
        return (zzcy) this.zzot.zzqz.get(str);
    }
}
