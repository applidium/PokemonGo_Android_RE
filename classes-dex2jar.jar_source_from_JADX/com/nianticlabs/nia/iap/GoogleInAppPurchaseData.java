package com.nianticlabs.nia.iap;

import android.util.Log;
import com.voxelbusters.nativeplugins.defines.Keys.Billing;
import org.json.JSONObject;

final class GoogleInAppPurchaseData {
    private static final String TAG = "GoogleInAppPurchaseData";
    private String developerPayload;
    private String orderId;
    private String packageName;
    private String productId;
    private String purchaseState;
    private long purchaseTime;

    GoogleInAppPurchaseData() {
    }

    static GoogleInAppPurchaseData fromJson(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            GoogleInAppPurchaseData googleInAppPurchaseData = new GoogleInAppPurchaseData();
            googleInAppPurchaseData.orderId = jSONObject.getString("orderId");
            googleInAppPurchaseData.packageName = jSONObject.getString("packageName");
            googleInAppPurchaseData.productId = jSONObject.getString(Billing.PRODUCT_IDENTIFIER);
            googleInAppPurchaseData.purchaseTime = jSONObject.getLong("purchaseTime");
            googleInAppPurchaseData.purchaseState = jSONObject.getString("purchaseState");
            googleInAppPurchaseData.developerPayload = jSONObject.getString("developerPayload");
            return googleInAppPurchaseData;
        } catch (Throwable e) {
            Log.e(TAG, "Failed to parse GoogleInAppPurchaseData: %s", e);
            return null;
        }
    }

    String getDeveloperPayload() {
        return this.developerPayload;
    }

    String getOrderId() {
        return this.orderId;
    }

    String getPackageName() {
        return this.packageName;
    }

    String getProductId() {
        return this.productId;
    }

    String getPurchaseState() {
        return this.purchaseState;
    }

    long getPurchaseTime() {
        return this.purchaseTime;
    }
}
