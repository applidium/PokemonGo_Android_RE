package com.upsight.android.analytics.internal;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.upsight.android.analytics.UpsightAnalyticsApi;
import com.upsight.android.analytics.event.UpsightAnalyticsEvent;
import com.upsight.android.analytics.event.UpsightPublisherData;
import com.upsight.android.persistence.annotation.UpsightStorableType;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.Thread.UncaughtExceptionHandler;

class CrashLogHandler implements UncaughtExceptionHandler {
    private UncaughtExceptionHandler mDefaultExceptionHandler;
    private UpsightAnalyticsApi mUpsightAnalytics;

    @UpsightStorableType("upsight.crash_log")
    public static class CrashLogEvent extends UpsightAnalyticsEvent<UpsightData, UpsightPublisherData> {

        public static class Builder extends com.upsight.android.analytics.event.UpsightAnalyticsEvent.Builder<CrashLogEvent, UpsightData, UpsightPublisherData> {
            private String crashID;
            private UpsightPublisherData publisherData;
            private String stacktrace;

            public Builder(String str) {
                this.stacktrace = str;
                this.publisherData = new com.upsight.android.analytics.event.UpsightPublisherData.Builder().build();
            }

            public CrashLogEvent build() {
                return new CrashLogEvent("upsight.crashlog", new UpsightData(this), this.publisherData);
            }

            public Builder setCrashId(String str) {
                this.crashID = str;
                return this;
            }

            public Builder with(UpsightPublisherData upsightPublisherData) {
                this.publisherData = upsightPublisherData;
                return this;
            }
        }

        public static class UpsightData {
            @JsonProperty("crashID")
            String crashID;
            @JsonProperty("stacktrace")
            String stacktrace;

            protected UpsightData() {
            }

            protected UpsightData(Builder builder) {
                this.stacktrace = builder.stacktrace;
                this.crashID = builder.crashID;
            }

            public String getCrashID() {
                return this.crashID;
            }

            public String getStacktrace() {
                return this.stacktrace;
            }
        }

        protected CrashLogEvent() {
        }

        protected CrashLogEvent(String str, UpsightData upsightData, UpsightPublisherData upsightPublisherData) {
            super(str, upsightData, upsightPublisherData);
        }
    }

    public CrashLogHandler(UpsightAnalyticsApi upsightAnalyticsApi) {
        this.mUpsightAnalytics = upsightAnalyticsApi;
        this.mDefaultExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
    }

    private void sendToServer(String str) {
        this.mUpsightAnalytics.record(new Builder(str).build());
    }

    public void uncaughtException(Thread thread, Throwable th) {
        Writer stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        for (Throwable th2 = th; th2 != null; th2 = th2.getCause()) {
            th2.printStackTrace(printWriter);
        }
        String obj = stringWriter.toString();
        printWriter.close();
        sendToServer(obj);
        this.mDefaultExceptionHandler.uncaughtException(thread, th);
    }
}
