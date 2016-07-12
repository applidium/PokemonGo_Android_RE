.class Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$UpsightData;
.super Ljava/lang/Object;
.source "UpsightContentDismissEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpsightData"
.end annotation


# instance fields
.field action:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "action"
    .end annotation
.end field

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
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method protected constructor <init>(Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    # getter for: Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;->action:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;->access$000(Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$UpsightData;->action:Ljava/lang/String;

    .line 59
    # getter for: Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;->scope:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;->access$100(Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$UpsightData;->scope:Ljava/lang/String;

    .line 60
    # getter for: Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;->contentId:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;->access$200(Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$UpsightData;->contentId:Ljava/lang/Integer;

    .line 61
    # getter for: Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;->streamStartTs:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;->access$300(Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$UpsightData;->streamStartTs:Ljava/lang/String;

    .line 62
    # getter for: Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;->streamId:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;->access$400(Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$UpsightData;->streamId:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$UpsightData;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getContentId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$UpsightData;->contentId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$UpsightData;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$UpsightData;->streamId:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamStartTs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$UpsightData;->streamStartTs:Ljava/lang/String;

    return-object v0
.end method
