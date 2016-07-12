.class public Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$Queue;
.super Ljava/lang/Object;
.source "ConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Queue"
.end annotation


# instance fields
.field public countNetworkFail:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "count_network_fail_retries"
    .end annotation
.end field

.field public host:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "host"
    .end annotation
.end field

.field public maxAge:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "max_age"
    .end annotation
.end field

.field public maxSize:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "max_size"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "name"
    .end annotation
.end field

.field public protocol:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "protocol"
    .end annotation
.end field

.field public retryCount:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "max_retry_count"
    .end annotation
.end field

.field public retryInterval:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "retry_interval"
    .end annotation
.end field

.field public urlFormat:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "url_fmt"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public formatEndpointAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$Queue;->urlFormat:Ljava/lang/String;

    const-string v1, "{protocol}"

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$Queue;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{host}"

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$Queue;->host:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
