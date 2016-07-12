.class public Lcom/upsight/android/analytics/event/session/UpsightSessionResumeEvent$Builder;
.super Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;
.source "UpsightSessionResumeEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/session/UpsightSessionResumeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder",
        "<",
        "Lcom/upsight/android/analytics/event/session/UpsightSessionResumeEvent;",
        "Lcom/upsight/android/analytics/event/session/UpsightSessionResumeEvent$UpsightData;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;-><init>()V

    .line 54
    return-void
.end method


# virtual methods
.method protected bridge synthetic build()Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/upsight/android/analytics/event/session/UpsightSessionResumeEvent$Builder;->build()Lcom/upsight/android/analytics/event/session/UpsightSessionResumeEvent;

    move-result-object v0

    return-object v0
.end method

.method protected build()Lcom/upsight/android/analytics/event/session/UpsightSessionResumeEvent;
    .locals 4

    .prologue
    .line 58
    new-instance v0, Lcom/upsight/android/analytics/event/session/UpsightSessionResumeEvent;

    const-string v1, "upsight.session.resume"

    new-instance v2, Lcom/upsight/android/analytics/event/session/UpsightSessionResumeEvent$UpsightData;

    invoke-direct {v2, p0}, Lcom/upsight/android/analytics/event/session/UpsightSessionResumeEvent$UpsightData;-><init>(Lcom/upsight/android/analytics/event/session/UpsightSessionResumeEvent$Builder;)V

    iget-object v3, p0, Lcom/upsight/android/analytics/event/session/UpsightSessionResumeEvent$Builder;->mPublisherDataBuilder:Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    invoke-virtual {v3}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->build()Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/upsight/android/analytics/event/session/UpsightSessionResumeEvent;-><init>(Ljava/lang/String;Lcom/upsight/android/analytics/event/session/UpsightSessionResumeEvent$UpsightData;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V

    return-object v0
.end method
