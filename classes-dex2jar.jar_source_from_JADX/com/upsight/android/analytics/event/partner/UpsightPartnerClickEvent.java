package com.upsight.android.analytics.event.partner;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.upsight.android.analytics.event.UpsightPublisherData;
import com.upsight.android.analytics.internal.AnalyticsEvent;
import com.upsight.android.persistence.annotation.UpsightStorableType;

@UpsightStorableType("upsight.partner.click")
public class UpsightPartnerClickEvent extends AnalyticsEvent<UpsightData> {

    public static class Builder extends com.upsight.android.analytics.internal.AnalyticsEvent.Builder<UpsightPartnerClickEvent, UpsightData> {
        private Integer contentId;
        private Integer partnerId;
        private String partnerName;
        private String scope;
        private String streamId;
        private String streamStartTs;

        protected Builder(Integer num, String str, String str2, Integer num2) {
            this.partnerId = num;
            this.scope = str;
            this.streamId = str2;
            this.contentId = num2;
        }

        protected UpsightPartnerClickEvent build() {
            return new UpsightPartnerClickEvent("upsight.partner.click", new UpsightData(this), this.mPublisherDataBuilder.build());
        }

        public Builder setPartnerName(String str) {
            this.partnerName = str;
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
        @JsonProperty("partner_id")
        Integer partnerId;
        @JsonInclude(Include.NON_NULL)
        @JsonProperty("partner_name")
        String partnerName;
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
            this.partnerName = builder.partnerName;
            this.streamId = builder.streamId;
            this.streamStartTs = builder.streamStartTs;
            this.scope = builder.scope;
            this.contentId = builder.contentId;
            this.partnerId = builder.partnerId;
        }

        public Integer getContentId() {
            return this.contentId;
        }

        public Integer getPartnerId() {
            return this.partnerId;
        }

        public String getPartnerName() {
            return this.partnerName;
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

    protected UpsightPartnerClickEvent() {
    }

    protected UpsightPartnerClickEvent(String str, UpsightData upsightData, UpsightPublisherData upsightPublisherData) {
        super(str, upsightData, upsightPublisherData);
    }

    public static Builder createBuilder(Integer num, String str, String str2, Integer num2) {
        return new Builder(num, str, str2, num2);
    }
}
