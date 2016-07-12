package com.google.android.gms.internal;

import com.google.android.gms.ads.purchase.InAppPurchaseListener;
import com.google.android.gms.internal.zzfs.zza;

@zzgr
public final class zzfx extends zza {
    private final InAppPurchaseListener zztI;

    public zzfx(InAppPurchaseListener inAppPurchaseListener) {
        this.zztI = inAppPurchaseListener;
    }

    public void zza(zzfr com_google_android_gms_internal_zzfr) {
        this.zztI.onInAppPurchaseRequested(new zzga(com_google_android_gms_internal_zzfr));
    }
}
