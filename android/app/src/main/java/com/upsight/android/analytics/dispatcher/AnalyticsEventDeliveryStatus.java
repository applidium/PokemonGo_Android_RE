package com.upsight.android.analytics.dispatcher;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.upsight.android.persistence.annotation.UpsightStorableIdentifier;
import com.upsight.android.persistence.annotation.UpsightStorableType;

@UpsightStorableType("upsight.dispatcher.delivery.status")
public final class AnalyticsEventDeliveryStatus {
    @UpsightStorableIdentifier
    @JsonProperty("id")
    String id;
    @JsonProperty("failure_reason")
    private String mFailureReason;
    @JsonProperty("source_event_id")
    private String mOriginEventId;
    @JsonProperty("status")
    private boolean mStatus;

    AnalyticsEventDeliveryStatus() {
    }

    AnalyticsEventDeliveryStatus(String str, boolean z, String str2) {
        this.mOriginEventId = str;
        this.mStatus = z;
        this.mFailureReason = str2;
    }

    public static AnalyticsEventDeliveryStatus fromFailure(String str, String str2) {
        return new AnalyticsEventDeliveryStatus(str, false, str2);
    }

    public static AnalyticsEventDeliveryStatus fromSuccess(String str) {
        return new AnalyticsEventDeliveryStatus(str, true, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AnalyticsEventDeliveryStatus analyticsEventDeliveryStatus = (AnalyticsEventDeliveryStatus) obj;
        return (this.id == null || analyticsEventDeliveryStatus.id == null || !this.id.equals(analyticsEventDeliveryStatus.id)) ? false : true;
    }

    public String getFailureReason() {
        return this.mFailureReason;
    }

    public String getSourceEventId() {
        return this.mOriginEventId;
    }

    public int hashCode() {
        return this.id != null ? this.id.hashCode() : 0;
    }

    public boolean wasDelivered() {
        return this.mStatus;
    }
}
