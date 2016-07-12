package com.upsight.android.analytics.internal;

import com.upsight.android.analytics.event.UpsightAnalyticsEvent;
import com.upsight.android.analytics.event.UpsightPublisherData;

public abstract class AnalyticsEvent<U> extends UpsightAnalyticsEvent<U, UpsightPublisherData> {

    public static abstract class Builder<T extends AnalyticsEvent<U>, U> extends com.upsight.android.analytics.event.UpsightAnalyticsEvent.Builder<T, U, UpsightPublisherData> {
        protected final com.upsight.android.analytics.event.UpsightPublisherData.Builder mPublisherDataBuilder;

        protected Builder() {
            this.mPublisherDataBuilder = new com.upsight.android.analytics.event.UpsightPublisherData.Builder();
        }

        public Builder<T, U> put(UpsightPublisherData upsightPublisherData) {
            this.mPublisherDataBuilder.put(upsightPublisherData);
            return this;
        }

        public Builder<T, U> put(String str, char c) {
            this.mPublisherDataBuilder.put(str, c);
            return this;
        }

        public Builder<T, U> put(String str, double d) {
            this.mPublisherDataBuilder.put(str, d);
            return this;
        }

        public Builder<T, U> put(String str, float f) {
            this.mPublisherDataBuilder.put(str, f);
            return this;
        }

        public Builder<T, U> put(String str, int i) {
            this.mPublisherDataBuilder.put(str, i);
            return this;
        }

        public Builder<T, U> put(String str, long j) {
            this.mPublisherDataBuilder.put(str, j);
            return this;
        }

        public Builder<T, U> put(String str, CharSequence charSequence) {
            this.mPublisherDataBuilder.put(str, charSequence);
            return this;
        }

        public Builder<T, U> put(String str, boolean z) {
            this.mPublisherDataBuilder.put(str, z);
            return this;
        }
    }

    protected AnalyticsEvent() {
    }

    protected AnalyticsEvent(String str, U u, UpsightPublisherData upsightPublisherData) {
        super(str, u, upsightPublisherData);
    }
}
