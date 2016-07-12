package com.upsight.android.analytics.event.content;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.upsight.android.analytics.event.UpsightPublisherData;
import com.upsight.android.analytics.internal.AnalyticsEvent;
import com.upsight.android.persistence.annotation.UpsightStorableType;

@UpsightStorableType("upsight.content.click")
public class UpsightContentClickEvent extends AnalyticsEvent<UpsightData> {

    public static class Builder extends com.upsight.android.analytics.internal.AnalyticsEvent.Builder<UpsightContentClickEvent, UpsightData> {
        private Integer contentId;
        private String scope;
        private String streamId;
        private String streamStartTs;

        protected Builder(String str, Integer num) {
            this.streamId = str;
            this.contentId = num;
        }

        protected UpsightContentClickEvent build() {
            return new UpsightContentClickEvent("upsight.content.click", new UpsightData(this), this.mPublisherDataBuilder.build());
        }

        public Builder setScope(String str) {
            this.scope = str;
            return this;
        }

        public Builder setStreamStartTs(String str) {
            this.streamStartTs = str;
            return this;
        }
    }

    static class UpsightData {
        @JsonProperty("content_id")
        Integer contentId;
        @JsonInclude(Include.NON_NULL)
        @JsonProperty("scope")
        String scope;
        @JsonProperty("stream_id")
        String streamId;
        @JsonInclude(Include.NON_NULL)
        @JsonProperty("stream_start_ts")
        String streamStartTs;

        protected UpsightData() {
        }

        protected UpsightData(Builder builder) {
            this.streamStartTs = builder.streamStartTs;
            this.scope = builder.scope;
            this.contentId = builder.contentId;
            this.streamId = builder.streamId;
        }

        public Integer getContentId() {
            return this.contentId;
        }

        public String getScope() {
            return this.scope;
        }

        public String getStreamId() {
            return this.streamId;
        }

        public String getStreamStartTs() {
            return this.streamStartTs;
        }
    }

    protected UpsightContentClickEvent() {
    }

    protected UpsightContentClickEvent(String str, UpsightData upsightData, UpsightPublisherData upsightPublisherData) {
        super(str, upsightData, upsightPublisherData);
    }

    public static Builder createBuilder(String str, Integer num) {
        return new Builder(str, num);
    }
}
