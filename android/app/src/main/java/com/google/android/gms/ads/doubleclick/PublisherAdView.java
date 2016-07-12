package com.google.android.gms.ads.doubleclick;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.internal.client.zzz;

public final class PublisherAdView extends ViewGroup {
    private final zzz zznT;

    public PublisherAdView(Context context) {
        super(context);
        this.zznT = new zzz(this);
    }

    public PublisherAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.zznT = new zzz(this, attributeSet, true);
    }

    public PublisherAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.zznT = new zzz(this, attributeSet, true);
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

    public AdSize[] getAdSizes() {
        return this.zznT.getAdSizes();
    }

    public String getAdUnitId() {
        return this.zznT.getAdUnitId();
    }

    public AppEventListener getAppEventListener() {
        return this.zznT.getAppEventListener();
    }

    public String getMediationAdapterClassName() {
        return this.zznT.getMediationAdapterClassName();
    }

    public OnCustomRenderedAdLoadedListener getOnCustomRenderedAdLoadedListener() {
        return this.zznT.getOnCustomRenderedAdLoadedListener();
    }

    public void loadAd(PublisherAdRequest publisherAdRequest) {
        this.zznT.zza(publisherAdRequest.zzaF());
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

    public void recordManualImpression() {
        this.zznT.recordManualImpression();
    }

    public void resume() {
        this.zznT.resume();
    }

    public void setAdListener(AdListener adListener) {
        this.zznT.setAdListener(adListener);
    }

    public void setAdSizes(AdSize... adSizeArr) {
        if (adSizeArr == null || adSizeArr.length < 1) {
            throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
        }
        this.zznT.zza(adSizeArr);
    }

    public void setAdUnitId(String str) {
        this.zznT.setAdUnitId(str);
    }

    public void setAppEventListener(AppEventListener appEventListener) {
        this.zznT.setAppEventListener(appEventListener);
    }

    public void setManualImpressionsEnabled(boolean z) {
        this.zznT.setManualImpressionsEnabled(z);
    }

    public void setOnCustomRenderedAdLoadedListener(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        this.zznT.setOnCustomRenderedAdLoadedListener(onCustomRenderedAdLoadedListener);
    }
}
