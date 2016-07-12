package com.google.android.gms.ads.purchase;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.internal.zzft;
import com.google.android.gms.internal.zzfy;

public class InAppPurchaseActivity extends Activity {
    public static final String CLASS_NAME = "com.google.android.gms.ads.purchase.InAppPurchaseActivity";
    public static final String SIMPLE_CLASS_NAME = "InAppPurchaseActivity";
    private zzft zzKR;

    protected void onActivityResult(int i, int i2, Intent intent) {
        try {
            if (this.zzKR != null) {
                this.zzKR.onActivityResult(i, i2, intent);
            }
        } catch (Throwable e) {
            zzb.zzd("Could not forward onActivityResult to in-app purchase manager:", e);
        }
        super.onActivityResult(i, i2, intent);
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.zzKR = zzfy.zze(this);
        if (this.zzKR == null) {
            zzb.zzaH("Could not create in-app purchase manager.");
            finish();
            return;
        }
        try {
            this.zzKR.onCreate();
        } catch (Throwable e) {
            zzb.zzd("Could not forward onCreate to in-app purchase manager:", e);
            finish();
        }
    }

    protected void onDestroy() {
        try {
            if (this.zzKR != null) {
                this.zzKR.onDestroy();
            }
        } catch (Throwable e) {
            zzb.zzd("Could not forward onDestroy to in-app purchase manager:", e);
        }
        super.onDestroy();
    }
}
