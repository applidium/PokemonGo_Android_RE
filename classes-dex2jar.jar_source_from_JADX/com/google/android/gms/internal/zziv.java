package com.google.android.gms.internal;

import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import com.google.android.gms.ads.internal.zzp;
import java.lang.ref.WeakReference;

class zziv extends zzix implements OnGlobalLayoutListener {
    private final WeakReference<OnGlobalLayoutListener> zzJR;

    public zziv(View view, OnGlobalLayoutListener onGlobalLayoutListener) {
        super(view);
        this.zzJR = new WeakReference(onGlobalLayoutListener);
    }

    public void onGlobalLayout() {
        OnGlobalLayoutListener onGlobalLayoutListener = (OnGlobalLayoutListener) this.zzJR.get();
        if (onGlobalLayoutListener != null) {
            onGlobalLayoutListener.onGlobalLayout();
        } else {
            detach();
        }
    }

    protected void zza(ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.addOnGlobalLayoutListener(this);
    }

    protected void zzb(ViewTreeObserver viewTreeObserver) {
        zzp.zzbx().zza(viewTreeObserver, (OnGlobalLayoutListener) this);
    }
}
