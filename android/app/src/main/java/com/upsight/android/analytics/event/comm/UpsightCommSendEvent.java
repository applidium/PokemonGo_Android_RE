package com.upsight.android.analytics.event.comm;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.upsight.android.analytics.event.UpsightPublisherData;
import com.upsight.android.analytics.internal.AnalyticsEvent;
import com.upsight.android.analytics.internal.util.JacksonHelper.JSONObjectSerializer;
import com.upsight.android.persistence.annotation.UpsightStorableType;
import org.json.JSONObject;

@UpsightStorableType("upsight.comm.send")
public class UpsightCommSendEvent extends AnalyticsEvent<UpsightData> {

    public static class Builder extends com.upsight.android.analytics.internal.AnalyticsEvent.Builder<UpsightCommSendEvent, UpsightData> {
        private Integer msgCampaignId;
        private Integer msgId;
        private ObjectNode payload;
        private String token;

        protected Builder(Integer num, String str) {
            this.msgId = num;
            this.token = str;
        }

        protected UpsightCommSendEvent build() {
            return new UpsightCommSendEvent("upsight.comm.send", new UpsightData(this), this.mPublisherDataBuilder.build());
        }

        public Builder setMsgCampaignId(Integer num) {
            this.msgCampaignId = num;
            return this;
        }

        public Builder setPayload(JSONObject jSONObject) {
            this.payload = JSONObjectSerializer.toObjectNode(jSONObject);
            return this;
        }
    }

    static class UpsightData {
        @JsonInclude(Include.NON_NULL)
        @JsonProperty("msg_campaign_id")
        Integer msgCampaignId;
        @JsonProperty("msg_id")
        Integer msgId;
        @JsonInclude(Include.NON_NULL)
        @JsonProperty("payload")
        ObjectNode payload;
        @JsonProperty("token")
        String token;

        protected UpsightData() {
        }

        protected UpsightData(Builder builder) {
            this.token = builder.token;
            this.msgId = builder.msgId;
            this.payload = builder.payload;
            this.msgCampaignId = builder.msgCampaignId;
        }

        public Integer getMsgCampaignId() {
            return this.msgCampaignId;
        }

        public Integer getMsgId() {
            return this.msgId;
        }

        public JSONObject getPayload() {
            return JSONObjectSerializer.fromObjectNode(this.payload);
        }

        public String getToken() {
            return this.token;
        }
    }

    protected UpsightCommSendEvent() {
    }

    protected UpsightCommSendEvent(String str, UpsightData upsightData, UpsightPublisherData upsightPublisherData) {
        super(str, upsightData, upsightPublisherData);
    }

    public static Builder createBuilder(Integer num, String str) {
        return new Builder(num, str);
    }
}
