.class public Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;
.super Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;
.source "UpsightContentUnrenderedEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder",
        "<",
        "Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent;",
        "Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$UpsightData;",
        ">;"
    }
.end annotation


# instance fields
.field private campaignId:Ljava/lang/Integer;

.field private contentProvider:Lcom/fasterxml/jackson/databind/node/ObjectNode;

.field private id:Ljava/lang/String;

.field private scope:Ljava/lang/String;

.field private streamId:Ljava/lang/String;

.field private streamStartTs:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "contentProvider"    # Lorg/json/JSONObject;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;-><init>()V

    .line 140
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/util/JacksonHelper$JSONObjectSerializer;->toObjectNode(Lorg/json/JSONObject;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->contentProvider:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->contentProvider:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-object v0
.end method

.method static synthetic access$100(Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->campaignId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->streamId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->streamStartTs:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->scope:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->id:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic build()Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->build()Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent;

    move-result-object v0

    return-object v0
.end method

.method protected build()Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent;
    .locals 4

    .prologue
    .line 185
    new-instance v0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent;

    const-string v1, "upsight.content.unrendered"

    new-instance v2, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$UpsightData;

    invoke-direct {v2, p0}, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$UpsightData;-><init>(Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;)V

    iget-object v3, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->mPublisherDataBuilder:Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    invoke-virtual {v3}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->build()Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent;-><init>(Ljava/lang/String;Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$UpsightData;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V

    return-object v0
.end method

.method public setCampaignId(Ljava/lang/Integer;)Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;
    .locals 0
    .param p1, "campaignId"    # Ljava/lang/Integer;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->campaignId:Ljava/lang/Integer;

    .line 148
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->id:Ljava/lang/String;

    .line 180
    return-object p0
.end method

.method public setScope(Ljava/lang/String;)Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;
    .locals 0
    .param p1, "scope"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->scope:Ljava/lang/String;

    .line 172
    return-object p0
.end method

.method public setStreamId(Ljava/lang/String;)Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;
    .locals 0
    .param p1, "streamId"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->streamId:Ljava/lang/String;

    .line 156
    return-object p0
.end method

.method public setStreamStartTs(Ljava/lang/String;)Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;
    .locals 0
    .param p1, "streamStartTs"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->streamStartTs:Ljava/lang/String;

    .line 164
    return-object p0
.end method
