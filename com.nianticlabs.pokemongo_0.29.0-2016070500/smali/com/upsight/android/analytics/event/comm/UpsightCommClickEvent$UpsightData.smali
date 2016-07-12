.class Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$UpsightData;
.super Ljava/lang/Object;
.source "UpsightCommClickEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent;
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


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method protected constructor <init>(Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    # getter for: Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;->msgId:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;->access$000(Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$UpsightData;->msgId:Ljava/lang/Integer;

    .line 47
    # getter for: Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;->msgCampaignId:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;->access$100(Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$UpsightData;->msgCampaignId:Ljava/lang/Integer;

    .line 48
    return-void
.end method


# virtual methods
.method public getMsgCampaignId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$UpsightData;->msgCampaignId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMsgId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$UpsightData;->msgId:Ljava/lang/Integer;

    return-object v0
.end method
