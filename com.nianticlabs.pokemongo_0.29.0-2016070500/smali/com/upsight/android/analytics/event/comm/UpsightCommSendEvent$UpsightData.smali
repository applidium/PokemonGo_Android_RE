.class Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$UpsightData;
.super Ljava/lang/Object;
.source "UpsightCommSendEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpsightData"
.end annotation


# instance fields
.field msgCampaignId:Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
        value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "msg_campaign_id"
    .end annotation
.end field

.field msgId:Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "msg_id"
    .end annotation
.end field

.field payload:Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
        value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "payload"
    .end annotation
.end field

.field token:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "token"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method protected constructor <init>(Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    # getter for: Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;->token:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;->access$000(Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$UpsightData;->token:Ljava/lang/String;

    .line 54
    # getter for: Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;->msgId:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;->access$100(Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$UpsightData;->msgId:Ljava/lang/Integer;

    .line 55
    # getter for: Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;->payload:Lcom/fasterxml/jackson/databind/node/ObjectNode;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;->access$200(Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$UpsightData;->payload:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 56
    # getter for: Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;->msgCampaignId:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;->access$300(Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$UpsightData;->msgCampaignId:Ljava/lang/Integer;

    .line 57
    return-void
.end method


# virtual methods
.method public getMsgCampaignId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$UpsightData;->msgCampaignId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMsgId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$UpsightData;->msgId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPayload()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$UpsightData;->payload:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-static {v0}, Lcom/upsight/android/analytics/internal/util/JacksonHelper$JSONObjectSerializer;->fromObjectNode(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$UpsightData;->token:Ljava/lang/String;

    return-object v0
.end method
