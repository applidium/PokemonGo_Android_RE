package com.upsight.android.analytics.event.content;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.upsight.android.analytics.event.UpsightPublisherData;
import com.upsight.android.analytics.internal.AnalyticsEvent;
import com.upsight.android.persistence.annotation.UpsightStorableType;

@UpsightStorableType("upsight.content.dismiss")
public class UpsightContentDismissEvent extends AnalyticsEvent<UpsightData> {

    public static class Builder extends com.upsight.android.analytics.internal.AnalyticsEvent.Builder<UpsightContentDismissEvent, UpsightData> {
        private String action;
        private Integer contentId;
        private String scope;
        private String streamId;
        private String streamStartTs;

        protected Builder(String str, Integer num, String str2) {
            this.streamId = str;
            this.contentId = num;
            this.action = str2;
        }

        protected UpsightContentDismissEvent build() {
            return new UpsightContentDismissEvent("upsight.content.dismiss", new UpsightData(this), this.mPublisherDataBuilder.build());
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
        @JsonProperty("action")
        String action;
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
            this.action = builder.action;
            this.scope = builder.scope;
            this.contentId = builder.contentId;
            this.streamStartTs = builder.streamStartTs;
            this.streamId = builder.streamId;
        }

        public String getAction() {
            return this.action;
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

    protected UpsightContentDismissEvent() {
    }

    protected UpsightContentDismissEvent(String str, UpsightData upsightData, UpsightPublisherData upsightPublisherData) {
        super(str, upsightData, upsightPublisherData);
    }

    public static Builder createBuilder(String str, Integer num, String str2) {
        return new Builder(str, num, str2);
    }
}
