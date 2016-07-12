package com.google.android.gms.ads.mediation;

public interface MediationBannerListener {
    void onAdClicked(MediationBannerAdapter mediationBannerAdapter);

    void onAdClosed(MediationBannerAdapter mediationBannerAdapter);

    void onAdFailedToLoad(MediationBannerAdapter mediationBannerAdapter, int i);

    void onAdLeftApplication(MediationBannerAdapter mediationBannerAdapter);

    void onAdLoaded(MediationBannerAdapter mediationBannerAdapter);

    void onAdOpened(MediationBannerAdapter mediationBannerAdapter);
}
