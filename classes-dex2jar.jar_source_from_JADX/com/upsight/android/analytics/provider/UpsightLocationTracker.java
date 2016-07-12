package com.upsight.android.analytics.provider;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.upsight.android.Upsight;
import com.upsight.android.UpsightAnalyticsExtension;
import com.upsight.android.UpsightContext;
import com.upsight.android.persistence.annotation.UpsightStorableIdentifier;
import com.upsight.android.persistence.annotation.UpsightStorableType;

public abstract class UpsightLocationTracker {

    @UpsightStorableType("upsight.model.location")
    public static final class Data {
        @UpsightStorableIdentifier
        String id;
        @JsonProperty
        double latitude;
        @JsonProperty
        double longitude;
        @JsonProperty
        String timeZone;

        Data() {
        }

        private Data(double d, double d2, String str) {
            this.latitude = d;
            this.longitude = d2;
            this.timeZone = str;
        }

        public static Data create(double d, double d2) {
            return new Data(d, d2, null);
        }

        public static Data create(double d, double d2, String str) {
            return new Data(d, d2, str);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            Data data = (Data) obj;
            if (this.id != null) {
                if (this.id.equals(data.id)) {
                    return true;
                }
            } else if (data.id == null) {
                return true;
            }
            return false;
        }

        public double getLatitude() {
            return this.latitude;
        }

        public double getLongitude() {
            return this.longitude;
        }

        public String getTimeZone() {
            return this.timeZone;
        }

        public int hashCode() {
            return this.id != null ? this.id.hashCode() : 0;
        }

        public void setLatitude(double d) {
            this.latitude = d;
        }

        public void setLongitude(double d) {
            this.longitude = d;
        }

        public void setTimeZone(String str) {
            this.timeZone = str;
        }
    }

    public static void purge(UpsightContext upsightContext) {
        UpsightAnalyticsExtension upsightAnalyticsExtension = (UpsightAnalyticsExtension) upsightContext.getUpsightExtension(UpsightAnalyticsExtension.EXTENSION_NAME);
        if (upsightAnalyticsExtension != null) {
            upsightAnalyticsExtension.getApi().purgeLocation();
        } else {
            upsightContext.getLogger().m199e(Upsight.LOG_TAG, "com.upsight.extension.analytics must be registered in your Android Manifest", new Object[0]);
        }
    }

    public static void track(UpsightContext upsightContext, Data data) {
        UpsightAnalyticsExtension upsightAnalyticsExtension = (UpsightAnalyticsExtension) upsightContext.getUpsightExtension(UpsightAnalyticsExtension.EXTENSION_NAME);
        if (upsightAnalyticsExtension != null) {
            upsightAnalyticsExtension.getApi().trackLocation(data);
        } else {
            upsightContext.getLogger().m199e(Upsight.LOG_TAG, "com.upsight.extension.analytics must be registered in your Android Manifest", new Object[0]);
        }
    }

    public abstract void purge();

    public abstract void track(Data data);
}
