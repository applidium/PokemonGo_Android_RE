.class public Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;
.super Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;
.source "UpsightCampaignImpressionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder",
        "<",
        "Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent;",
        "Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;",
        ">;"
    }
.end annotation


# instance fields
.field private adGameId:Ljava/lang/Integer;

.field private adTypeId:Ljava/lang/Integer;

.field private campaignId:Ljava/lang/Integer;

.field private contentId:Ljava/lang/Integer;

.field private contentTypeId:Ljava/lang/Integer;

.field private creativeId:Ljava/lang/Integer;

.field private ordinal:Ljava/lang/Integer;

.field private scope:Ljava/lang/String;

.field private streamId:Ljava/lang/String;

.field private streamStartTs:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "streamId"    # Ljava/lang/String;
    .param p2, "campaignId"    # Ljava/lang/Integer;
    .param p3, "creativeId"    # Ljava/lang/Integer;
    .param p4, "contentId"    # Ljava/lang/Integer;

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;-><init>()V

    .line 200
    iput-object p1, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->streamId:Ljava/lang/String;

    .line 201
    iput-object p2, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->campaignId:Ljava/lang/Integer;

    .line 202
    iput-object p3, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->creativeId:Ljava/lang/Integer;

    .line 203
    iput-object p4, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->contentId:Ljava/lang/Integer;

    .line 204
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->ordinal:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->contentTypeId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->creativeId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->campaignId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->adTypeId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->streamId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->adGameId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->streamStartTs:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->scope:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->contentId:Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic build()Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->build()Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent;

    move-result-object v0

    return-object v0
.end method

.method protected build()Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent;
    .locals 4

    .prologue
    .line 256
    new-instance v0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent;

    const-string v1, "upsight.campaign.impression"

    new-instance v2, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;

    invoke-direct {v2, p0}, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;-><init>(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;)V

    iget-object v3, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->mPublisherDataBuilder:Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    invoke-virtual {v3}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->build()Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent;-><init>(Ljava/lang/String;Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V

    return-object v0
.end method

.method public setAdGameId(Ljava/lang/Integer;)Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;
    .locals 0
    .param p1, "adGameId"    # Ljava/lang/Integer;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->adGameId:Ljava/lang/Integer;

    .line 235
    return-object p0
.end method

.method public setAdTypeId(Ljava/lang/Integer;)Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;
    .locals 0
    .param p1, "adTypeId"    # Ljava/lang/Integer;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->adTypeId:Ljava/lang/Integer;

    .line 227
    return-object p0
.end method

.method public setContentTypeId(Ljava/lang/Integer;)Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;
    .locals 0
    .param p1, "contentTypeId"    # Ljava/lang/Integer;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->contentTypeId:Ljava/lang/Integer;

    .line 219
    return-object p0
.end method

.method public setOrdinal(Ljava/lang/Integer;)Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;
    .locals 0
    .param p1, "ordinal"    # Ljava/lang/Integer;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->ordinal:Ljava/lang/Integer;

    .line 211
    return-object p0
.end method

.method public setScope(Ljava/lang/String;)Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;
    .locals 0
    .param p1, "scope"    # Ljava/lang/String;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->scope:Ljava/lang/String;

    .line 251
    return-object p0
.end method

.method public setStreamStartTs(Ljava/lang/String;)Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;
    .locals 0
    .param p1, "streamStartTs"    # Ljava/lang/String;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->streamStartTs:Ljava/lang/String;

    .line 243
    return-object p0
.end method
