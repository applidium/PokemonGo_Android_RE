package com.google.android.gms.ads.internal.request;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Looper;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.internal.zzbr;
import com.google.android.gms.internal.zzby;
import com.google.android.gms.internal.zzgr;
import com.google.android.gms.internal.zzgs;
import com.google.android.gms.internal.zzgt;
import com.google.android.gms.internal.zzhz;

@zzgr
public abstract class zzd extends zzhz implements com.google.android.gms.ads.internal.request.zzc.zza {
    private AdResponseParcel zzDf;
    private final com.google.android.gms.ads.internal.request.zzc.zza zzEi;
    private final Object zzpd;
    private final AdRequestInfoParcel zzzz;

    @zzgr
    public static final class zza extends zzd {
        private final Context mContext;

        public zza(Context context, AdRequestInfoParcel adRequestInfoParcel, com.google.android.gms.ads.internal.request.zzc.zza com_google_android_gms_ads_internal_request_zzc_zza) {
            super(adRequestInfoParcel, com_google_android_gms_ads_internal_request_zzc_zza);
            this.mContext = context;
        }

        public void zzfH() {
        }

        public zzj zzfI() {
            return zzgt.zza(this.mContext, new zzbr((String) zzby.zzul.get()), zzgs.zzfQ());
        }
    }

    @zzgr
    public static class zzb extends zzd implements ConnectionCallbacks, OnConnectionFailedListener {
        private Context mContext;
        private final com.google.android.gms.ads.internal.request.zzc.zza zzEi;
        protected zze zzEj;
        private boolean zzEk;
        private final Object zzpd;
        private AdRequestInfoParcel zzzz;

        public zzb(Context context, AdRequestInfoParcel adRequestInfoParcel, com.google.android.gms.ads.internal.request.zzc.zza com_google_android_gms_ads_internal_request_zzc_zza) {
            Looper zzgM;
            super(adRequestInfoParcel, com_google_android_gms_ads_internal_request_zzc_zza);
            this.zzpd = new Object();
            this.mContext = context;
            this.zzzz = adRequestInfoParcel;
            this.zzEi = com_google_android_gms_ads_internal_request_zzc_zza;
            if (((Boolean) zzby.zzuK.get()).booleanValue()) {
                this.zzEk = true;
                zzgM = zzp.zzbG().zzgM();
            } else {
                zzgM = context.getMainLooper();
            }
            this.zzEj = new zze(context, zzgM, this, this, adRequestInfoParcel.zzqj.zzJw);
            connect();
        }

        protected void connect() {
            this.zzEj.zzoZ();
        }

        public void onConnected(Bundle bundle) {
            zzgz();
        }

        public void onConnectionFailed(ConnectionResult connectionResult) {
            com.google.android.gms.ads.internal.util.client.zzb.zzaF("Cannot connect to remote service, fallback to local instance.");
            zzfJ().zzgz();
            Bundle bundle = new Bundle();
            bundle.putString("action", "gms_connection_failed_fallback_to_local");
            zzp.zzbv().zzb(this.mContext, this.zzzz.zzqj.zzJu, "gmob-apps", bundle, true);
        }

        public void onConnectionSuspended(int i) {
            com.google.android.gms.ads.internal.util.client.zzb.zzaF("Disconnected from remote ad request service.");
        }

        public void zzfH() {
            synchronized (this.zzpd) {
                if (this.zzEj.isConnected() || this.zzEj.isConnecting()) {
                    this.zzEj.disconnect();
                }
                Binder.flushPendingCommands();
                if (this.zzEk) {
                    zzp.zzbG().zzgN();
                    this.zzEk = false;
                }
            }
        }

        public zzj zzfI() {
            zzj zzfM;
            synchronized (this.zzpd) {
                try {
                    zzfM = this.zzEj.zzfM();
                } catch (IllegalStateException e) {
                    zzfM = null;
                    return zzfM;
                } catch (DeadObjectException e2) {
                    zzfM = null;
                    return zzfM;
                }
            }
            return zzfM;
        }

        zzhz zzfJ() {
            return new zza(this.mContext, this.zzzz, this.zzEi);
        }
    }

    public zzd(AdRequestInfoParcel adRequestInfoParcel, com.google.android.gms.ads.internal.request.zzc.zza com_google_android_gms_ads_internal_request_zzc_zza) {
        this.zzpd = new Object();
        this.zzzz = adRequestInfoParcel;
        this.zzEi = com_google_android_gms_ads_internal_request_zzc_zza;
    }

    public final void onStop() {
        zzfH();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    boolean zza(com.google.android.gms.ads.internal.request.zzj r5, com.google.android.gms.ads.internal.request.AdRequestInfoParcel r6) {
        /*
        r4 = this;
        r1 = 0;
        r0 = 1;
        r2 = new com.google.android.gms.ads.internal.request.zzg;	 Catch:{ RemoteException -> 0x000b, NullPointerException -> 0x0024, SecurityException -> 0x0032, Throwable -> 0x0040 }
        r2.<init>(r4);	 Catch:{ RemoteException -> 0x000b, NullPointerException -> 0x0024, SecurityException -> 0x0032, Throwable -> 0x0040 }
        r5.zza(r6, r2);	 Catch:{ RemoteException -> 0x000b, NullPointerException -> 0x0024, SecurityException -> 0x0032, Throwable -> 0x0040 }
    L_0x000a:
        return r0;
    L_0x000b:
        r2 = move-exception;
        r3 = "Could not fetch ad response from ad request service.";
        com.google.android.gms.ads.internal.util.client.zzb.zzd(r3, r2);
        r3 = com.google.android.gms.ads.internal.zzp.zzby();
        r3.zzc(r2, r0);
    L_0x0018:
        r0 = r4.zzEi;
        r2 = new com.google.android.gms.ads.internal.request.AdResponseParcel;
        r2.<init>(r1);
        r0.zzb(r2);
        r0 = r1;
        goto L_0x000a;
    L_0x0024:
        r2 = move-exception;
        r3 = "Could not fetch ad response from ad request service due to an Exception.";
        com.google.android.gms.ads.internal.util.client.zzb.zzd(r3, r2);
        r3 = com.google.android.gms.ads.internal.zzp.zzby();
        r3.zzc(r2, r0);
        goto L_0x0018;
    L_0x0032:
        r2 = move-exception;
        r3 = "Could not fetch ad response from ad request service due to an Exception.";
        com.google.android.gms.ads.internal.util.client.zzb.zzd(r3, r2);
        r3 = com.google.android.gms.ads.internal.zzp.zzby();
        r3.zzc(r2, r0);
        goto L_0x0018;
    L_0x0040:
        r2 = move-exception;
        r3 = "Could not fetch ad response from ad request service due to an Exception.";
        com.google.android.gms.ads.internal.util.client.zzb.zzd(r3, r2);
        r3 = com.google.android.gms.ads.internal.zzp.zzby();
        r3.zzc(r2, r0);
        goto L_0x0018;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.request.zzd.zza(com.google.android.gms.ads.internal.request.zzj, com.google.android.gms.ads.internal.request.AdRequestInfoParcel):boolean");
    }

    public void zzb(AdResponseParcel adResponseParcel) {
        synchronized (this.zzpd) {
            this.zzDf = adResponseParcel;
            this.zzpd.notify();
        }
    }

    public void zzbn() {
        try {
            zzj zzfI = zzfI();
            if (zzfI == null) {
                this.zzEi.zzb(new AdResponseParcel(0));
            } else if (zza(zzfI, this.zzzz)) {
                zzi(zzp.zzbz().elapsedRealtime());
            }
            zzfH();
        } catch (Throwable th) {
            zzfH();
        }
    }

    protected boolean zzf(long j) {
        long elapsedRealtime = 60000 - (zzp.zzbz().elapsedRealtime() - j);
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

    public abstract void zzfH();

    public abstract zzj zzfI();

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected void zzi(long r6) {
        /*
        r5 = this;
        r1 = r5.zzpd;
        monitor-enter(r1);
    L_0x0003:
        r0 = r5.zzDf;	 Catch:{ all -> 0x0023 }
        if (r0 == 0) goto L_0x0010;
    L_0x0007:
        r0 = r5.zzEi;	 Catch:{ all -> 0x0023 }
        r2 = r5.zzDf;	 Catch:{ all -> 0x0023 }
        r0.zzb(r2);	 Catch:{ all -> 0x0023 }
        monitor-exit(r1);	 Catch:{ all -> 0x0023 }
    L_0x000f:
        return;
    L_0x0010:
        r0 = r5.zzf(r6);	 Catch:{ all -> 0x0023 }
        if (r0 != 0) goto L_0x0003;
    L_0x0016:
        r0 = r5.zzDf;	 Catch:{ all -> 0x0023 }
        if (r0 == 0) goto L_0x0026;
    L_0x001a:
        r0 = r5.zzEi;	 Catch:{ all -> 0x0023 }
        r2 = r5.zzDf;	 Catch:{ all -> 0x0023 }
        r0.zzb(r2);	 Catch:{ all -> 0x0023 }
    L_0x0021:
        monitor-exit(r1);	 Catch:{ all -> 0x0023 }
        goto L_0x000f;
    L_0x0023:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x0023 }
        throw r0;
    L_0x0026:
        r0 = r5.zzEi;	 Catch:{ all -> 0x0023 }
        r2 = new com.google.android.gms.ads.internal.request.AdResponseParcel;	 Catch:{ all -> 0x0023 }
        r3 = 0;
        r2.<init>(r3);	 Catch:{ all -> 0x0023 }
        r0.zzb(r2);	 Catch:{ all -> 0x0023 }
        goto L_0x0021;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.request.zzd.zzi(long):void");
    }
}
