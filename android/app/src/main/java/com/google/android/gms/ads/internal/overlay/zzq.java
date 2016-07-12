package com.google.android.gms.ads.internal.overlay;

import com.google.android.gms.internal.zzid;

class zzq implements Runnable {
    private boolean mCancelled;
    private zzk zzCo;

    zzq(zzk com_google_android_gms_ads_internal_overlay_zzk) {
        this.mCancelled = false;
        this.zzCo = com_google_android_gms_ads_internal_overlay_zzk;
    }

    public void cancel() {
        this.mCancelled = true;
        zzid.zzIE.removeCallbacks(this);
    }

    public void run() {
        if (!this.mCancelled) {
            this.zzCo.zzeX();
            zzfg();
        }
    }

    public void zzfg() {
        zzid.zzIE.postDelayed(this, 250);
    }
}
