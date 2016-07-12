package com.google.android.gms.internal;

import android.content.Context;
import android.os.SystemClock;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.util.client.zzb;

@zzgr
public abstract class zzgf extends zzhz {
    protected final Context mContext;
    protected final com.google.android.gms.internal.zzgg.zza zzDd;
    protected final com.google.android.gms.internal.zzhs.zza zzDe;
    protected AdResponseParcel zzDf;
    protected final Object zzDh;
    protected final Object zzpd;

    /* renamed from: com.google.android.gms.internal.zzgf.1 */
    class C05491 implements Runnable {
        final /* synthetic */ zzgf zzDu;

        C05491(zzgf com_google_android_gms_internal_zzgf) {
            this.zzDu = com_google_android_gms_internal_zzgf;
        }

        public void run() {
            this.zzDu.onStop();
        }
    }

    /* renamed from: com.google.android.gms.internal.zzgf.2 */
    class C05502 implements Runnable {
        final /* synthetic */ zzgf zzDu;
        final /* synthetic */ zzhs zzpF;

        C05502(zzgf com_google_android_gms_internal_zzgf, zzhs com_google_android_gms_internal_zzhs) {
            this.zzDu = com_google_android_gms_internal_zzgf;
            this.zzpF = com_google_android_gms_internal_zzhs;
        }

        public void run() {
            synchronized (this.zzDu.zzpd) {
                this.zzDu.zzi(this.zzpF);
            }
        }
    }

    protected static final class zza extends Exception {
        private final int zzDv;

        public zza(String str, int i) {
            super(str);
            this.zzDv = i;
        }

        public int getErrorCode() {
            return this.zzDv;
        }
    }

    protected zzgf(Context context, com.google.android.gms.internal.zzhs.zza com_google_android_gms_internal_zzhs_zza, com.google.android.gms.internal.zzgg.zza com_google_android_gms_internal_zzgg_zza) {
        super(true);
        this.zzpd = new Object();
        this.zzDh = new Object();
        this.mContext = context;
        this.zzDe = com_google_android_gms_internal_zzhs_zza;
        this.zzDf = com_google_android_gms_internal_zzhs_zza.zzHD;
        this.zzDd = com_google_android_gms_internal_zzgg_zza;
    }

    public void onStop() {
    }

    protected abstract zzhs zzA(int i);

    public void zzbn() {
        int errorCode;
        synchronized (this.zzpd) {
            zzb.zzaF("AdRendererBackgroundTask started.");
            int i = this.zzDe.errorCode;
            try {
                zzh(SystemClock.elapsedRealtime());
            } catch (zza e) {
                errorCode = e.getErrorCode();
                if (errorCode == 3 || errorCode == -1) {
                    zzb.zzaG(e.getMessage());
                } else {
                    zzb.zzaH(e.getMessage());
                }
                if (this.zzDf == null) {
                    this.zzDf = new AdResponseParcel(errorCode);
                } else {
                    this.zzDf = new AdResponseParcel(errorCode, this.zzDf.zzzc);
                }
                zzid.zzIE.post(new C05491(this));
                i = errorCode;
            }
            zzid.zzIE.post(new C05502(this, zzA(i)));
        }
    }

    protected abstract void zzh(long j) throws zza;

    protected void zzi(zzhs com_google_android_gms_internal_zzhs) {
        this.zzDd.zzb(com_google_android_gms_internal_zzhs);
    }
}
