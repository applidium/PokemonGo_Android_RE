package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.ads.mediation.AdUrlAdapter;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzei.zza;
import java.util.List;

@zzgr
public final class zzeh implements zza {
    private final Context mContext;
    private final NativeAdOptionsParcel zzoY;
    private final List<String> zzoZ;
    private final zzem zzox;
    private final AdRequestParcel zzpH;
    private final VersionInfoParcel zzpb;
    private final Object zzpd;
    private final String zzzj;
    private final long zzzk;
    private final zzed zzzl;
    private final AdSizeParcel zzzm;
    private final boolean zzzn;
    private zzen zzzo;
    private int zzzp;
    private zzep zzzq;

    /* renamed from: com.google.android.gms.internal.zzeh.1 */
    class C05281 implements Runnable {
        final /* synthetic */ zzeg zzzr;
        final /* synthetic */ zzeh zzzs;

        C05281(zzeh com_google_android_gms_internal_zzeh, zzeg com_google_android_gms_internal_zzeg) {
            this.zzzs = com_google_android_gms_internal_zzeh;
            this.zzzr = com_google_android_gms_internal_zzeg;
        }

        public void run() {
            synchronized (this.zzzs.zzpd) {
                if (this.zzzs.zzzp != -2) {
                    return;
                }
                this.zzzs.zzzo = this.zzzs.zzdU();
                if (this.zzzs.zzzo == null) {
                    this.zzzs.zzq(4);
                    return;
                }
                this.zzzr.zza(this.zzzs);
                this.zzzs.zza(this.zzzr);
            }
        }
    }

    public zzeh(Context context, String str, zzem com_google_android_gms_internal_zzem, zzee com_google_android_gms_internal_zzee, zzed com_google_android_gms_internal_zzed, AdRequestParcel adRequestParcel, AdSizeParcel adSizeParcel, VersionInfoParcel versionInfoParcel, boolean z, NativeAdOptionsParcel nativeAdOptionsParcel, List<String> list) {
        this.zzpd = new Object();
        this.zzzp = -2;
        this.mContext = context;
        this.zzox = com_google_android_gms_internal_zzem;
        this.zzzl = com_google_android_gms_internal_zzed;
        if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
            this.zzzj = zzdT();
        } else {
            this.zzzj = str;
        }
        this.zzzk = com_google_android_gms_internal_zzee.zzyX != -1 ? com_google_android_gms_internal_zzee.zzyX : 10000;
        this.zzpH = adRequestParcel;
        this.zzzm = adSizeParcel;
        this.zzpb = versionInfoParcel;
        this.zzzn = z;
        this.zzoY = nativeAdOptionsParcel;
        this.zzoZ = list;
    }

    private void zza(long j, long j2, long j3, long j4) {
        while (this.zzzp == -2) {
            zzb(j, j2, j3, j4);
        }
    }

    private void zza(zzeg com_google_android_gms_internal_zzeg) {
        if ("com.google.ads.mediation.AdUrlAdapter".equals(this.zzzj)) {
            Bundle bundle = this.zzpH.zzsL.getBundle(this.zzzj);
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putString("sdk_less_network_id", this.zzzl.zzyN);
            this.zzpH.zzsL.putBundle(this.zzzj, bundle);
        }
        try {
            if (this.zzpb.zzJw < 4100000) {
                if (this.zzzm.zztf) {
                    this.zzzo.zza(zze.zzy(this.mContext), this.zzpH, this.zzzl.zzyT, com_google_android_gms_internal_zzeg);
                } else {
                    this.zzzo.zza(zze.zzy(this.mContext), this.zzzm, this.zzpH, this.zzzl.zzyT, (zzeo) com_google_android_gms_internal_zzeg);
                }
            } else if (this.zzzn) {
                this.zzzo.zza(zze.zzy(this.mContext), this.zzpH, this.zzzl.zzyT, this.zzzl.zzyM, com_google_android_gms_internal_zzeg, this.zzoY, this.zzoZ);
            } else if (this.zzzm.zztf) {
                this.zzzo.zza(zze.zzy(this.mContext), this.zzpH, this.zzzl.zzyT, this.zzzl.zzyM, (zzeo) com_google_android_gms_internal_zzeg);
            } else {
                this.zzzo.zza(zze.zzy(this.mContext), this.zzzm, this.zzpH, this.zzzl.zzyT, this.zzzl.zzyM, com_google_android_gms_internal_zzeg);
            }
        } catch (Throwable e) {
            zzb.zzd("Could not request ad from mediation adapter.", e);
            zzq(5);
        }
    }

    private void zzb(long j, long j2, long j3, long j4) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j5 = j2 - (elapsedRealtime - j);
        elapsedRealtime = j4 - (elapsedRealtime - j3);
        if (j5 <= 0 || elapsedRealtime <= 0) {
            zzb.zzaG("Timed out waiting for adapter.");
            this.zzzp = 3;
            return;
        }
        try {
            this.zzpd.wait(Math.min(j5, elapsedRealtime));
        } catch (InterruptedException e) {
            this.zzzp = -1;
        }
    }

    private String zzdT() {
        try {
            if (!TextUtils.isEmpty(this.zzzl.zzyQ)) {
                return this.zzox.zzaf(this.zzzl.zzyQ) ? "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter" : "com.google.ads.mediation.customevent.CustomEventAdapter";
            }
        } catch (RemoteException e) {
            zzb.zzaH("Fail to determine the custom event's version, assuming the old one.");
        }
        return "com.google.ads.mediation.customevent.CustomEventAdapter";
    }

    private zzen zzdU() {
        zzb.zzaG("Instantiating mediation adapter: " + this.zzzj);
        if (((Boolean) zzby.zzvu.get()).booleanValue()) {
            if ("com.google.ads.mediation.admob.AdMobAdapter".equals(this.zzzj)) {
                return new zzet(new AdMobAdapter());
            }
            if ("com.google.ads.mediation.AdUrlAdapter".equals(this.zzzj)) {
                return new zzet(new AdUrlAdapter());
            }
        }
        try {
            return this.zzox.zzae(this.zzzj);
        } catch (Throwable e) {
            zzb.zza("Could not instantiate mediation adapter: " + this.zzzj, e);
            return null;
        }
    }

    public void cancel() {
        synchronized (this.zzpd) {
            try {
                if (this.zzzo != null) {
                    this.zzzo.destroy();
                }
            } catch (Throwable e) {
                zzb.zzd("Could not destroy mediation adapter.", e);
            }
            this.zzzp = -1;
            this.zzpd.notify();
        }
    }

    public zzei zza(long j, long j2) {
        zzei com_google_android_gms_internal_zzei;
        synchronized (this.zzpd) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            zzeg com_google_android_gms_internal_zzeg = new zzeg();
            zzid.zzIE.post(new C05281(this, com_google_android_gms_internal_zzeg));
            zza(elapsedRealtime, this.zzzk, j, j2);
            com_google_android_gms_internal_zzei = new zzei(this.zzzl, this.zzzo, this.zzzj, com_google_android_gms_internal_zzeg, this.zzzp, this.zzzq);
        }
        return com_google_android_gms_internal_zzei;
    }

    public void zza(int i, zzep com_google_android_gms_internal_zzep) {
        synchronized (this.zzpd) {
            this.zzzp = i;
            this.zzzq = com_google_android_gms_internal_zzep;
            this.zzpd.notify();
        }
    }

    public void zzq(int i) {
        synchronized (this.zzpd) {
            this.zzzp = i;
            this.zzpd.notify();
        }
    }
}
