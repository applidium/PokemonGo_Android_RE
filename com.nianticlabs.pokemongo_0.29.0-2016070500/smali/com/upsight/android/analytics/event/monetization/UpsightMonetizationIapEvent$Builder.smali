.class public Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;
.super Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;
.source "UpsightMonetizationIapEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder",
        "<",
        "Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent;",
        "Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;",
        ">;"
    }
.end annotation


# instance fields
.field private currency:Ljava/lang/String;

.field private iapBundle:Lcom/fasterxml/jackson/databind/node/ObjectNode;

.field private price:Ljava/lang/Double;

.field private product:Ljava/lang/String;

.field private quantity:Ljava/lang/Integer;

.field private resolution:Ljava/lang/String;

.field private store:Ljava/lang/String;

.field private streamId:Ljava/lang/String;

.field private streamStartTs:Ljava/lang/String;

.field private totalPrice:Ljava/lang/Double;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "store"    # Ljava/lang/String;
    .param p2, "iapBundle"    # Lorg/json/JSONObject;
    .param p3, "totalPrice"    # Ljava/lang/Double;
    .param p4, "price"    # Ljava/lang/Double;
    .param p5, "quantity"    # Ljava/lang/Integer;
    .param p6, "currency"    # Ljava/lang/String;
    .param p7, "product"    # Ljava/lang/String;

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;-><init>()V

    .line 202
    iput-object p1, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->store:Ljava/lang/String;

    .line 203
    invoke-static {p2}, Lcom/upsight/android/analytics/internal/util/JacksonHelper$JSONObjectSerializer;->toObjectNode(Lorg/json/JSONObject;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->iapBundle:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 204
    iput-object p3, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->totalPrice:Ljava/lang/Double;

    .line 205
    iput-object p4, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->price:Ljava/lang/Double;

    .line 206
    iput-object p5, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->quantity:Ljava/lang/Integer;

    .line 207
    iput-object p6, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->currency:Ljava/lang/String;

    .line 208
    iput-object p7, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->product:Ljava/lang/String;

    .line 209
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->product:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;)Ljava/lang/Double;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->totalPrice:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->streamId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;)Ljava/lang/Double;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->price:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic access$400(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->currency:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->iapBundle:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-object v0
.end method

.method static synthetic access$600(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->streamStartTs:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->resolution:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->store:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->quantity:Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic build()Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->build()Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent;

    move-result-object v0

    return-object v0
.end method

.method protected build()Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent;
    .locals 4

    .prologue
    .line 237
    new-instance v0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent;

    const-string v1, "upsight.monetization.iap"

    new-instance v2, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;

    invoke-direct {v2, p0}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;-><init>(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;)V

    iget-object v3, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->mPublisherDataBuilder:Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    invoke-virtual {v3}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->build()Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent;-><init>(Ljava/lang/String;Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V

    return-object v0
.end method

.method public setResolution(Ljava/lang/String;)Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;
    .locals 0
    .param p1, "resolution"    # Ljava/lang/String;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->resolution:Ljava/lang/String;

    .line 232
    return-object p0
.end method

.method public setStreamId(Ljava/lang/String;)Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;
    .locals 0
    .param p1, "streamId"    # Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->streamId:Ljava/lang/String;

    .line 216
    return-object p0
.end method

.method public setStreamStartTs(Ljava/lang/String;)Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;
    .locals 0
    .param p1, "streamStartTs"    # Ljava/lang/String;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->streamStartTs:Ljava/lang/String;

    .line 224
    return-object p0
.end method
