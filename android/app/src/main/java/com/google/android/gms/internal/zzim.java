package com.google.android.gms.internal;

import android.app.Activity;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import com.google.android.gms.ads.internal.zzp;

public final class zzim {
    private Activity zzJn;
    private boolean zzJo;
    private boolean zzJp;
    private boolean zzJq;
    private OnGlobalLayoutListener zzJr;
    private OnScrollChangedListener zzJs;

    public zzim(Activity activity, OnGlobalLayoutListener onGlobalLayoutListener, OnScrollChangedListener onScrollChangedListener) {
        this.zzJn = activity;
        this.zzJr = onGlobalLayoutListener;
        this.zzJs = onScrollChangedListener;
    }

    private void zzgQ() {
        if (this.zzJn != null && !this.zzJo) {
            if (this.zzJr != null) {
                zzp.zzbv().zza(this.zzJn, this.zzJr);
            }
            if (this.zzJs != null) {
                zzp.zzbv().zza(this.zzJn, this.zzJs);
            }
            this.zzJo = true;
        }
    }

    private void zzgR() {
        if (this.zzJn != null && this.zzJo) {
            if (this.zzJr != null) {
                zzp.zzbx().zzb(this.zzJn, this.zzJr);
            }
            if (this.zzJs != null) {
                zzp.zzbv().zzb(this.zzJn, this.zzJs);
            }
            this.zzJo = false;
        }
    }

    public void onAttachedToWindow() {
        this.zzJp = true;
        if (this.zzJq) {
            zzgQ();
        }
    }

    public void onDetachedFromWindow() {
        this.zzJp = false;
        zzgR();
    }

    public void zzgO() {
        this.zzJq = true;
        if (this.zzJp) {
            zzgQ();
        }
    }

    public void zzgP() {
        this.zzJq = false;
        zzgR();
    }

    public void zzk(Activity activity) {
        this.zzJn = activity;
    }
}
