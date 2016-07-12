.class public abstract Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "StdScalarDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0
    .param p1, "valueType"    # Lcom/fasterxml/jackson/databind/JavaType;

    .prologue
    .line 19
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer<TT;>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer<TT;>;"
    .local p1, "src":Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer<*>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer<TT;>;"
    .local p1, "vc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
    .locals 1
    .param p1, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "typeDeserializer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer<TT;>;"
    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->deserializeTypedFromScalar(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
