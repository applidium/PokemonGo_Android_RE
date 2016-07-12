.class Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;
.super Ljava/lang/Object;
.source "UpsightMonetizationIapEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpsightData"
.end annotation


# instance fields
.field currency:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "currency"
    .end annotation
.end field

.field iapBundle:Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "iap_bundle"
    .end annotation
.end field

.field price:Ljava/lang/Double;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "price"
    .end annotation
.end field

.field product:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "product"
    .end annotation
.end field

.field quantity:Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "quantity"
    .end annotation
.end field

.field resolution:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
        value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "resolution"
    .end annotation
.end field

.field store:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "store"
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

.field totalPrice:Ljava/lang/Double;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "total_price"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    return-void
.end method

.method protected constructor <init>(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    # getter for: Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->product:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->access$000(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;->product:Ljava/lang/String;

    .line 78
    # getter for: Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->totalPrice:Ljava/lang/Double;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->access$100(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;->totalPrice:Ljava/lang/Double;

    .line 79
    # getter for: Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->streamId:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->access$200(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;->streamId:Ljava/lang/String;

    .line 80
    # getter for: Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->price:Ljava/lang/Double;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->access$300(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;->price:Ljava/lang/Double;

    .line 81
    # getter for: Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->currency:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->access$400(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;->currency:Ljava/lang/String;

    .line 82
    # getter for: Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->iapBundle:Lcom/fasterxml/jackson/databind/node/ObjectNode;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->access$500(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;->iapBundle:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 83
    # getter for: Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->streamStartTs:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->access$600(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;->streamStartTs:Ljava/lang/String;

    .line 84
    # getter for: Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->resolution:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->access$700(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;->resolution:Ljava/lang/String;

    .line 85
    # getter for: Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->store:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->access$800(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;->store:Ljava/lang/String;

    .line 86
    # getter for: Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->quantity:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->access$900(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;->quantity:Ljava/lang/Integer;

    .line 87
    return-void
.end method


# virtual methods
.method public getCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getIapBundle()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;->iapBundle:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-static {v0}, Lcom/upsight/android/analytics/internal/util/JacksonHelper$JSONObjectSerializer;->fromObjectNode(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getPrice()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;->price:Ljava/lang/Double;

    return-object v0
.end method

.method public getProduct()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;->product:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantity()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;->quantity:Ljava/lang/Integer;

    return-object v0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;->resolution:Ljava/lang/String;

    return-object v0
.end method

.method public getStore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;->store:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;->streamId:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamStartTs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;->streamStartTs:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalPrice()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;->totalPrice:Ljava/lang/Double;

    return-object v0
.end method
