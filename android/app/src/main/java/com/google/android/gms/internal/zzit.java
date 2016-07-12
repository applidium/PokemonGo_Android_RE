package com.google.android.gms.internal;

import com.google.android.gms.internal.zzis.zzc;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

@zzgr
public class zzit<T> implements zzis<T> {
    protected final BlockingQueue<zza> zzJM;
    protected T zzJN;
    private final Object zzpd;
    protected int zzys;

    class zza {
        public final zzc<T> zzJO;
        public final com.google.android.gms.internal.zzis.zza zzJP;
        final /* synthetic */ zzit zzJQ;

        public zza(zzit com_google_android_gms_internal_zzit, zzc<T> com_google_android_gms_internal_zzis_zzc_T, com.google.android.gms.internal.zzis.zza com_google_android_gms_internal_zzis_zza) {
            this.zzJQ = com_google_android_gms_internal_zzit;
            this.zzJO = com_google_android_gms_internal_zzis_zzc_T;
            this.zzJP = com_google_android_gms_internal_zzis_zza;
        }
    }

    public zzit() {
        this.zzpd = new Object();
        this.zzys = 0;
        this.zzJM = new LinkedBlockingQueue();
    }

    public int getStatus() {
        return this.zzys;
    }

    public void reject() {
        synchronized (this.zzpd) {
            if (this.zzys != 0) {
                throw new UnsupportedOperationException();
            }
            this.zzys = -1;
            for (zza com_google_android_gms_internal_zzit_zza : this.zzJM) {
                com_google_android_gms_internal_zzit_zza.zzJP.run();
            }
            this.zzJM.clear();
        }
    }

    public void zza(zzc<T> com_google_android_gms_internal_zzis_zzc_T, com.google.android.gms.internal.zzis.zza com_google_android_gms_internal_zzis_zza) {
        synchronized (this.zzpd) {
            if (this.zzys == 1) {
                com_google_android_gms_internal_zzis_zzc_T.zzc(this.zzJN);
            } else if (this.zzys == -1) {
                com_google_android_gms_internal_zzis_zza.run();
            } else if (this.zzys == 0) {
                this.zzJM.add(new zza(this, com_google_android_gms_internal_zzis_zzc_T, com_google_android_gms_internal_zzis_zza));
            }
        }
    }

    public void zzg(T t) {
        synchronized (this.zzpd) {
            if (this.zzys != 0) {
                throw new UnsupportedOperationException();
            }
            this.zzJN = t;
            this.zzys = 1;
            for (zza com_google_android_gms_internal_zzit_zza : this.zzJM) {
                com_google_android_gms_internal_zzit_zza.zzJO.zzc(t);
            }
            this.zzJM.clear();
        }
    }
}
