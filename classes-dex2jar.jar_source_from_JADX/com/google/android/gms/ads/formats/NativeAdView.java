package com.google.android.gms.ads.formats;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.google.android.gms.ads.internal.client.zzl;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzco;

public abstract class NativeAdView extends FrameLayout {
    private final FrameLayout zznZ;
    private final zzco zzoa;

    public NativeAdView(Context context) {
        super(context);
        this.zznZ = zzm(context);
        this.zzoa = zzaI();
    }

    public NativeAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.zznZ = zzm(context);
        this.zzoa = zzaI();
    }

    public NativeAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.zznZ = zzm(context);
        this.zzoa = zzaI();
    }

    public NativeAdView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.zznZ = zzm(context);
        this.zzoa = zzaI();
    }

    private zzco zzaI() {
        zzx.zzb(this.zznZ, (Object) "createDelegate must be called after mOverlayFrame has been created");
        return zzl.zzcJ().zza(this.zznZ.getContext(), this, this.zznZ);
    }

    private FrameLayout zzm(Context context) {
        View zzn = zzn(context);
        zzn.setLayoutParams(new LayoutParams(-1, -1));
        addView(zzn);
        return zzn;
    }

    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        super.bringChildToFront(this.zznZ);
    }

    public void bringChildToFront(View view) {
        super.bringChildToFront(view);
        if (this.zznZ != view) {
            super.bringChildToFront(this.zznZ);
        }
    }

    public void removeAllViews() {
        super.removeAllViews();
        super.addView(this.zznZ);
    }

    public void removeView(View view) {
        if (this.zznZ != view) {
            super.removeView(view);
        }
    }

    public void setNativeAd(NativeAd nativeAd) {
        try {
            this.zzoa.zzb((zzd) nativeAd.zzaH());
        } catch (Throwable e) {
            zzb.zzb("Unable to call setNativeAd on delegate", e);
        }
    }

    protected void zza(String str, View view) {
        try {
            this.zzoa.zza(str, zze.zzy(view));
        } catch (Throwable e) {
            zzb.zzb("Unable to call setAssetView on delegate", e);
        }
    }

    protected View zzm(String str) {
        try {
            zzd zzW = this.zzoa.zzW(str);
            if (zzW != null) {
                return (View) zze.zzp(zzW);
            }
        } catch (Throwable e) {
            zzb.zzb("Unable to call getAssetView on delegate", e);
        }
        return null;
    }

    FrameLayout zzn(Context context) {
        return new FrameLayout(context);
    }
}
