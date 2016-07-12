package com.upsight.android.analytics.internal;

import android.content.Intent;
import android.support.v4.widget.ExploreByTouchHelper;
import android.text.TextUtils;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.upsight.android.Upsight;
import com.upsight.android.UpsightContext;
import com.upsight.android.UpsightException;
import com.upsight.android.analytics.UpsightGooglePlayHelper;
import com.upsight.android.analytics.event.UpsightPublisherData;
import com.upsight.android.analytics.event.monetization.UpsightMonetizationIapEvent;
import org.json.JSONException;
import org.json.JSONObject;
import spacemadness.com.lunarconsole.C1401R;

class GooglePlayHelper extends UpsightGooglePlayHelper {
    private static final String STORE_NAME = "google_play";
    private ObjectMapper mMapper;
    private UpsightContext mUpsight;

    static class PurchaseData {
        @JsonProperty("developerPayload")
        String developerPayload;
        @JsonProperty("orderId")
        String orderId;
        @JsonProperty("packageName")
        String packageName;
        @JsonProperty("productId")
        String productId;
        @JsonProperty("purchaseState")
        int purchaseState;
        @JsonProperty("purchaseTime")
        long purchaseTime;
        @JsonProperty("purchaseToken")
        String purchaseToken;

        PurchaseData() {
        }
    }

    public enum Resolution {
        buy,
        cancel,
        refund
    }

    GooglePlayHelper(UpsightContext upsightContext, ObjectMapper objectMapper) {
        this.mUpsight = upsightContext;
        this.mMapper = objectMapper;
    }

    private JSONObject createIapBundle(int i, String str, String str2) throws JSONException {
        return new JSONObject().put(UpsightGooglePlayHelper.PURCHASE_RESPONSE_CODE, i).put(UpsightGooglePlayHelper.PURCHASE_INAPP_PURCHASE_DATA, str).put(UpsightGooglePlayHelper.PURCHASE_INAPP_DATA_SIGNATURE, str2);
    }

    public void trackPurchase(int i, String str, double d, double d2, String str2, Intent intent, UpsightPublisherData upsightPublisherData) throws UpsightException {
        int intExtra = intent.getIntExtra(UpsightGooglePlayHelper.PURCHASE_RESPONSE_CODE, ExploreByTouchHelper.INVALID_ID);
        switch (intExtra) {
            case C1401R.styleable.AdsAttrs_adSize /*0*/:
                String stringExtra = intent.getStringExtra(UpsightGooglePlayHelper.PURCHASE_INAPP_PURCHASE_DATA);
                Object stringExtra2 = intent.getStringExtra(UpsightGooglePlayHelper.PURCHASE_INAPP_DATA_SIGNATURE);
                if (TextUtils.isEmpty(stringExtra)) {
                    this.mUpsight.getLogger().m199e(Upsight.LOG_TAG, "Failed to track Google Play purchase due to null or empty purchase data.", new Object[0]);
                    throw new UpsightException("Failed to track Google Play purchase due to null or empty purchase data.", new Object[0]);
                } else if (TextUtils.isEmpty(stringExtra2)) {
                    this.mUpsight.getLogger().m199e(Upsight.LOG_TAG, "Failed to track Google Play purchase due to null or empty data signature.", new Object[0]);
                    throw new UpsightException("Failed to track Google Play purchase due to null or empty data signature.", new Object[0]);
                } else {
                    try {
                        PurchaseData purchaseData = (PurchaseData) this.mMapper.treeToValue(this.mMapper.readTree(stringExtra), PurchaseData.class);
                        if (purchaseData != null) {
                            Resolution resolution;
                            switch (purchaseData.purchaseState) {
                                case C1401R.styleable.AdsAttrs_adSize /*0*/:
                                    resolution = Resolution.buy;
                                    break;
                                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                                    resolution = Resolution.cancel;
                                    break;
                                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                                    resolution = Resolution.refund;
                                    break;
                                default:
                                    this.mUpsight.getLogger().m199e(Upsight.LOG_TAG, "Failed to track Google Play purchase. Invalid purchase state.", new Object[0]);
                                    throw new UpsightException("Failed to track Google Play purchase. Invalid purchase state.", new Object[0]);
                            }
                            try {
                                UpsightMonetizationIapEvent.createBuilder(STORE_NAME, createIapBundle(intExtra, stringExtra, stringExtra2), Double.valueOf(d2), Double.valueOf(d), Integer.valueOf(i), str, str2).setResolution(resolution.toString()).put(upsightPublisherData).record(this.mUpsight);
                                return;
                            } catch (Throwable e) {
                                this.mUpsight.getLogger().m200e(Upsight.LOG_TAG, e, "Failed to track Google Play purchase. Unable to create iap_bundle.", new Object[0]);
                                throw new UpsightException(e, "Failed to track Google Play purchase. Unable to create iap_bundle.", new Object[0]);
                            }
                        }
                        this.mUpsight.getLogger().m199e(Upsight.LOG_TAG, "Failed to track Google Play purchase due to missing fields in purchase data.", new Object[0]);
                        throw new UpsightException("Failed to track Google Play purchase due to missing fields in purchase data.", new Object[0]);
                    } catch (Throwable e2) {
                        this.mUpsight.getLogger().m200e(Upsight.LOG_TAG, e2, "Failed to track Google Play purchase due to purchase data schema mismatch.", new Object[0]);
                        throw new UpsightException(e2, "Failed to track Google Play purchase due to purchase data schema mismatch.", new Object[0]);
                    } catch (Throwable e22) {
                        this.mUpsight.getLogger().m200e(Upsight.LOG_TAG, e22, "Failed to track Google Play purchase due to malformed purchase data JSON.", new Object[0]);
                        throw new UpsightException(e22, "Failed to track Google Play purchase due to malformed purchase data JSON.", new Object[0]);
                    }
                }
            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                UpsightMonetizationIapEvent.createBuilder(STORE_NAME, null, Double.valueOf(d2), Double.valueOf(d), Integer.valueOf(i), str, str2).setResolution(Resolution.cancel.toString()).put(upsightPublisherData).record(this.mUpsight);
            default:
                String str3 = "Failed to track Google Play purchase. See response code for details. responseCode=" + intExtra;
                this.mUpsight.getLogger().m199e(Upsight.LOG_TAG, str3, new Object[0]);
                throw new UpsightException(str3, new Object[0]);
        }
    }
}
