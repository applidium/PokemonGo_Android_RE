.class public abstract Lcom/upsight/android/analytics/internal/AnalyticsEvent;
.super Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
.source "AnalyticsEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent",
        "<TU;",
        "Lcom/upsight/android/analytics/event/UpsightPublisherData;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 126
    .local p0, "this":Lcom/upsight/android/analytics/internal/AnalyticsEvent;, "Lcom/upsight/android/analytics/internal/AnalyticsEvent<TU;>;"
    invoke-direct {p0}, Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;-><init>()V

    .line 128
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p3, "publisherData"    # Lcom/upsight/android/analytics/event/UpsightPublisherData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TU;",
            "Lcom/upsight/android/analytics/event/UpsightPublisherData;",
            ")V"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lcom/upsight/android/analytics/internal/AnalyticsEvent;, "Lcom/upsight/android/analytics/internal/AnalyticsEvent<TU;>;"
    .local p2, "upsightData":Ljava/lang/Object;, "TU;"
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    return-void
.end method
