package com.upsight.android.analytics.event.monetization;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.upsight.android.analytics.event.UpsightPublisherData;
import com.upsight.android.analytics.internal.AnalyticsEvent;
import com.upsight.android.persistence.annotation.UpsightStorableType;

@UpsightStorableType("upsight.monetization")
public class UpsightMonetizationEvent extends AnalyticsEvent<UpsightData> {

    public static class Builder extends com.upsight.android.analytics.internal.AnalyticsEvent.Builder<UpsightMonetizationEvent, UpsightData> {
        private String currency;
        private Double price;
        private String product;
        private Integer quantity;
        private String resolution;
        private String streamId;
        private String streamStartTs;
        private Double totalPrice;

        protected Builder(Double d, String str) {
            this.totalPrice = d;
            this.currency = str;
        }

        protected UpsightMonetizationEvent build() {
            return new UpsightMonetizationEvent("upsight.monetization", new UpsightData(this), this.mPublisherDataBuilder.build());
        }

        public Builder setPrice(Double d) {
            this.price = d;
            return this;
        }

        public Builder setProduct(String str) {
            this.product = str;
            return this;
        }

        public Builder setQuantity(Integer num) {
            this.quantity = num;
            return this;
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
        @JsonInclude(Include.NON_NULL)
        @JsonProperty("price")
        Double price;
        @JsonInclude(Include.NON_NULL)
        @JsonProperty("product")
        String product;
        @JsonInclude(Include.NON_NULL)
        @JsonProperty("quantity")
        Integer quantity;
        @JsonInclude(Include.NON_NULL)
        @JsonProperty("resolution")
        String resolution;
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
            this.streamStartTs = builder.streamStartTs;
            this.resolution = builder.resolution;
            this.quantity = builder.quantity;
        }

        public String getCurrency() {
            return this.currency;
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

    protected UpsightMonetizationEvent() {
    }

    protected UpsightMonetizationEvent(String str, UpsightData upsightData, UpsightPublisherData upsightPublisherData) {
        super(str, upsightData, upsightPublisherData);
    }

    public static Builder createBuilder(Double d, String str) {
        return new Builder(d, str);
    }
}
