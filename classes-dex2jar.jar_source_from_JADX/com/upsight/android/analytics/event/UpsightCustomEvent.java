package com.upsight.android.analytics.event;

import com.upsight.android.analytics.internal.AnalyticsEvent;
import com.upsight.android.persistence.annotation.UpsightStorableType;

@UpsightStorableType("com.upsight.custom")
public final class UpsightCustomEvent extends AnalyticsEvent<UpsightPublisherData> {

    public static final class Builder extends com.upsight.android.analytics.internal.AnalyticsEvent.Builder<UpsightCustomEvent, UpsightPublisherData> {
        private static final String FORMAT = "pub.%s";
        private String type;
        private com.upsight.android.analytics.event.UpsightPublisherData.Builder upsightDataBuilder;

        private Builder(String str) {
            this.upsightDataBuilder = new com.upsight.android.analytics.event.UpsightPublisherData.Builder();
            this.type = String.format(FORMAT, new Object[]{str});
        }

        protected UpsightCustomEvent build() {
            return new UpsightCustomEvent(this.type, this.upsightDataBuilder.build(), this.mPublisherDataBuilder.build());
        }
    }

    UpsightCustomEvent() {
    }

    UpsightCustomEvent(String str, UpsightPublisherData upsightPublisherData, UpsightPublisherData upsightPublisherData2) {
        super(str, upsightPublisherData, upsightPublisherData2);
    }

    public static Builder createBuilder(String str) {
        return new Builder(null);
    }
}
