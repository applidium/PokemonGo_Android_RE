package com.google.android.gms.ads;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.internal.client.zza;
import com.google.android.gms.ads.internal.client.zzz;
import com.google.android.gms.ads.purchase.InAppPurchaseListener;
import com.google.android.gms.ads.purchase.PlayStorePurchaseListener;

public final class AdView extends ViewGroup {
    private final zzz zznT;

    public AdView(Context context) {
        super(context);
        this.zznT = new zzz(this);
    }

    public AdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.zznT = new zzz(this, attributeSet, false);
    }

    public AdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.zznT = new zzz(this, attributeSet, false);
    }

    public void destroy() {
        this.zznT.destroy();
    }

    public AdListener getAdListener() {
        return this.zznT.getAdListener();
    }

    public AdSize getAdSize() {
        return this.zznT.getAdSize();
    }

    public String getAdUnitId() {
        return this.zznT.getAdUnitId();
    }

    public InAppPurchaseListener getInAppPurchaseListener() {
        return this.zznT.getInAppPurchaseListener();
    }

    public String getMediationAdapterClassName() {
        return this.zznT.getMediationAdapterClassName();
    }

    public boolean isLoading() {
        return this.zznT.isLoading();
    }

    public void loadAd(AdRequest adRequest) {
        this.zznT.zza(adRequest.zzaF());
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View childAt = getChildAt(0);
        if (childAt != null && childAt.getVisibility() != 8) {
            int measuredWidth = childAt.getMeasuredWidth();
            int measuredHeight = childAt.getMeasuredHeight();
            int i5 = ((i3 - i) - measuredWidth) / 2;
            int i6 = ((i4 - i2) - measuredHeight) / 2;
            childAt.layout(i5, i6, measuredWidth + i5, measuredHeight + i6);
        }
    }

    protected void onMeasure(int i, int i2) {
        int heightInPixels;
        int i3 = 0;
        View childAt = getChildAt(0);
        if (childAt == null || childAt.getVisibility() == 8) {
            AdSize adSize = getAdSize();
            if (adSize != null) {
                Context context = getContext();
                i3 = adSize.getWidthInPixels(context);
                heightInPixels = adSize.getHeightInPixels(context);
            } else {
                heightInPixels = 0;
            }
        } else {
            measureChild(childAt, i, i2);
            i3 = childAt.getMeasuredWidth();
            heightInPixels = childAt.getMeasuredHeight();
        }
        setMeasuredDimension(View.resolveSize(Math.max(i3, getSuggestedMinimumWidth()), i), View.resolveSize(Math.max(heightInPixels, getSuggestedMinimumHeight()), i2));
    }

    public void pause() {
        this.zznT.pause();
    }

    public void resume() {
        this.zznT.resume();
    }

    public void setAdListener(AdListener adListener) {
        this.zznT.setAdListener(adListener);
        if (adListener != null && (adListener instanceof zza)) {
            this.zznT.zza((zza) adListener);
        } else if (adListener == null) {
            this.zznT.zza(null);
        }
    }

    public void setAdSize(AdSize adSize) {
        this.zznT.setAdSizes(adSize);
    }

    public void setAdUnitId(String str) {
        this.zznT.setAdUnitId(str);
    }

    public void setInAppPurchaseListener(InAppPurchaseListener inAppPurchaseListener) {
        this.zznT.setInAppPurchaseListener(inAppPurchaseListener);
    }

    public void setPlayStorePurchaseParams(PlayStorePurchaseListener playStorePurchaseListener, String str) {
        this.zznT.setPlayStorePurchaseParams(playStorePurchaseListener, str);
    }
}
