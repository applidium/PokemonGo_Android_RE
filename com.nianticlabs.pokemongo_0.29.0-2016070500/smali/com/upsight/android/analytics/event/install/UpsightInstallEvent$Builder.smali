.class public Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$Builder;
.super Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;
.source "UpsightInstallEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/install/UpsightInstallEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder",
        "<",
        "Lcom/upsight/android/analytics/event/install/UpsightInstallEvent;",
        "Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$UpsightData;",
        ">;"
    }
.end annotation


# instance fields
.field private referrer:Ljava/lang/String;

.field private sourceId:Ljava/lang/String;

.field private streamId:Ljava/lang/String;

.field private streamStartTs:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;-><init>()V

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$Builder;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$Builder;->sourceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$Builder;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$Builder;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$Builder;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$Builder;->streamStartTs:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$Builder;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$Builder;->streamId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic build()Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$Builder;->build()Lcom/upsight/android/analytics/event/install/UpsightInstallEvent;

    move-result-object v0

    return-object v0
.end method

.method protected build()Lcom/upsight/android/analytics/event/install/UpsightInstallEvent;
    .locals 4

    .prologue
    .line 146
    new-instance v0, Lcom/upsight/android/analytics/event/install/UpsightInstallEvent;

    const-string v1, "upsight.install"

    new-instance v2, Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$UpsightData;

    invoke-direct {v2, p0}, Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$UpsightData;-><init>(Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$Builder;)V

    iget-object v3, p0, Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$Builder;->mPublisherDataBuilder:Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    invoke-virtual {v3}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->build()Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/upsight/android/analytics/event/install/UpsightInstallEvent;-><init>(Ljava/lang/String;Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$UpsightData;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V

    return-object v0
.end method

.method public setReferrer(Ljava/lang/String;)Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$Builder;
    .locals 0
    .param p1, "referrer"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$Builder;->referrer:Ljava/lang/String;

    .line 125
    return-object p0
.end method

.method public setSourceId(Ljava/lang/String;)Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$Builder;
    .locals 0
    .param p1, "sourceId"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$Builder;->sourceId:Ljava/lang/String;

    .line 117
    return-object p0
.end method

.method public setStreamId(Ljava/lang/String;)Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$Builder;
    .locals 0
    .param p1, "streamId"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$Builder;->streamId:Ljava/lang/String;

    .line 141
    return-object p0
.end method

.method public setStreamStartTs(Ljava/lang/String;)Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$Builder;
    .locals 0
    .param p1, "streamStartTs"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$Builder;->streamStartTs:Ljava/lang/String;

    .line 133
    return-object p0
.end method
