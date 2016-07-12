.class Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$UpsightData;
.super Ljava/lang/Object;
.source "UpsightContentViewEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpsightData"
.end annotation


# instance fields
.field contentId:Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "content_id"
    .end annotation
.end field

.field scope:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
        value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "scope"
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

.method protected constructor <init>(Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    # getter for: Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;->streamStartTs:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;->access$000(Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$UpsightData;->streamStartTs:Ljava/lang/String;

    .line 55
    # getter for: Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;->scope:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;->access$100(Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$UpsightData;->scope:Ljava/lang/String;

    .line 56
    # getter for: Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;->contentId:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;->access$200(Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$UpsightData;->contentId:Ljava/lang/Integer;

    .line 57
    # getter for: Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;->streamId:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;->access$300(Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$UpsightData;->streamId:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public getContentId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$UpsightData;->contentId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$UpsightData;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$UpsightData;->streamId:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamStartTs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentViewEvent$UpsightData;->streamStartTs:Ljava/lang/String;

    return-object v0
.end method
