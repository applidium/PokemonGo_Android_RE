package com.google.android.gms.internal;

import android.content.Intent;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.purchase.InAppPurchaseResult;

@zzgr
public class zzfz implements InAppPurchaseResult {
    private final zzfv zzDc;

    public zzfz(zzfv com_google_android_gms_internal_zzfv) {
        this.zzDc = com_google_android_gms_internal_zzfv;
    }

    public void finishPurchase() {
        try {
            this.zzDc.finishPurchase();
        } catch (Throwable e) {
            zzb.zzd("Could not forward finishPurchase to InAppPurchaseResult", e);
        }
    }

    public String getProductId() {
        try {
            return this.zzDc.getProductId();
        } catch (Throwable e) {
            zzb.zzd("Could not forward getProductId to InAppPurchaseResult", e);
            return null;
        }
    }

    public Intent getPurchaseData() {
        try {
            return this.zzDc.getPurchaseData();
        } catch (Throwable e) {
            zzb.zzd("Could not forward getPurchaseData to InAppPurchaseResult", e);
            return null;
        }
    }

    public int getResultCode() {
        try {
            return this.zzDc.getResultCode();
        } catch (Throwable e) {
            zzb.zzd("Could not forward getPurchaseData to InAppPurchaseResult", e);
            return 0;
        }
    }

    public boolean isVerified() {
        try {
            return this.zzDc.isVerified();
        } catch (Throwable e) {
            zzb.zzd("Could not forward isVerified to InAppPurchaseResult", e);
            return false;
        }
    }
}
