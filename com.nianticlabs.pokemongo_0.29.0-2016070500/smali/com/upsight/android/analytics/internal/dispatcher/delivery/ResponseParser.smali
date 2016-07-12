.class Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser;
.super Ljava/lang/Object;
.source "ResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$ResponseElementJson;,
        Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$ResponseJson;,
        Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$Response;
    }
.end annotation


# instance fields
.field private mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 0
    .param p1, "mapper"    # Lcom/fasterxml/jackson/databind/ObjectMapper;
        .annotation runtime Ljavax/inject/Named;
            value = "config-mapper"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser;->mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 51
    return-void
.end method


# virtual methods
.method public declared-synchronized parse(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$Response;
    .locals 7
    .param p1, "resposneJson"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser;->mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v5, Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$ResponseJson;

    invoke-virtual {v4, p1, v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$ResponseJson;

    .line 65
    .local v1, "responses":Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$ResponseJson;
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 66
    .local v2, "resps":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/upsight/android/analytics/dispatcher/EndpointResponse;>;"
    iget-object v4, v1, Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$ResponseJson;->response:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 67
    iget-object v4, v1, Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$ResponseJson;->response:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$ResponseElementJson;

    .line 68
    .local v3, "rj":Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$ResponseElementJson;
    iget-object v4, v3, Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$ResponseElementJson;->type:Ljava/lang/String;

    iget-object v5, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser;->mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v6, v3, Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$ResponseElementJson;->content:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/upsight/android/analytics/dispatcher/EndpointResponse;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/upsight/android/analytics/dispatcher/EndpointResponse;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 63
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "responses":Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$ResponseJson;
    .end local v2    # "resps":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/upsight/android/analytics/dispatcher/EndpointResponse;>;"
    .end local v3    # "rj":Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$ResponseElementJson;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 72
    .restart local v1    # "responses":Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$ResponseJson;
    .restart local v2    # "resps":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/upsight/android/analytics/dispatcher/EndpointResponse;>;"
    :cond_0
    :try_start_1
    new-instance v4, Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$Response;

    iget-object v5, v1, Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$ResponseJson;->error:Ljava/lang/String;

    invoke-direct {v4, v2, v5}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$Response;-><init>(Ljava/util/Collection;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v4
.end method
