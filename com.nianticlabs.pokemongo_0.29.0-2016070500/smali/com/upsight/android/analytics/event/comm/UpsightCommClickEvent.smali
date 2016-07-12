.class public Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent;
.super Lcom/upsight/android/analytics/internal/AnalyticsEvent;
.source "UpsightCommClickEvent.java"


# annotations
.annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableType;
    value = "upsight.comm.click"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;,
        Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$UpsightData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/analytics/internal/AnalyticsEvent",
        "<",
        "Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$UpsightData;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/AnalyticsEvent;-><init>()V

    .line 108
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$UpsightData;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "upsightData"    # Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$UpsightData;
    .param p3, "publisherData"    # Lcom/upsight/android/analytics/event/UpsightPublisherData;

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/analytics/internal/AnalyticsEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V

    .line 104
    return-void
.end method

.method public static createBuilder(Ljava/lang/Integer;)Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;
    .locals 1
    .param p0, "msgId"    # Ljava/lang/Integer;

    .prologue
    .line 30
    new-instance v0, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;

    invoke-direct {v0, p0}, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;-><init>(Ljava/lang/Integer;)V

    return-object v0
.end method
