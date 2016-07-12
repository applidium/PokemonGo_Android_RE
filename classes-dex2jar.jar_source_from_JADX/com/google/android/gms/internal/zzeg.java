package com.google.android.gms.internal;

import com.google.android.gms.internal.zzeo.zza;

@zzgr
public final class zzeg extends zza {
    private final Object zzpd;
    private zzei.zza zzzh;
    private zzef zzzi;

    public zzeg() {
        this.zzpd = new Object();
    }

    public void onAdClicked() {
        synchronized (this.zzpd) {
            if (this.zzzi != null) {
                this.zzzi.zzaX();
            }
        }
    }

    public void onAdClosed() {
        synchronized (this.zzpd) {
            if (this.zzzi != null) {
                this.zzzi.zzaY();
            }
        }
    }

    public void onAdFailedToLoad(int i) {
        synchronized (this.zzpd) {
            if (this.zzzh != null) {
                this.zzzh.zzq(i == 3 ? 1 : 2);
                this.zzzh = null;
            }
        }
    }

    public void onAdLeftApplication() {
        synchronized (this.zzpd) {
            if (this.zzzi != null) {
                this.zzzi.zzaZ();
            }
        }
    }

    public void onAdLoaded() {
        synchronized (this.zzpd) {
            if (this.zzzh != null) {
                this.zzzh.zzq(0);
                this.zzzh = null;
                return;
            }
            if (this.zzzi != null) {
                this.zzzi.zzbb();
            }
        }
    }

    public void onAdOpened() {
        synchronized (this.zzpd) {
            if (this.zzzi != null) {
                this.zzzi.zzba();
            }
        }
    }

    public void zza(zzef com_google_android_gms_internal_zzef) {
        synchronized (this.zzpd) {
            this.zzzi = com_google_android_gms_internal_zzef;
        }
    }

    public void zza(zzei.zza com_google_android_gms_internal_zzei_zza) {
        synchronized (this.zzpd) {
            this.zzzh = com_google_android_gms_internal_zzei_zza;
        }
    }

    public void zza(zzep com_google_android_gms_internal_zzep) {
        synchronized (this.zzpd) {
            if (this.zzzh != null) {
                this.zzzh.zza(0, com_google_android_gms_internal_zzep);
                this.zzzh = null;
                return;
            }
            if (this.zzzi != null) {
                this.zzzi.zzbb();
            }
        }
    }
}
