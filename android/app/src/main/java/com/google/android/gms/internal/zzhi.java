package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzhs.zza;

@zzgr
public class zzhi extends zzhz implements zzhj, zzhm {
    private final Context mContext;
    private final zza zzDe;
    private int zzDv;
    private final String zzGY;
    private final zzhh zzHg;
    private final zzhm zzHh;
    private final String zzHi;
    private int zzHj;
    private final Object zzpd;
    private final String zzzj;

    /* renamed from: com.google.android.gms.internal.zzhi.1 */
    class C05681 implements Runnable {
        final /* synthetic */ zzen zzHk;
        final /* synthetic */ zzhi zzHl;
        final /* synthetic */ AdRequestParcel zzpe;

        C05681(zzhi com_google_android_gms_internal_zzhi, zzen com_google_android_gms_internal_zzen, AdRequestParcel adRequestParcel) {
            this.zzHl = com_google_android_gms_internal_zzhi;
            this.zzHk = com_google_android_gms_internal_zzen;
            this.zzpe = adRequestParcel;
        }

        public void run() {
            try {
                this.zzHk.zza(this.zzpe, this.zzHl.zzHi);
            } catch (Throwable e) {
                zzb.zzd("Fail to load ad from adapter.", e);
                this.zzHl.zzb(this.zzHl.zzzj, 0);
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.zzhi.2 */
    class C05692 implements Runnable {
        final /* synthetic */ zzen zzHk;
        final /* synthetic */ zzhi zzHl;
        final /* synthetic */ zzhl zzHm;
        final /* synthetic */ AdRequestParcel zzpe;

        C05692(zzhi com_google_android_gms_internal_zzhi, zzen com_google_android_gms_internal_zzen, AdRequestParcel adRequestParcel, zzhl com_google_android_gms_internal_zzhl) {
            this.zzHl = com_google_android_gms_internal_zzhi;
            this.zzHk = com_google_android_gms_internal_zzen;
            this.zzpe = adRequestParcel;
            this.zzHm = com_google_android_gms_internal_zzhl;
        }

        public void run() {
            try {
                this.zzHk.zza(zze.zzy(this.zzHl.mContext), this.zzpe, this.zzHl.zzGY, this.zzHm, this.zzHl.zzHi);
            } catch (Throwable e) {
                zzb.zzd("Fail to initialize adapter " + this.zzHl.zzzj, e);
                this.zzHl.zzb(this.zzHl.zzzj, 0);
            }
        }
    }

    public zzhi(Context context, String str, String str2, String str3, zza com_google_android_gms_internal_zzhs_zza, zzhh com_google_android_gms_internal_zzhh, zzhm com_google_android_gms_internal_zzhm) {
        this.zzHj = 0;
        this.zzDv = 3;
        this.mContext = context;
        this.zzzj = str;
        this.zzGY = str2;
        this.zzHi = str3;
        this.zzDe = com_google_android_gms_internal_zzhs_zza;
        this.zzHg = com_google_android_gms_internal_zzhh;
        this.zzpd = new Object();
        this.zzHh = com_google_android_gms_internal_zzhm;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void zzk(long r4) {
        /*
        r3 = this;
    L_0x0000:
        r1 = r3.zzpd;
        monitor-enter(r1);
        r0 = r3.zzHj;	 Catch:{ all -> 0x0011 }
        if (r0 == 0) goto L_0x0009;
    L_0x0007:
        monitor-exit(r1);	 Catch:{ all -> 0x0011 }
    L_0x0008:
        return;
    L_0x0009:
        r0 = r3.zzf(r4);	 Catch:{ all -> 0x0011 }
        if (r0 != 0) goto L_0x0014;
    L_0x000f:
        monitor-exit(r1);	 Catch:{ all -> 0x0011 }
        goto L_0x0008;
    L_0x0011:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x0011 }
        throw r0;
    L_0x0014:
        monitor-exit(r1);	 Catch:{ all -> 0x0011 }
        goto L_0x0000;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzhi.zzk(long):void");
    }

    public void onStop() {
    }

    public void zzK(int i) {
        zzb(this.zzzj, 0);
    }

    public void zzav(String str) {
        synchronized (this.zzpd) {
            this.zzHj = 1;
            this.zzpd.notify();
        }
    }

    public void zzb(String str, int i) {
        synchronized (this.zzpd) {
            this.zzHj = 2;
            this.zzDv = i;
            this.zzpd.notify();
        }
    }

    public void zzbn() {
        if (this.zzHg != null && this.zzHg.zzgd() != null && this.zzHg.zzgc() != null) {
            zzhl zzgd = this.zzHg.zzgd();
            zzgd.zza((zzhm) this);
            zzgd.zza((zzhj) this);
            AdRequestParcel adRequestParcel = this.zzDe.zzHC.zzEn;
            zzen zzgc = this.zzHg.zzgc();
            try {
                if (zzgc.isInitialized()) {
                    com.google.android.gms.ads.internal.util.client.zza.zzJt.post(new C05681(this, zzgc, adRequestParcel));
                } else {
                    com.google.android.gms.ads.internal.util.client.zza.zzJt.post(new C05692(this, zzgc, adRequestParcel, zzgd));
                }
            } catch (Throwable e) {
                zzb.zzd("Fail to check if adapter is initialized.", e);
                zzb(this.zzzj, 0);
            }
            zzk(zzp.zzbz().elapsedRealtime());
            zzgd.zza(null);
            zzgd.zza(null);
            if (this.zzHj == 1) {
                this.zzHh.zzav(this.zzzj);
            } else {
                this.zzHh.zzb(this.zzzj, this.zzDv);
            }
        }
    }

    protected boolean zzf(long j) {
        long elapsedRealtime = 20000 - (zzp.zzbz().elapsedRealtime() - j);
        if (elapsedRealtime <= 0) {
            return false;
        }
        try {
            this.zzpd.wait(elapsedRealtime);
            return true;
        } catch (InterruptedException e) {
            return false;
        }
    }

    public void zzge() {
        this.zzHg.zzgd();
        AdRequestParcel adRequestParcel = this.zzDe.zzHC.zzEn;
        try {
            this.zzHg.zzgc().zza(adRequestParcel, this.zzHi);
        } catch (Throwable e) {
            zzb.zzd("Fail to load ad from adapter.", e);
            zzb(this.zzzj, 0);
        }
    }
}
