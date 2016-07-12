package com.google.android.gms.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zza;
import com.google.android.gms.ads.internal.client.zzaa;
import com.google.android.gms.ads.purchase.InAppPurchaseListener;
import com.google.android.gms.ads.purchase.PlayStorePurchaseListener;

public final class InterstitialAd {
    private final zzaa zznU;

    public InterstitialAd(Context context) {
        this.zznU = new zzaa(context);
    }

    public AdListener getAdListener() {
        return this.zznU.getAdListener();
    }

    public String getAdUnitId() {
        return this.zznU.getAdUnitId();
    }

    public InAppPurchaseListener getInAppPurchaseListener() {
        return this.zznU.getInAppPurchaseListener();
    }

    public String getMediationAdapterClassName() {
        return this.zznU.getMediationAdapterClassName();
    }

    public boolean isLoaded() {
        return this.zznU.isLoaded();
    }

    public boolean isLoading() {
        return this.zznU.isLoading();
    }

    public void loadAd(AdRequest adRequest) {
        this.zznU.zza(adRequest.zzaF());
    }

    public void setAdListener(AdListener adListener) {
        this.zznU.setAdListener(adListener);
        if (adListener != null && (adListener instanceof zza)) {
            this.zznU.zza((zza) adListener);
        } else if (adListener == null) {
            this.zznU.zza(null);
        }
    }

    public void setAdUnitId(String str) {
        this.zznU.setAdUnitId(str);
    }

    public void setInAppPurchaseListener(InAppPurchaseListener inAppPurchaseListener) {
        this.zznU.setInAppPurchaseListener(inAppPurchaseListener);
    }

    public void setPlayStorePurchaseParams(PlayStorePurchaseListener playStorePurchaseListener, String str) {
        this.zznU.setPlayStorePurchaseParams(playStorePurchaseListener, str);
    }

    public void show() {
        this.zznU.show();
    }
}
