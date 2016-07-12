package com.google.android.gms.ads.doubleclick;

import android.content.Context;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.internal.client.zzaa;

public final class PublisherInterstitialAd {
    private final zzaa zznU;

    public PublisherInterstitialAd(Context context) {
        this.zznU = new zzaa(context, this);
    }

    public AdListener getAdListener() {
        return this.zznU.getAdListener();
    }

    public String getAdUnitId() {
        return this.zznU.getAdUnitId();
    }

    public AppEventListener getAppEventListener() {
        return this.zznU.getAppEventListener();
    }

    public String getMediationAdapterClassName() {
        return this.zznU.getMediationAdapterClassName();
    }

    public OnCustomRenderedAdLoadedListener getOnCustomRenderedAdLoadedListener() {
        return this.zznU.getOnCustomRenderedAdLoadedListener();
    }

    public boolean isLoaded() {
        return this.zznU.isLoaded();
    }

    public void loadAd(PublisherAdRequest publisherAdRequest) {
        this.zznU.zza(publisherAdRequest.zzaF());
    }

    public void setAdListener(AdListener adListener) {
        this.zznU.setAdListener(adListener);
    }

    public void setAdUnitId(String str) {
        this.zznU.setAdUnitId(str);
    }

    public void setAppEventListener(AppEventListener appEventListener) {
        this.zznU.setAppEventListener(appEventListener);
    }

    public void setOnCustomRenderedAdLoadedListener(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        this.zznU.setOnCustomRenderedAdLoadedListener(onCustomRenderedAdLoadedListener);
    }

    public void show() {
        this.zznU.show();
    }
}
