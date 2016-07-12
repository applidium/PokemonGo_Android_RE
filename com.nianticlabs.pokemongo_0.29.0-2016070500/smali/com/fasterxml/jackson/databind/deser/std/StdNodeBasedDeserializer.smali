.class public abstract Lcom/fasterxml/jackson/databind/deser/std/StdNodeBasedDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "StdNodeBasedDeserializer.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer",
        "<TT;>;",
        "Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _treeDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0
    .param p1, "targetType"    # Lcom/fasterxml/jackson/databind/JavaType;

    .prologue
    .line 35
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdNodeBasedDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdNodeBasedDeserializer<TT;>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 36
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/std/StdNodeBasedDeserializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/deser/std/StdNodeBasedDeserializer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdNodeBasedDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdNodeBasedDeserializer<TT;>;"
    .local p1, "src":Lcom/fasterxml/jackson/databind/deser/std/StdNodeBasedDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdNodeBasedDeserializer<*>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;)V

    .line 48
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/StdNodeBasedDeserializer;->_treeDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdNodeBasedDeserializer;->_treeDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 49
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdNodeBasedDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdNodeBasedDeserializer<TT;>;"
    .local p1, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 40
    return-void
.end method


# virtual methods
.method public abstract convert(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .param p1, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdNodeBasedDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdNodeBasedDeserializer<TT;>;"
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdNodeBasedDeserializer;->_treeDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 73
    .local v0, "n":Lcom/fasterxml/jackson/databind/JsonNode;
    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdNodeBasedDeserializer;->convert(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
    .locals 2
    .param p1, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "td"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdNodeBasedDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdNodeBasedDeserializer<TT;>;"
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdNodeBasedDeserializer;->_treeDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v1, p1, p2, p3}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 85
    .local v0, "n":Lcom/fasterxml/jackson/databind/JsonNode;
    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdNodeBasedDeserializer;->convert(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public resolve(Lcom/fasterxml/jackson/databind/DeserializationContext;)V
    .locals 1
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdNodeBasedDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdNodeBasedDeserializer<TT;>;"
    const-class v0, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findRootValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdNodeBasedDeserializer;->_treeDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 54
    return-void
.end method
