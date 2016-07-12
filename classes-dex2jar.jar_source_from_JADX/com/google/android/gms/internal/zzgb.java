package com.google.android.gms.internal;

import com.google.android.gms.ads.purchase.PlayStorePurchaseListener;
import com.google.android.gms.internal.zzfw.zza;

@zzgr
public final class zzgb extends zza {
    private final PlayStorePurchaseListener zztJ;

    public zzgb(PlayStorePurchaseListener playStorePurchaseListener) {
        this.zztJ = playStorePurchaseListener;
    }

    public boolean isValidPurchase(String str) {
        return this.zztJ.isValidPurchase(str);
    }

    public void zza(zzfv com_google_android_gms_internal_zzfv) {
        this.zztJ.onInAppPurchaseFinished(new zzfz(com_google_android_gms_internal_zzfv));
    }
}
