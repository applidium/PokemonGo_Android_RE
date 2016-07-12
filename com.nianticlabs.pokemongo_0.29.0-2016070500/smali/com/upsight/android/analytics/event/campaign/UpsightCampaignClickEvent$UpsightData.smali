.class Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$UpsightData;
.super Ljava/lang/Object;
.source "UpsightCampaignClickEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpsightData"
.end annotation


# instance fields
.field adGameId:Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
        value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "ad_game_id"
    .end annotation
.end field

.field adTypeId:Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
        value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "ad_type_id"
    .end annotation
.end field

.field campaignId:Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "campaign_id"
    .end annotation
.end field

.field contentId:Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "content_id"
    .end annotation
.end field

.field contentTypeId:Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
        value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "content_type_id"
    .end annotation
.end field

.field creativeId:Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "creative_id"
    .end annotation
.end field

.field ordinal:Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
        value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "ordinal"
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
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    return-void
.end method

.method protected constructor <init>(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    # getter for: Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->ordinal:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->access$000(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$UpsightData;->ordinal:Ljava/lang/Integer;

    .line 79
    # getter for: Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->contentTypeId:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->access$100(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$UpsightData;->contentTypeId:Ljava/lang/Integer;

    .line 80
    # getter for: Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->creativeId:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->access$200(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$UpsightData;->creativeId:Ljava/lang/Integer;

    .line 81
    # getter for: Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->campaignId:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->access$300(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$UpsightData;->campaignId:Ljava/lang/Integer;

    .line 82
    # getter for: Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->adTypeId:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->access$400(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$UpsightData;->adTypeId:Ljava/lang/Integer;

    .line 83
    # getter for: Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->streamId:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->access$500(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$UpsightData;->streamId:Ljava/lang/String;

    .line 84
    # getter for: Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->adGameId:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->access$600(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$UpsightData;->adGameId:Ljava/lang/Integer;

    .line 85
    # getter for: Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->streamStartTs:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->access$700(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$UpsightData;->streamStartTs:Ljava/lang/String;

    .line 86
    # getter for: Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->scope:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->access$800(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$UpsightData;->scope:Ljava/lang/String;

    .line 87
    # getter for: Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->contentId:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;->access$900(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$UpsightData;->contentId:Ljava/lang/Integer;

    .line 88
    return-void
.end method


# virtual methods
.method public getAdGameId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$UpsightData;->adGameId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAdTypeId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$UpsightData;->adTypeId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCampaignId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$UpsightData;->campaignId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getContentId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$UpsightData;->contentId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getContentTypeId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$UpsightData;->contentTypeId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCreativeId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$UpsightData;->creativeId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOrdinal()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$UpsightData;->ordinal:Ljava/lang/Integer;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$UpsightData;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$UpsightData;->streamId:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamStartTs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignClickEvent$UpsightData;->streamStartTs:Ljava/lang/String;

    return-object v0
.end method
