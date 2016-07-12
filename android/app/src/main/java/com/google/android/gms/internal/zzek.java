package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzb;
import java.util.ArrayList;
import java.util.List;

@zzgr
public class zzek implements zzec {
    private final Context mContext;
    private final zzcg zzoo;
    private final zzem zzox;
    private final Object zzpd;
    private final zzee zzzA;
    private final long zzzB;
    private final long zzzC;
    private boolean zzzD;
    private zzeh zzzE;
    private final boolean zzzn;
    private final AdRequestInfoParcel zzzz;

    /* renamed from: com.google.android.gms.internal.zzek.1 */
    class C05291 implements Runnable {
        final /* synthetic */ zzei zzzF;
        final /* synthetic */ zzek zzzG;

        C05291(zzek com_google_android_gms_internal_zzek, zzei com_google_android_gms_internal_zzei) {
            this.zzzG = com_google_android_gms_internal_zzek;
            this.zzzF = com_google_android_gms_internal_zzei;
        }

        public void run() {
            try {
                this.zzzF.zzzv.destroy();
            } catch (Throwable e) {
                zzb.zzd("Could not destroy mediation adapter.", e);
            }
        }
    }

    public zzek(Context context, AdRequestInfoParcel adRequestInfoParcel, zzem com_google_android_gms_internal_zzem, zzee com_google_android_gms_internal_zzee, boolean z, long j, long j2, zzcg com_google_android_gms_internal_zzcg) {
        this.zzpd = new Object();
        this.zzzD = false;
        this.mContext = context;
        this.zzzz = adRequestInfoParcel;
        this.zzox = com_google_android_gms_internal_zzem;
        this.zzzA = com_google_android_gms_internal_zzee;
        this.zzzn = z;
        this.zzzB = j;
        this.zzzC = j2;
        this.zzoo = com_google_android_gms_internal_zzcg;
    }

    public void cancel() {
        synchronized (this.zzpd) {
            this.zzzD = true;
            if (this.zzzE != null) {
                this.zzzE.cancel();
            }
        }
    }

    public zzei zzc(List<zzed> list) {
        zzb.zzaF("Starting mediation.");
        Iterable arrayList = new ArrayList();
        zzce zzdn = this.zzoo.zzdn();
        for (zzed com_google_android_gms_internal_zzed : list) {
            zzb.zzaG("Trying mediation network: " + com_google_android_gms_internal_zzed.zzyN);
            for (String str : com_google_android_gms_internal_zzed.zzyO) {
                zzce zzdn2 = this.zzoo.zzdn();
                synchronized (this.zzpd) {
                    if (this.zzzD) {
                        zzei com_google_android_gms_internal_zzei = new zzei(-1);
                        return com_google_android_gms_internal_zzei;
                    }
                    this.zzzE = new zzeh(this.mContext, str, this.zzox, this.zzzA, com_google_android_gms_internal_zzed, this.zzzz.zzEn, this.zzzz.zzqn, this.zzzz.zzqj, this.zzzn, this.zzzz.zzqB, this.zzzz.zzqD);
                    com_google_android_gms_internal_zzei = this.zzzE.zza(this.zzzB, this.zzzC);
                    if (com_google_android_gms_internal_zzei.zzzt == 0) {
                        zzb.zzaF("Adapter succeeded.");
                        this.zzoo.zze("mediation_network_succeed", str);
                        if (!arrayList.isEmpty()) {
                            this.zzoo.zze("mediation_networks_fail", TextUtils.join(",", arrayList));
                        }
                        this.zzoo.zza(zzdn2, "mls");
                        this.zzoo.zza(zzdn, "ttm");
                        return com_google_android_gms_internal_zzei;
                    }
                    arrayList.add(str);
                    this.zzoo.zza(zzdn2, "mlf");
                    if (com_google_android_gms_internal_zzei.zzzv != null) {
                        zzid.zzIE.post(new C05291(this, com_google_android_gms_internal_zzei));
                    }
                }
            }
        }
        if (!arrayList.isEmpty()) {
            this.zzoo.zze("mediation_networks_fail", TextUtils.join(",", arrayList));
        }
        return new zzei(1);
    }
}
