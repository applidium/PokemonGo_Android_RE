package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzja.zza;
import java.util.concurrent.atomic.AtomicBoolean;

@zzgr
public abstract class zzgc implements zzgh<Void>, zza {
    protected final Context mContext;
    protected final zzgg.zza zzDd;
    protected final zzhs.zza zzDe;
    protected AdResponseParcel zzDf;
    private Runnable zzDg;
    protected final Object zzDh;
    private AtomicBoolean zzDi;
    protected final zziz zzoM;

    /* renamed from: com.google.android.gms.internal.zzgc.1 */
    class C05481 implements Runnable {
        final /* synthetic */ zzgc zzDj;

        C05481(zzgc com_google_android_gms_internal_zzgc) {
            this.zzDj = com_google_android_gms_internal_zzgc;
        }

        public void run() {
            if (this.zzDj.zzDi.get()) {
                zzb.m36e("Timed out waiting for WebView to finish loading.");
                this.zzDj.cancel();
            }
        }
    }

    protected zzgc(Context context, zzhs.zza com_google_android_gms_internal_zzhs_zza, zziz com_google_android_gms_internal_zziz, zzgg.zza com_google_android_gms_internal_zzgg_zza) {
        this.zzDh = new Object();
        this.zzDi = new AtomicBoolean(true);
        this.mContext = context;
        this.zzDe = com_google_android_gms_internal_zzhs_zza;
        this.zzDf = this.zzDe.zzHD;
        this.zzoM = com_google_android_gms_internal_zziz;
        this.zzDd = com_google_android_gms_internal_zzgg_zza;
    }

    private zzhs zzA(int i) {
        AdRequestInfoParcel adRequestInfoParcel = this.zzDe.zzHC;
        return new zzhs(adRequestInfoParcel.zzEn, this.zzoM, this.zzDf.zzyY, i, this.zzDf.zzyZ, this.zzDf.zzEM, this.zzDf.orientation, this.zzDf.zzzc, adRequestInfoParcel.zzEq, this.zzDf.zzEK, null, null, null, null, null, this.zzDf.zzEL, this.zzDe.zzqn, this.zzDf.zzEJ, this.zzDe.zzHz, this.zzDf.zzEO, this.zzDf.zzEP, this.zzDe.zzHw, null);
    }

    public void cancel() {
        if (this.zzDi.getAndSet(false)) {
            this.zzoM.stopLoading();
            zzp.zzbx().zza(this.zzoM.getWebView());
            zzz(-1);
            zzid.zzIE.removeCallbacks(this.zzDg);
        }
    }

    public void zza(zziz com_google_android_gms_internal_zziz, boolean z) {
        zzb.zzaF("WebView finished loading.");
        if (this.zzDi.getAndSet(false)) {
            zzz(z ? zzft() : -1);
            zzid.zzIE.removeCallbacks(this.zzDg);
        }
    }

    public final Void zzfr() {
        zzx.zzci("Webview render task needs to be called on UI thread.");
        this.zzDg = new C05481(this);
        zzid.zzIE.postDelayed(this.zzDg, ((Long) zzby.zzvw.get()).longValue());
        zzfs();
        return null;
    }

    protected abstract void zzfs();

    protected int zzft() {
        return -2;
    }

    public /* synthetic */ Object zzfu() {
        return zzfr();
    }

    protected void zzz(int i) {
        if (i != -2) {
            this.zzDf = new AdResponseParcel(i, this.zzDf.zzzc);
        }
        this.zzDd.zzb(zzA(i));
    }
}
