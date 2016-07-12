package com.upsight.android.marketing.internal.content;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.upsight.android.analytics.internal.util.JacksonHelper.JSONObjectSerializer;
import com.upsight.android.marketing.UpsightReward;
import java.io.IOException;
import org.json.JSONObject;

public final class Reward implements UpsightReward {
    @JsonProperty("product")
    String product;
    @JsonProperty("quantity")
    int quantity;
    @JsonProperty("signature_data")
    ObjectNode signatureData;

    Reward() {
    }

    static UpsightReward from(JsonNode jsonNode, ObjectMapper objectMapper) throws IOException {
        return (UpsightReward) objectMapper.treeToValue(jsonNode, Reward.class);
    }

    public String getProduct() {
        return this.product;
    }

    public int getQuantity() {
        return this.quantity;
    }

    public JSONObject getSignatureData() {
        return JSONObjectSerializer.fromObjectNode(this.signatureData);
    }
}
