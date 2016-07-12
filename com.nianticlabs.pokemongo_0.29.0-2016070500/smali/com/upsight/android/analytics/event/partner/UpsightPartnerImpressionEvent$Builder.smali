.class public Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;
.super Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;
.source "UpsightPartnerImpressionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder",
        "<",
        "Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent;",
        "Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$UpsightData;",
        ">;"
    }
.end annotation


# instance fields
.field private contentId:Ljava/lang/Integer;

.field private partnerId:Ljava/lang/Integer;

.field private partnerName:Ljava/lang/String;

.field private scope:Ljava/lang/String;

.field private streamId:Ljava/lang/String;

.field private streamStartTs:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "partnerId"    # Ljava/lang/Integer;
    .param p2, "scope"    # Ljava/lang/String;
    .param p3, "streamId"    # Ljava/lang/String;
    .param p4, "contentId"    # Ljava/lang/Integer;

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;-><init>()V

    .line 144
    iput-object p1, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;->partnerId:Ljava/lang/Integer;

    .line 145
    iput-object p2, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;->scope:Ljava/lang/String;

    .line 146
    iput-object p3, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;->streamId:Ljava/lang/String;

    .line 147
    iput-object p4, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;->contentId:Ljava/lang/Integer;

    .line 148
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;->partnerName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;->streamId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;->streamStartTs:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;->scope:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;->contentId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;->partnerId:Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic build()Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;->build()Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent;

    move-result-object v0

    return-object v0
.end method

.method protected build()Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent;
    .locals 4

    .prologue
    .line 168
    new-instance v0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent;

    const-string v1, "upsight.partner.impression"

    new-instance v2, Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$UpsightData;

    invoke-direct {v2, p0}, Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$UpsightData;-><init>(Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;)V

    iget-object v3, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;->mPublisherDataBuilder:Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    invoke-virtual {v3}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->build()Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent;-><init>(Ljava/lang/String;Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$UpsightData;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V

    return-object v0
.end method

.method public setPartnerName(Ljava/lang/String;)Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;
    .locals 0
    .param p1, "partnerName"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;->partnerName:Ljava/lang/String;

    .line 155
    return-object p0
.end method

.method public setStreamStartTs(Ljava/lang/String;)Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;
    .locals 0
    .param p1, "streamStartTs"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerImpressionEvent$Builder;->streamStartTs:Ljava/lang/String;

    .line 163
    return-object p0
.end method
