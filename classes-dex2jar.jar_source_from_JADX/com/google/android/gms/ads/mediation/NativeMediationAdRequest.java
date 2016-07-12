package com.google.android.gms.ads.mediation;

import com.google.android.gms.ads.formats.NativeAdOptions;

public interface NativeMediationAdRequest extends MediationAdRequest {
    NativeAdOptions getNativeAdOptions();

    boolean isAppInstallAdRequested();

    boolean isContentAdRequested();
}
