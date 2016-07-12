.class public Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent;
.super Lcom/upsight/android/analytics/internal/AnalyticsEvent;
.source "UpsightContentUnrenderedEvent.java"


# annotations
.annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableType;
    value = "upsight.content.unrendered"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;,
        Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$UpsightData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/analytics/internal/AnalyticsEvent",
        "<",
        "Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$UpsightData;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/AnalyticsEvent;-><init>()V

    .line 195
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$UpsightData;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "upsightData"    # Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$UpsightData;
    .param p3, "publisherData"    # Lcom/upsight/android/analytics/event/UpsightPublisherData;

    .prologue
    .line 190
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/analytics/internal/AnalyticsEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V

    .line 191
    return-void
.end method

.method public static createBuilder(Lorg/json/JSONObject;)Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;
    .locals 1
    .param p0, "contentProvider"    # Lorg/json/JSONObject;

    .prologue
    .line 29
    new-instance v0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;

    invoke-direct {v0, p0}, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method
