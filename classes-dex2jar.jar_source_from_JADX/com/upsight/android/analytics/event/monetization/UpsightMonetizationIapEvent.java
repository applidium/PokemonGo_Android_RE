package com.upsight.android.analytics.event.monetization;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.upsight.android.analytics.event.UpsightPublisherData;
import com.upsight.android.analytics.internal.AnalyticsEvent;
import com.upsight.android.analytics.internal.util.JacksonHelper.JSONObjectSerializer;
import com.upsight.android.persistence.annotation.UpsightStorableType;
import org.json.JSONObject;

@UpsightStorableType("upsight.monetization.iap")
public class UpsightMonetizationIapEvent extends AnalyticsEvent<UpsightData> {

    public static class Builder extends com.upsight.android.analytics.internal.AnalyticsEvent.Builder<UpsightMonetizationIapEvent, UpsightData> {
        private String currency;
        private ObjectNode iapBundle;
        private Double price;
        private String product;
        private Integer quantity;
        private String resolution;
        private String store;
        private String streamId;
        private String streamStartTs;
        private Double totalPrice;

        protected Builder(String str, JSONObject jSONObject, Double d, Double d2, Integer num, String str2, String str3) {
            this.store = str;
            this.iapBundle = JSONObjectSerializer.toObjectNode(jSONObject);
            this.totalPrice = d;
            this.price = d2;
            this.quantity = num;
            this.currency = str2;
            this.product = str3;
        }

        protected UpsightMonetizationIapEvent build() {
            return new UpsightMonetizationIapEvent("upsight.monetization.iap", new UpsightData(this), this.mPublisherDataBuilder.build());
        }

        public Builder setResolution(String str) {
            this.resolution = str;
            return this;
        }

        public Builder setStreamId(String str) {
            this.streamId = str;
            return this;
        }

        public Builder setStreamStartTs(String str) {
            this.streamStartTs = str;
            return this;
        }
    }

    static class UpsightData {
        @JsonProperty("currency")
        String currency;
        @JsonProperty("iap_bundle")
        ObjectNode iapBundle;
        @JsonProperty("price")
        Double price;
        @JsonProperty("product")
        String product;
        @JsonProperty("quantity")
        Integer quantity;
        @JsonInclude(Include.NON_NULL)
        @JsonProperty("resolution")
        String resolution;
        @JsonProperty("store")
        String store;
        @JsonInclude(Include.NON_NULL)
        @JsonProperty("stream_id")
        String streamId;
        @JsonInclude(Include.NON_NULL)
        @JsonProperty("stream_start_ts")
        String streamStartTs;
        @JsonProperty("total_price")
        Double totalPrice;

        protected UpsightData() {
        }

        protected UpsightData(Builder builder) {
            this.product = builder.product;
            this.totalPrice = builder.totalPrice;
            this.streamId = builder.streamId;
            this.price = builder.price;
            this.currency = builder.currency;
            this.iapBundle = builder.iapBundle;
            this.streamStartTs = builder.streamStartTs;
            this.resolution = builder.resolution;
            this.store = builder.store;
            this.quantity = builder.quantity;
        }

        public String getCurrency() {
            return this.currency;
        }

        public JSONObject getIapBundle() {
            return JSONObjectSerializer.fromObjectNode(this.iapBundle);
        }

        public Double getPrice() {
            return this.price;
        }

        public String getProduct() {
            return this.product;
        }

        public Integer getQuantity() {
            return this.quantity;
        }

        public String getResolution() {
            return this.resolution;
        }

        public String getStore() {
            return this.store;
        }

        public String getStreamId() {
            return this.streamId;
        }

        public String getStreamStartTs() {
            return this.streamStartTs;
        }

        public Double getTotalPrice() {
            return this.totalPrice;
        }
    }

    protected UpsightMonetizationIapEvent() {
    }

    protected UpsightMonetizationIapEvent(String str, UpsightData upsightData, UpsightPublisherData upsightPublisherData) {
        super(str, upsightData, upsightPublisherData);
    }

    public static Builder createBuilder(String str, JSONObject jSONObject, Double d, Double d2, Integer num, String str2, String str3) {
        return new Builder(str, jSONObject, d, d2, num, str2, str3);
    }
}
