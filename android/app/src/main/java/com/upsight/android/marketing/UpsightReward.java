package com.upsight.android.marketing;

import org.json.JSONObject;

public interface UpsightReward {
    String getProduct();

    int getQuantity();

    JSONObject getSignatureData();
}
