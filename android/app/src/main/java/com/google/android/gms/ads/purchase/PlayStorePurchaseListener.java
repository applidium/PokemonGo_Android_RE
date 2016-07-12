package com.google.android.gms.ads.purchase;

public interface PlayStorePurchaseListener {
    boolean isValidPurchase(String str);

    void onInAppPurchaseFinished(InAppPurchaseResult inAppPurchaseResult);
}
