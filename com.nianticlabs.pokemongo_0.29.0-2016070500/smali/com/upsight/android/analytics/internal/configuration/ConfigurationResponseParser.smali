.class public Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;
.super Ljava/lang/Object;
.source "ConfigurationResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser$ConfigJson;,
        Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser$ConfigResponseJson;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field private mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;


# direct methods
.method constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/upsight/android/analytics/internal/session/SessionManager;)V
    .locals 0
    .param p1, "mapper"    # Lcom/fasterxml/jackson/databind/ObjectMapper;
        .annotation runtime Ljavax/inject/Named;
            value = "config-mapper"
        .end annotation
    .end param
    .param p2, "sessionManager"    # Lcom/upsight/android/analytics/internal/session/SessionManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;->mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 38
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;->mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;

    .line 39
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Ljava/util/Collection;
    .locals 9
    .param p1, "resposneJson"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/upsight/android/analytics/configuration/UpsightConfiguration;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v6, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;->mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v7, Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser$ConfigResponseJson;

    invoke-virtual {v6, p1, v7}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser$ConfigResponseJson;

    .line 51
    .local v5, "rsp":Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser$ConfigResponseJson;
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 52
    .local v4, "res":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/upsight/android/analytics/configuration/UpsightConfiguration;>;"
    iget-object v0, v5, Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser$ConfigResponseJson;->configs:[Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser$ConfigJson;

    .local v0, "arr$":[Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser$ConfigJson;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 53
    .local v1, "cj":Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser$ConfigJson;
    iget-object v6, v1, Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser$ConfigJson;->type:Ljava/lang/String;

    iget-object v7, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;->mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v8, v1, Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser$ConfigJson;->configuration:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v7, v8}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;->mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;

    invoke-interface {v8}, Lcom/upsight/android/analytics/internal/session/SessionManager;->getCurrentSession()Lcom/upsight/android/analytics/internal/session/Session;

    move-result-object v8

    invoke-interface {v8}, Lcom/upsight/android/analytics/internal/session/Session;->getSessionNumber()I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->create(Ljava/lang/String;Ljava/lang/String;I)Lcom/upsight/android/analytics/configuration/UpsightConfiguration;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    .end local v1    # "cj":Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser$ConfigJson;
    :cond_0
    return-object v4
.end method
