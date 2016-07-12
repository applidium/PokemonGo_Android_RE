.class public Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$Builder;
.super Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;
.source "UpsightSessionStartEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder",
        "<",
        "Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent;",
        "Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$UpsightData;",
        ">;"
    }
.end annotation


# instance fields
.field private referrer:Ljava/lang/String;

.field private streamId:Ljava/lang/String;

.field private streamStartTs:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;-><init>()V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$Builder;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$Builder;->streamStartTs:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$Builder;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$Builder;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$Builder;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$Builder;->streamId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic build()Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$Builder;->build()Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent;

    move-result-object v0

    return-object v0
.end method

.method protected build()Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent;
    .locals 4

    .prologue
    .line 124
    new-instance v0, Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent;

    const-string v1, "upsight.session.start"

    new-instance v2, Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$UpsightData;

    invoke-direct {v2, p0}, Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$UpsightData;-><init>(Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$Builder;)V

    iget-object v3, p0, Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$Builder;->mPublisherDataBuilder:Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    invoke-virtual {v3}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->build()Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent;-><init>(Ljava/lang/String;Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$UpsightData;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V

    return-object v0
.end method

.method public setReferrer(Ljava/lang/String;)Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$Builder;
    .locals 0
    .param p1, "referrer"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$Builder;->referrer:Ljava/lang/String;

    .line 111
    return-object p0
.end method

.method public setStreamId(Ljava/lang/String;)Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$Builder;
    .locals 0
    .param p1, "streamId"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$Builder;->streamId:Ljava/lang/String;

    .line 119
    return-object p0
.end method

.method public setStreamStartTs(Ljava/lang/String;)Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$Builder;
    .locals 0
    .param p1, "streamStartTs"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$Builder;->streamStartTs:Ljava/lang/String;

    .line 103
    return-object p0
.end method
