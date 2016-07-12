package com.upsight.android.analytics.event.campaign;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.upsight.android.analytics.event.UpsightPublisherData;
import com.upsight.android.analytics.internal.AnalyticsEvent;
import com.upsight.android.persistence.annotation.UpsightStorableType;

@UpsightStorableType("upsight.campaign.impression")
public class UpsightCampaignImpressionEvent extends AnalyticsEvent<UpsightData> {

    public static class Builder extends com.upsight.android.analytics.internal.AnalyticsEvent.Builder<UpsightCampaignImpressionEvent, UpsightData> {
        private Integer adGameId;
        private Integer adTypeId;
        private Integer campaignId;
        private Integer contentId;
        private Integer contentTypeId;
        private Integer creativeId;
        private Integer ordinal;
        private String scope;
        private String streamId;
        private String streamStartTs;

        protected Builder(String str, Integer num, Integer num2, Integer num3) {
            this.streamId = str;
            this.campaignId = num;
            this.creativeId = num2;
            this.contentId = num3;
        }

        protected UpsightCampaignImpressionEvent build() {
            return new UpsightCampaignImpressionEvent("upsight.campaign.impression", new UpsightData(this), this.mPublisherDataBuilder.build());
        }

        public Builder setAdGameId(Integer num) {
            this.adGameId = num;
            return this;
        }

        public Builder setAdTypeId(Integer num) {
            this.adTypeId = num;
            return this;
        }

        public Builder setContentTypeId(Integer num) {
            this.contentTypeId = num;
            return this;
        }

        public Builder setOrdinal(Integer num) {
            this.ordinal = num;
            return this;
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
        @JsonInclude(Include.NON_NULL)
        @JsonProperty("ad_game_id")
        Integer adGameId;
        @JsonInclude(Include.NON_NULL)
        @JsonProperty("ad_type_id")
        Integer adTypeId;
        @JsonProperty("campaign_id")
        Integer campaignId;
        @JsonProperty("content_id")
        Integer contentId;
        @JsonInclude(Include.NON_NULL)
        @JsonProperty("content_type_id")
        Integer contentTypeId;
        @JsonProperty("creative_id")
        Integer creativeId;
        @JsonInclude(Include.NON_NULL)
        @JsonProperty("ordinal")
        Integer ordinal;
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
            this.ordinal = builder.ordinal;
            this.contentTypeId = builder.contentTypeId;
            this.creativeId = builder.creativeId;
            this.campaignId = builder.campaignId;
            this.adTypeId = builder.adTypeId;
            this.streamId = builder.streamId;
            this.adGameId = builder.adGameId;
            this.streamStartTs = builder.streamStartTs;
            this.scope = builder.scope;
            this.contentId = builder.contentId;
        }

        public Integer getAdGameId() {
            return this.adGameId;
        }

        public Integer getAdTypeId() {
            return this.adTypeId;
        }

        public Integer getCampaignId() {
            return this.campaignId;
        }

        public Integer getContentId() {
            return this.contentId;
        }

        public Integer getContentTypeId() {
            return this.contentTypeId;
        }

        public Integer getCreativeId() {
            return this.creativeId;
        }

        public Integer getOrdinal() {
            return this.ordinal;
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

    protected UpsightCampaignImpressionEvent() {
    }

    protected UpsightCampaignImpressionEvent(String str, UpsightData upsightData, UpsightPublisherData upsightPublisherData) {
        super(str, upsightData, upsightPublisherData);
    }

    public static Builder createBuilder(String str, Integer num, Integer num2, Integer num3) {
        return new Builder(str, num, num2, num3);
    }
}
