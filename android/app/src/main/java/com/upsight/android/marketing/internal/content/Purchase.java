package com.upsight.android.marketing.internal.content;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.upsight.android.marketing.UpsightPurchase;
import java.io.IOException;

public final class Purchase implements UpsightPurchase {
    @JsonProperty("product")
    String product;
    @JsonProperty("quantity")
    int quantity;

    Purchase() {
    }

    static UpsightPurchase from(JsonNode jsonNode, ObjectMapper objectMapper) throws IOException {
        return (UpsightPurchase) objectMapper.treeToValue(jsonNode, Purchase.class);
    }

    public String getProduct() {
        return this.product;
    }

    public int getQuantity() {
        return this.quantity;
    }
}
