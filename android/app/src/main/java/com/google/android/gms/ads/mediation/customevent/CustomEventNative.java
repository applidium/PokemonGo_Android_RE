package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.mediation.NativeMediationAdRequest;

public interface CustomEventNative extends CustomEvent {
    void requestNativeAd(Context context, CustomEventNativeListener customEventNativeListener, String str, NativeMediationAdRequest nativeMediationAdRequest, Bundle bundle);
}
