.class Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$UpsightData;
.super Ljava/lang/Object;
.source "UpsightSessionStartEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpsightData"
.end annotation


# instance fields
.field referrer:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
        value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "referrer"
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
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method protected constructor <init>(Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$Builder;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    # getter for: Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$Builder;->streamStartTs:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$Builder;->access$000(Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$UpsightData;->streamStartTs:Ljava/lang/String;

    .line 50
    # getter for: Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$Builder;->referrer:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$Builder;->access$100(Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$UpsightData;->referrer:Ljava/lang/String;

    .line 51
    # getter for: Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$Builder;->streamId:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$Builder;->access$200(Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$UpsightData;->streamId:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public getReferrer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$UpsightData;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$UpsightData;->streamId:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamStartTs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$UpsightData;->streamStartTs:Ljava/lang/String;

    return-object v0
.end method
