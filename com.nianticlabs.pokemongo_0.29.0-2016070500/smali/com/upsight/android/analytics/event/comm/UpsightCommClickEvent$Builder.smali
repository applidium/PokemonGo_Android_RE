.class public Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;
.super Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;
.source "UpsightCommClickEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder",
        "<",
        "Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent;",
        "Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$UpsightData;",
        ">;"
    }
.end annotation


# instance fields
.field private msgCampaignId:Ljava/lang/Integer;

.field private msgId:Ljava/lang/Integer;


# direct methods
.method protected constructor <init>(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "msgId"    # Ljava/lang/Integer;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;->msgId:Ljava/lang/Integer;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;->msgId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;->msgCampaignId:Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic build()Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;->build()Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent;

    move-result-object v0

    return-object v0
.end method

.method protected build()Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent;
    .locals 4

    .prologue
    .line 98
    new-instance v0, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent;

    const-string v1, "upsight.comm.click"

    new-instance v2, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$UpsightData;

    invoke-direct {v2, p0}, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$UpsightData;-><init>(Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;)V

    iget-object v3, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;->mPublisherDataBuilder:Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    invoke-virtual {v3}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->build()Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent;-><init>(Ljava/lang/String;Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$UpsightData;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V

    return-object v0
.end method

.method public setMsgCampaignId(Ljava/lang/Integer;)Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;
    .locals 0
    .param p1, "msgCampaignId"    # Ljava/lang/Integer;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;->msgCampaignId:Ljava/lang/Integer;

    .line 93
    return-object p0
.end method
