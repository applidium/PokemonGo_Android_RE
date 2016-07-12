package com.upsight.android.analytics.event.install;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.upsight.android.analytics.event.UpsightPublisherData;
import com.upsight.android.analytics.internal.AnalyticsEvent;
import com.upsight.android.persistence.annotation.UpsightStorableType;

@UpsightStorableType("upsight.install")
public class UpsightInstallEvent extends AnalyticsEvent<UpsightData> {

    public static class Builder extends com.upsight.android.analytics.internal.AnalyticsEvent.Builder<UpsightInstallEvent, UpsightData> {
        private String referrer;
        private String sourceId;
        private String streamId;
        private String streamStartTs;

        protected Builder() {
        }

        protected UpsightInstallEvent build() {
            return new UpsightInstallEvent("upsight.install", new UpsightData(this), this.mPublisherDataBuilder.build());
        }

        public Builder setReferrer(String str) {
            this.referrer = str;
            return this;
        }

        public Builder setSourceId(String str) {
            this.sourceId = str;
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
        @JsonInclude(Include.NON_NULL)
        @JsonProperty("referrer")
        String referrer;
        @JsonInclude(Include.NON_NULL)
        @JsonProperty("source_id")
        String sourceId;
        @JsonInclude(Include.NON_NULL)
        @JsonProperty("stream_id")
        String streamId;
        @JsonInclude(Include.NON_NULL)
        @JsonProperty("stream_start_ts")
        String streamStartTs;

        protected UpsightData() {
        }

        protected UpsightData(Builder builder) {
            this.sourceId = builder.sourceId;
            this.referrer = builder.referrer;
            this.streamStartTs = builder.streamStartTs;
            this.streamId = builder.streamId;
        }

        public String getReferrer() {
            return this.referrer;
        }

        public String getSourceId() {
            return this.sourceId;
        }

        public String getStreamId() {
            return this.streamId;
        }

        public String getStreamStartTs() {
            return this.streamStartTs;
        }
    }

    protected UpsightInstallEvent() {
    }

    protected UpsightInstallEvent(String str, UpsightData upsightData, UpsightPublisherData upsightPublisherData) {
        super(str, upsightData, upsightPublisherData);
    }

    public static Builder createBuilder() {
        return new Builder();
    }
}
