package com.google.android.gms.ads.mediation;

public interface MediationInterstitialListener {
    void onAdClicked(MediationInterstitialAdapter mediationInterstitialAdapter);

    void onAdClosed(MediationInterstitialAdapter mediationInterstitialAdapter);

    void onAdFailedToLoad(MediationInterstitialAdapter mediationInterstitialAdapter, int i);

    void onAdLeftApplication(MediationInterstitialAdapter mediationInterstitialAdapter);

    void onAdLoaded(MediationInterstitialAdapter mediationInterstitialAdapter);

    void onAdOpened(MediationInterstitialAdapter mediationInterstitialAdapter);
}
