package com.upsight.android.analytics.event.config;

import com.upsight.android.analytics.event.UpsightPublisherData;
import com.upsight.android.analytics.internal.AnalyticsEvent;
import com.upsight.android.persistence.annotation.UpsightStorableType;

@UpsightStorableType("upsight.config.expired")
public class UpsightConfigExpiredEvent extends AnalyticsEvent<UpsightData> {

    public static class Builder extends com.upsight.android.analytics.internal.AnalyticsEvent.Builder<UpsightConfigExpiredEvent, UpsightData> {
        protected Builder() {
        }

        protected UpsightConfigExpiredEvent build() {
            return new UpsightConfigExpiredEvent("upsight.config.expired", new UpsightData(this), this.mPublisherDataBuilder.build());
        }
    }

    static class UpsightData {
        protected UpsightData() {
        }

        protected UpsightData(Builder builder) {
        }
    }

    protected UpsightConfigExpiredEvent() {
    }

    protected UpsightConfigExpiredEvent(String str, UpsightData upsightData, UpsightPublisherData upsightPublisherData) {
        super(str, upsightData, upsightPublisherData);
    }

    public static Builder createBuilder() {
        return new Builder();
    }
}
