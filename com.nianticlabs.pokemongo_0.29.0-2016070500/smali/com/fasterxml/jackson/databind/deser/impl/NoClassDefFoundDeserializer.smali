.class public Lcom/fasterxml/jackson/databind/deser/impl/NoClassDefFoundDeserializer;
.super Lcom/fasterxml/jackson/databind/JsonDeserializer;
.source "NoClassDefFoundDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fasterxml/jackson/databind/JsonDeserializer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final _cause:Ljava/lang/NoClassDefFoundError;


# direct methods
.method public constructor <init>(Ljava/lang/NoClassDefFoundError;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/NoClassDefFoundError;

    .prologue
    .line 21
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/impl/NoClassDefFoundDeserializer;, "Lcom/fasterxml/jackson/databind/deser/impl/NoClassDefFoundDeserializer<TT;>;"
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/NoClassDefFoundDeserializer;->_cause:Ljava/lang/NoClassDefFoundError;

    .line 23
    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
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
    .line 28
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/impl/NoClassDefFoundDeserializer;, "Lcom/fasterxml/jackson/databind/deser/impl/NoClassDefFoundDeserializer<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/NoClassDefFoundDeserializer;->_cause:Ljava/lang/NoClassDefFoundError;

    throw v0
.end method
