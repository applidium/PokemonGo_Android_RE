package com.nianticlabs.nia.iap;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesUtil;
import java.lang.ref.WeakReference;

public class PurchaseActivity extends Activity {
    public static final int REQUEST_PURCHASE_RESULT = 10009;
    private static String TAG;
    private GoogleInAppBillingProvider billingProvider;

    static {
        TAG = "PurchaseActivity";
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        switch (i) {
            case REQUEST_PURCHASE_RESULT /*10009*/:
                this.billingProvider.forwardedOnActivityResult(i2, intent);
                break;
            default:
                Log.e(TAG, "Unandled requestCode: " + i);
                break;
        }
        finish();
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.billingProvider = null;
        WeakReference instance = GoogleInAppBillingProvider.getInstance();
        if (instance != null) {
            this.billingProvider = (GoogleInAppBillingProvider) instance.get();
        }
        if (this.billingProvider == null) {
            throw new RuntimeException("Unable to locate GoogleInAppBillingProvider");
        }
    }

    protected void onResume() {
        super.onResume();
        int isGooglePlayServicesAvailable = GooglePlayServicesUtil.isGooglePlayServicesAvailable(this);
        if (isGooglePlayServicesAvailable != 0) {
            Log.e(TAG, "Google Play Services not available: " + isGooglePlayServicesAvailable);
            finish();
            return;
        }
        this.billingProvider.startBuyIntent(this);
    }
}
