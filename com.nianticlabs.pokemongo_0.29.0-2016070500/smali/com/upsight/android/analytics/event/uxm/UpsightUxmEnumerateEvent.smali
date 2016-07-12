.class public Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent;
.super Lcom/upsight/android/analytics/internal/AnalyticsEvent;
.source "UpsightUxmEnumerateEvent.java"


# annotations
.annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableType;
    value = "upsight.uxm.enumerate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent$Builder;,
        Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent$UpsightData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/analytics/internal/AnalyticsEvent",
        "<",
        "Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent$UpsightData;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/AnalyticsEvent;-><init>()V

    .line 84
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent$UpsightData;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "upsightData"    # Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent$UpsightData;
    .param p3, "publisherData"    # Lcom/upsight/android/analytics/event/UpsightPublisherData;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/analytics/internal/AnalyticsEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V

    .line 80
    return-void
.end method

.method public static createBuilder(Lorg/json/JSONArray;)Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent$Builder;
    .locals 1
    .param p0, "uxm"    # Lorg/json/JSONArray;

    .prologue
    .line 28
    new-instance v0, Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent$Builder;

    invoke-direct {v0, p0}, Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent$Builder;-><init>(Lorg/json/JSONArray;)V

    return-object v0
.end method
