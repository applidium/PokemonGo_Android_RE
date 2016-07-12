package com.upsight.android.analytics.event.datacollection;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.upsight.android.analytics.event.UpsightPublisherData;
import com.upsight.android.analytics.internal.AnalyticsEvent;
import com.upsight.android.persistence.annotation.UpsightStorableType;

@UpsightStorableType("upsight.data_collection")
public class UpsightDataCollectionEvent extends AnalyticsEvent<UpsightData> {

    public static class Builder extends com.upsight.android.analytics.internal.AnalyticsEvent.Builder<UpsightDataCollectionEvent, UpsightData> {
        private String dataBundle;
        private String format;
        private String streamId;
        private String streamStartTs;

        protected Builder(String str, String str2) {
            this.dataBundle = str;
            this.streamId = str2;
        }

        protected UpsightDataCollectionEvent build() {
            return new UpsightDataCollectionEvent("upsight.data_collection", new UpsightData(this), this.mPublisherDataBuilder.build());
        }

        public Builder setFormat(String str) {
            this.format = str;
            return this;
        }

        public Builder setStreamStartTs(String str) {
            this.streamStartTs = str;
            return this;
        }
    }

    static class UpsightData {
        @JsonProperty("data_bundle")
        String dataBundle;
        @JsonInclude(Include.NON_NULL)
        @JsonProperty("format")
        String format;
        @JsonProperty("stream_id")
        String streamId;
        @JsonInclude(Include.NON_NULL)
        @JsonProperty("stream_start_ts")
        String streamStartTs;

        protected UpsightData() {
        }

        protected UpsightData(Builder builder) {
            this.streamStartTs = builder.streamStartTs;
            this.streamId = builder.streamId;
            this.dataBundle = builder.dataBundle;
            this.format = builder.format;
        }

        public String getDataBundle() {
            return this.dataBundle;
        }

        public String getFormat() {
            return this.format;
        }

        public String getStreamId() {
            return this.streamId;
        }

        public String getStreamStartTs() {
            return this.streamStartTs;
        }
    }

    protected UpsightDataCollectionEvent() {
    }

    protected UpsightDataCollectionEvent(String str, UpsightData upsightData, UpsightPublisherData upsightPublisherData) {
        super(str, upsightData, upsightPublisherData);
    }

    public static Builder createBuilder(String str, String str2) {
        return new Builder(str, str2);
    }
}
