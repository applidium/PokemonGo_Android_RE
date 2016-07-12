.class Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$UpsightData;
.super Ljava/lang/Object;
.source "UpsightDataCollectionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpsightData"
.end annotation


# instance fields
.field dataBundle:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "data_bundle"
    .end annotation
.end field

.field format:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
        value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "format"
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
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method protected constructor <init>(Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    # getter for: Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;->streamStartTs:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;->access$000(Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$UpsightData;->streamStartTs:Ljava/lang/String;

    .line 55
    # getter for: Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;->streamId:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;->access$100(Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$UpsightData;->streamId:Ljava/lang/String;

    .line 56
    # getter for: Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;->dataBundle:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;->access$200(Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$UpsightData;->dataBundle:Ljava/lang/String;

    .line 57
    # getter for: Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;->format:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;->access$300(Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$UpsightData;->format:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public getDataBundle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$UpsightData;->dataBundle:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$UpsightData;->format:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$UpsightData;->streamId:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamStartTs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$UpsightData;->streamStartTs:Ljava/lang/String;

    return-object v0
.end method
