package com.google.android.gms.ads.mediation.customevent;

import com.google.android.gms.ads.mediation.NativeAdMapper;

public interface CustomEventNativeListener extends CustomEventListener {
    void onAdLoaded(NativeAdMapper nativeAdMapper);
}
