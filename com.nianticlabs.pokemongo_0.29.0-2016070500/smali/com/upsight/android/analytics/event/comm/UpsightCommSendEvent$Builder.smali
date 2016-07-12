.class public Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;
.super Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;
.source "UpsightCommSendEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder",
        "<",
        "Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent;",
        "Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$UpsightData;",
        ">;"
    }
.end annotation


# instance fields
.field private msgCampaignId:Ljava/lang/Integer;

.field private msgId:Ljava/lang/Integer;

.field private payload:Lcom/fasterxml/jackson/databind/node/ObjectNode;

.field private token:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # Ljava/lang/Integer;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;->msgId:Ljava/lang/Integer;

    .line 114
    iput-object p2, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;->token:Ljava/lang/String;

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;->token:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;->msgId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;->payload:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-object v0
.end method

.method static synthetic access$300(Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;->msgCampaignId:Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic build()Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;->build()Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent;

    move-result-object v0

    return-object v0
.end method

.method protected build()Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent;
    .locals 4

    .prologue
    .line 135
    new-instance v0, Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent;

    const-string v1, "upsight.comm.send"

    new-instance v2, Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$UpsightData;

    invoke-direct {v2, p0}, Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$UpsightData;-><init>(Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;)V

    iget-object v3, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;->mPublisherDataBuilder:Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    invoke-virtual {v3}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->build()Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent;-><init>(Ljava/lang/String;Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$UpsightData;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V

    return-object v0
.end method

.method public setMsgCampaignId(Ljava/lang/Integer;)Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;
    .locals 0
    .param p1, "msgCampaignId"    # Ljava/lang/Integer;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;->msgCampaignId:Ljava/lang/Integer;

    .line 130
    return-object p0
.end method

.method public setPayload(Lorg/json/JSONObject;)Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;
    .locals 1
    .param p1, "payload"    # Lorg/json/JSONObject;

    .prologue
    .line 121
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/util/JacksonHelper$JSONObjectSerializer;->toObjectNode(Lorg/json/JSONObject;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;->payload:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 122
    return-object p0
.end method
