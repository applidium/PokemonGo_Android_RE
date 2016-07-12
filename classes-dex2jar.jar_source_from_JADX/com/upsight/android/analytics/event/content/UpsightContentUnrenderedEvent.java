package com.upsight.android.analytics.event.content;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.upsight.android.analytics.event.UpsightPublisherData;
import com.upsight.android.analytics.internal.AnalyticsEvent;
import com.upsight.android.analytics.internal.util.JacksonHelper.JSONObjectSerializer;
import com.upsight.android.persistence.annotation.UpsightStorableType;
import org.json.JSONObject;

@UpsightStorableType("upsight.content.unrendered")
public class UpsightContentUnrenderedEvent extends AnalyticsEvent<UpsightData> {

    public static class Builder extends com.upsight.android.analytics.internal.AnalyticsEvent.Builder<UpsightContentUnrenderedEvent, UpsightData> {
        private Integer campaignId;
        private ObjectNode contentProvider;
        private String id;
        private String scope;
        private String streamId;
        private String streamStartTs;

        protected Builder(JSONObject jSONObject) {
            this.contentProvider = JSONObjectSerializer.toObjectNode(jSONObject);
        }

        protected UpsightContentUnrenderedEvent build() {
            return new UpsightContentUnrenderedEvent("upsight.content.unrendered", new UpsightData(this), this.mPublisherDataBuilder.build());
        }

        public Builder setCampaignId(Integer num) {
            this.campaignId = num;
            return this;
        }

        public Builder setId(String str) {
            this.id = str;
            return this;
        }

        public Builder setScope(String str) {
            this.scope = str;
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
        @JsonProperty("campaign_id")
        Integer campaignId;
        @JsonProperty("content_provider")
        ObjectNode contentProvider;
        @JsonInclude(Include.NON_NULL)
        @JsonProperty("id")
        String id;
        @JsonInclude(Include.NON_NULL)
        @JsonProperty("scope")
        String scope;
        @JsonInclude(Include.NON_NULL)
        @JsonProperty("stream_id")
        String streamId;
        @JsonInclude(Include.NON_NULL)
        @JsonProperty("stream_start_ts")
        String streamStartTs;

        protected UpsightData() {
        }

        protected UpsightData(Builder builder) {
            this.contentProvider = builder.contentProvider;
            this.campaignId = builder.campaignId;
            this.streamId = builder.streamId;
            this.streamStartTs = builder.streamStartTs;
            this.scope = builder.scope;
            this.id = builder.id;
        }

        public Integer getCampaignId() {
            return this.campaignId;
        }

        public JSONObject getContentProvider() {
            return JSONObjectSerializer.fromObjectNode(this.contentProvider);
        }

        public String getId() {
            return this.id;
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

    protected UpsightContentUnrenderedEvent() {
    }

    protected UpsightContentUnrenderedEvent(String str, UpsightData upsightData, UpsightPublisherData upsightPublisherData) {
        super(str, upsightData, upsightPublisherData);
    }

    public static Builder createBuilder(JSONObject jSONObject) {
        return new Builder(jSONObject);
    }
}
