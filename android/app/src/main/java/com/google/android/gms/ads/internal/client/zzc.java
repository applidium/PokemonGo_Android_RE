package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.internal.client.zzo.zza;
import com.google.android.gms.internal.zzgr;

@zzgr
public final class zzc extends zza {
    private final AdListener zzsz;

    public zzc(AdListener adListener) {
        this.zzsz = adListener;
    }

    public void onAdClosed() {
        this.zzsz.onAdClosed();
    }

    public void onAdFailedToLoad(int i) {
        this.zzsz.onAdFailedToLoad(i);
    }

    public void onAdLeftApplication() {
        this.zzsz.onAdLeftApplication();
    }

    public void onAdLoaded() {
        this.zzsz.onAdLoaded();
    }

    public void onAdOpened() {
        this.zzsz.onAdOpened();
    }
}
