.class Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$UpsightData;
.super Ljava/lang/Object;
.source "UpsightContentUnrenderedEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpsightData"
.end annotation


# instance fields
.field campaignId:Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
        value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "campaign_id"
    .end annotation
.end field

.field contentProvider:Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "content_provider"
    .end annotation
.end field

.field id:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
        value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation
.end field

.field scope:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
        value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "scope"
    .end annotation
.end field

.field streamId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
        value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "stream_id"
    .end annotation
.end field

.field streamStartTs:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
        value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "stream_start_ts"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method protected constructor <init>(Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    # getter for: Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->contentProvider:Lcom/fasterxml/jackson/databind/node/ObjectNode;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->access$000(Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$UpsightData;->contentProvider:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 62
    # getter for: Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->campaignId:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->access$100(Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$UpsightData;->campaignId:Ljava/lang/Integer;

    .line 63
    # getter for: Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->streamId:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->access$200(Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$UpsightData;->streamId:Ljava/lang/String;

    .line 64
    # getter for: Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->streamStartTs:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->access$300(Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$UpsightData;->streamStartTs:Ljava/lang/String;

    .line 65
    # getter for: Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->scope:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->access$400(Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$UpsightData;->scope:Ljava/lang/String;

    .line 66
    # getter for: Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->id:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->access$500(Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$UpsightData;->id:Ljava/lang/String;

    .line 67
    return-void
.end method


# virtual methods
.method public getCampaignId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$UpsightData;->campaignId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getContentProvider()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$UpsightData;->contentProvider:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-static {v0}, Lcom/upsight/android/analytics/internal/util/JacksonHelper$JSONObjectSerializer;->fromObjectNode(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$UpsightData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$UpsightData;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$UpsightData;->streamId:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamStartTs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$UpsightData;->streamStartTs:Ljava/lang/String;

    return-object v0
.end method
