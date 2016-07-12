package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.internal.zzn;
import com.google.android.gms.internal.zzgg.zza;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@zzgr
public class zzgl extends zzhz {
    private final zzgm zzDB;
    private Future<zzhs> zzDC;
    private final zza zzDd;
    private final zzhs.zza zzDe;
    private final AdResponseParcel zzDf;
    private final Object zzpd;

    /* renamed from: com.google.android.gms.internal.zzgl.1 */
    class C05511 implements Runnable {
        final /* synthetic */ zzgl zzDD;
        final /* synthetic */ zzhs zzpF;

        C05511(zzgl com_google_android_gms_internal_zzgl, zzhs com_google_android_gms_internal_zzhs) {
            this.zzDD = com_google_android_gms_internal_zzgl;
            this.zzpF = com_google_android_gms_internal_zzhs;
        }

        public void run() {
            this.zzDD.zzDd.zzb(this.zzpF);
        }
    }

    public zzgl(Context context, zzn com_google_android_gms_ads_internal_zzn, zzbc com_google_android_gms_internal_zzbc, zzhs.zza com_google_android_gms_internal_zzhs_zza, zzan com_google_android_gms_internal_zzan, zza com_google_android_gms_internal_zzgg_zza) {
        this(com_google_android_gms_internal_zzhs_zza, com_google_android_gms_internal_zzgg_zza, new zzgm(context, com_google_android_gms_ads_internal_zzn, com_google_android_gms_internal_zzbc, new zzih(context), com_google_android_gms_internal_zzan, com_google_android_gms_internal_zzhs_zza));
    }

    zzgl(zzhs.zza com_google_android_gms_internal_zzhs_zza, zza com_google_android_gms_internal_zzgg_zza, zzgm com_google_android_gms_internal_zzgm) {
        this.zzpd = new Object();
        this.zzDe = com_google_android_gms_internal_zzhs_zza;
        this.zzDf = com_google_android_gms_internal_zzhs_zza.zzHD;
        this.zzDd = com_google_android_gms_internal_zzgg_zza;
        this.zzDB = com_google_android_gms_internal_zzgm;
    }

    private zzhs zzB(int i) {
        return new zzhs(this.zzDe.zzHC.zzEn, null, null, i, null, null, this.zzDf.orientation, this.zzDf.zzzc, this.zzDe.zzHC.zzEq, false, null, null, null, null, null, this.zzDf.zzEL, this.zzDe.zzqn, this.zzDf.zzEJ, this.zzDe.zzHz, this.zzDf.zzEO, this.zzDf.zzEP, this.zzDe.zzHw, null);
    }

    public void onStop() {
        synchronized (this.zzpd) {
            if (this.zzDC != null) {
                this.zzDC.cancel(true);
            }
        }
    }

    public void zzbn() {
        zzhs com_google_android_gms_internal_zzhs;
        int i;
        try {
            synchronized (this.zzpd) {
                this.zzDC = zzic.zza(this.zzDB);
            }
            com_google_android_gms_internal_zzhs = (zzhs) this.zzDC.get(60000, TimeUnit.MILLISECONDS);
            i = -2;
        } catch (TimeoutException e) {
            zzb.zzaH("Timed out waiting for native ad.");
            this.zzDC.cancel(true);
            i = 2;
            com_google_android_gms_internal_zzhs = null;
        } catch (ExecutionException e2) {
            i = 0;
            com_google_android_gms_internal_zzhs = null;
        } catch (InterruptedException e3) {
            com_google_android_gms_internal_zzhs = null;
            i = -1;
        } catch (CancellationException e4) {
            com_google_android_gms_internal_zzhs = null;
            i = -1;
        }
        if (com_google_android_gms_internal_zzhs == null) {
            com_google_android_gms_internal_zzhs = zzB(i);
        }
        zzid.zzIE.post(new C05511(this, com_google_android_gms_internal_zzhs));
    }
}
