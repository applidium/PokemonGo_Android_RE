package com.upsight.android.analytics.event.session;

import com.upsight.android.analytics.event.UpsightPublisherData;
import com.upsight.android.analytics.internal.AnalyticsEvent;
import com.upsight.android.persistence.annotation.UpsightStorableType;

@UpsightStorableType("upsight.session.resume")
public class UpsightSessionResumeEvent extends AnalyticsEvent<UpsightData> {

    public static class Builder extends com.upsight.android.analytics.internal.AnalyticsEvent.Builder<UpsightSessionResumeEvent, UpsightData> {
        protected Builder() {
        }

        protected UpsightSessionResumeEvent build() {
            return new UpsightSessionResumeEvent("upsight.session.resume", new UpsightData(this), this.mPublisherDataBuilder.build());
        }
    }

    static class UpsightData {
        protected UpsightData() {
        }

        protected UpsightData(Builder builder) {
        }
    }

    protected UpsightSessionResumeEvent() {
    }

    protected UpsightSessionResumeEvent(String str, UpsightData upsightData, UpsightPublisherData upsightPublisherData) {
        super(str, upsightData, upsightPublisherData);
    }

    public static Builder createBuilder() {
        return new Builder();
    }
}
