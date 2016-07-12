.class public Lcom/upsight/android/internal/persistence/storable/DefaultJsonSerializer;
.super Ljava/lang/Object;
.source "DefaultJsonSerializer.java"

# interfaces
.implements Lcom/upsight/android/persistence/UpsightStorableSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/upsight/android/persistence/UpsightStorableSerializer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Ljava/lang/Class;)V
    .locals 0
    .param p1, "objectMapper"    # Lcom/fasterxml/jackson/databind/ObjectMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ObjectMapper;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/upsight/android/internal/persistence/storable/DefaultJsonSerializer;, "Lcom/upsight/android/internal/persistence/storable/DefaultJsonSerializer<TT;>;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/upsight/android/internal/persistence/storable/DefaultJsonSerializer;->mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 29
    iput-object p2, p0, Lcom/upsight/android/internal/persistence/storable/DefaultJsonSerializer;->mClass:Ljava/lang/Class;

    .line 30
    return-void
.end method


# virtual methods
.method public fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/upsight/android/UpsightException;
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/upsight/android/internal/persistence/storable/DefaultJsonSerializer;, "Lcom/upsight/android/internal/persistence/storable/DefaultJsonSerializer<TT;>;"
    :try_start_0
    iget-object v1, p0, Lcom/upsight/android/internal/persistence/storable/DefaultJsonSerializer;->mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v2, p0, Lcom/upsight/android/internal/persistence/storable/DefaultJsonSerializer;->mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    iget-object v3, p0, Lcom/upsight/android/internal/persistence/storable/DefaultJsonSerializer;->mClass:Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/upsight/android/UpsightException;

    invoke-direct {v1, v0}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/upsight/android/internal/persistence/storable/DefaultJsonSerializer;, "Lcom/upsight/android/internal/persistence/storable/DefaultJsonSerializer<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/upsight/android/internal/persistence/storable/DefaultJsonSerializer;->mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
