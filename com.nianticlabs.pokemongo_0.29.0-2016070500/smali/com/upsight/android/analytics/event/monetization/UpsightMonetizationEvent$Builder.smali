.class public Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;
.super Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;
.source "UpsightMonetizationEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder",
        "<",
        "Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent;",
        "Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;",
        ">;"
    }
.end annotation


# instance fields
.field private currency:Ljava/lang/String;

.field private price:Ljava/lang/Double;

.field private product:Ljava/lang/String;

.field private quantity:Ljava/lang/Integer;

.field private resolution:Ljava/lang/String;

.field private streamId:Ljava/lang/String;

.field private streamStartTs:Ljava/lang/String;

.field private totalPrice:Ljava/lang/Double;


# direct methods
.method protected constructor <init>(Ljava/lang/Double;Ljava/lang/String;)V
    .locals 0
    .param p1, "totalPrice"    # Ljava/lang/Double;
    .param p2, "currency"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->totalPrice:Ljava/lang/Double;

    .line 171
    iput-object p2, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->currency:Ljava/lang/String;

    .line 172
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->product:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;)Ljava/lang/Double;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->totalPrice:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->streamId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;)Ljava/lang/Double;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->price:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic access$400(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->currency:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->streamStartTs:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->resolution:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->quantity:Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic build()Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->build()Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent;

    move-result-object v0

    return-object v0
.end method

.method protected build()Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent;
    .locals 4

    .prologue
    .line 224
    new-instance v0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent;

    const-string v1, "upsight.monetization"

    new-instance v2, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;

    invoke-direct {v2, p0}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;-><init>(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;)V

    iget-object v3, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->mPublisherDataBuilder:Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    invoke-virtual {v3}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->build()Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent;-><init>(Ljava/lang/String;Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V

    return-object v0
.end method

.method public setPrice(Ljava/lang/Double;)Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;
    .locals 0
    .param p1, "price"    # Ljava/lang/Double;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->price:Ljava/lang/Double;

    .line 195
    return-object p0
.end method

.method public setProduct(Ljava/lang/String;)Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;
    .locals 0
    .param p1, "product"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->product:Ljava/lang/String;

    .line 179
    return-object p0
.end method

.method public setQuantity(Ljava/lang/Integer;)Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;
    .locals 0
    .param p1, "quantity"    # Ljava/lang/Integer;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->quantity:Ljava/lang/Integer;

    .line 219
    return-object p0
.end method

.method public setResolution(Ljava/lang/String;)Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;
    .locals 0
    .param p1, "resolution"    # Ljava/lang/String;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->resolution:Ljava/lang/String;

    .line 211
    return-object p0
.end method

.method public setStreamId(Ljava/lang/String;)Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;
    .locals 0
    .param p1, "streamId"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->streamId:Ljava/lang/String;

    .line 187
    return-object p0
.end method

.method public setStreamStartTs(Ljava/lang/String;)Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;
    .locals 0
    .param p1, "streamStartTs"    # Ljava/lang/String;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->streamStartTs:Ljava/lang/String;

    .line 203
    return-object p0
.end method
