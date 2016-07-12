.class public final Lcom/upsight/android/analytics/event/UpsightCustomEvent;
.super Lcom/upsight/android/analytics/internal/AnalyticsEvent;
.source "UpsightCustomEvent.java"


# annotations
.annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableType;
    value = "com.upsight.custom"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/event/UpsightCustomEvent$1;,
        Lcom/upsight/android/analytics/event/UpsightCustomEvent$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/analytics/internal/AnalyticsEvent",
        "<",
        "Lcom/upsight/android/analytics/event/UpsightPublisherData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/AnalyticsEvent;-><init>()V

    .line 45
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/upsight/android/analytics/event/UpsightPublisherData;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "upsightData"    # Lcom/upsight/android/analytics/event/UpsightPublisherData;
    .param p3, "publisherData"    # Lcom/upsight/android/analytics/event/UpsightPublisherData;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/analytics/internal/AnalyticsEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V

    .line 41
    return-void
.end method

.method public static createBuilder(Ljava/lang/String;)Lcom/upsight/android/analytics/event/UpsightCustomEvent$Builder;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 17
    new-instance v0, Lcom/upsight/android/analytics/event/UpsightCustomEvent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/upsight/android/analytics/event/UpsightCustomEvent$Builder;-><init>(Ljava/lang/String;Lcom/upsight/android/analytics/event/UpsightCustomEvent$1;)V

    return-object v0
.end method
