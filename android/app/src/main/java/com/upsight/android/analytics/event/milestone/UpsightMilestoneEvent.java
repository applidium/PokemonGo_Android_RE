package com.upsight.android.analytics.event.milestone;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.upsight.android.analytics.event.UpsightPublisherData;
import com.upsight.android.analytics.internal.AnalyticsEvent;
import com.upsight.android.persistence.annotation.UpsightStorableType;

@UpsightStorableType("upsight.milestone")
public class UpsightMilestoneEvent extends AnalyticsEvent<UpsightData> {

    public static class Builder extends com.upsight.android.analytics.internal.AnalyticsEvent.Builder<UpsightMilestoneEvent, UpsightData> {
        private String scope;

        protected Builder(String str) {
            this.scope = str;
        }

        protected UpsightMilestoneEvent build() {
            return new UpsightMilestoneEvent("upsight.milestone", new UpsightData(this), this.mPublisherDataBuilder.build());
        }
    }

    static class UpsightData {
        @JsonProperty("scope")
        String scope;

        protected UpsightData() {
        }

        protected UpsightData(Builder builder) {
            this.scope = builder.scope;
        }

        public String getScope() {
            return this.scope;
        }
    }

    protected UpsightMilestoneEvent() {
    }

    protected UpsightMilestoneEvent(String str, UpsightData upsightData, UpsightPublisherData upsightPublisherData) {
        super(str, upsightData, upsightPublisherData);
    }

    public static Builder createBuilder(String str) {
        return new Builder(str);
    }
}
