.class public Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent;
.super Lcom/upsight/android/analytics/internal/AnalyticsEvent;
.source "UpsightMilestoneEvent.java"


# annotations
.annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableType;
    value = "upsight.milestone"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent$Builder;,
        Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent$UpsightData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/analytics/internal/AnalyticsEvent",
        "<",
        "Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent$UpsightData;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/AnalyticsEvent;-><init>()V

    .line 86
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent$UpsightData;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "upsightData"    # Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent$UpsightData;
    .param p3, "publisherData"    # Lcom/upsight/android/analytics/event/UpsightPublisherData;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/analytics/internal/AnalyticsEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V

    .line 82
    return-void
.end method

.method public static createBuilder(Ljava/lang/String;)Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent$Builder;
    .locals 1
    .param p0, "scope"    # Ljava/lang/String;

    .prologue
    .line 30
    new-instance v0, Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent$Builder;

    invoke-direct {v0, p0}, Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
