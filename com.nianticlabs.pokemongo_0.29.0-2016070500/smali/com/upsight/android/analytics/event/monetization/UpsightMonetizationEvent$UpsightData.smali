.class Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;
.super Ljava/lang/Object;
.source "UpsightMonetizationEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent;
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

.field price:Ljava/lang/Double;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
        value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "price"
    .end annotation
.end field

.field product:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
        value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "product"
    .end annotation
.end field

.field quantity:Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
        value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .end annotation

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
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method protected constructor <init>(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    # getter for: Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->product:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->access$000(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;->product:Ljava/lang/String;

    .line 71
    # getter for: Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->totalPrice:Ljava/lang/Double;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->access$100(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;->totalPrice:Ljava/lang/Double;

    .line 72
    # getter for: Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->streamId:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->access$200(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;->streamId:Ljava/lang/String;

    .line 73
    # getter for: Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->price:Ljava/lang/Double;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->access$300(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;->price:Ljava/lang/Double;

    .line 74
    # getter for: Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->currency:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->access$400(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;->currency:Ljava/lang/String;

    .line 75
    # getter for: Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->streamStartTs:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->access$500(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;->streamStartTs:Ljava/lang/String;

    .line 76
    # getter for: Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->resolution:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->access$600(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;->resolution:Ljava/lang/String;

    .line 77
    # getter for: Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->quantity:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->access$700(Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;->quantity:Ljava/lang/Integer;

    .line 78
    return-void
.end method


# virtual methods
.method public getCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;->price:Ljava/lang/Double;

    return-object v0
.end method

.method public getProduct()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;->product:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantity()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;->quantity:Ljava/lang/Integer;

    return-object v0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;->resolution:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;->streamId:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamStartTs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;->streamStartTs:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalPrice()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$UpsightData;->totalPrice:Ljava/lang/Double;

    return-object v0
.end method
