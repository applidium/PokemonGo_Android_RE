.class public Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent;
.super Lcom/upsight/android/analytics/internal/AnalyticsEvent;
.source "UpsightCommSendEvent.java"


# annotations
.annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableType;
    value = "upsight.comm.send"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;,
        Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$UpsightData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/analytics/internal/AnalyticsEvent",
        "<",
        "Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$UpsightData;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/AnalyticsEvent;-><init>()V

    .line 145
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$UpsightData;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "upsightData"    # Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$UpsightData;
    .param p3, "publisherData"    # Lcom/upsight/android/analytics/event/UpsightPublisherData;

    .prologue
    .line 140
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/analytics/internal/AnalyticsEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V

    .line 141
    return-void
.end method

.method public static createBuilder(Ljava/lang/Integer;Ljava/lang/String;)Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;
    .locals 1
    .param p0, "msgId"    # Ljava/lang/Integer;
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 30
    new-instance v0, Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v0
.end method
