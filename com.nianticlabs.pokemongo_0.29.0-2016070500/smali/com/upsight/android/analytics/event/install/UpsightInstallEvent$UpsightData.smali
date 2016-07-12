.class Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$UpsightData;
.super Ljava/lang/Object;
.source "UpsightInstallEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/install/UpsightInstallEvent;
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

.field sourceId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
        value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "source_id"
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
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method protected constructor <init>(Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$Builder;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    # getter for: Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$Builder;->sourceId:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$Builder;->access$000(Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$UpsightData;->sourceId:Ljava/lang/String;

    .line 54
    # getter for: Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$Builder;->referrer:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$Builder;->access$100(Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$UpsightData;->referrer:Ljava/lang/String;

    .line 55
    # getter for: Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$Builder;->streamStartTs:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$Builder;->access$200(Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$UpsightData;->streamStartTs:Ljava/lang/String;

    .line 56
    # getter for: Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$Builder;->streamId:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$Builder;->access$300(Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$UpsightData;->streamId:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public getReferrer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$UpsightData;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$UpsightData;->sourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$UpsightData;->streamId:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamStartTs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$UpsightData;->streamStartTs:Ljava/lang/String;

    return-object v0
.end method
