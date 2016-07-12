.class public Lcom/fasterxml/jackson/databind/ext/DOMDeserializer$DocumentDeserializer;
.super Lcom/fasterxml/jackson/databind/ext/DOMDeserializer;
.source "DOMDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/ext/DOMDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DocumentDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ext/DOMDeserializer",
        "<",
        "Lorg/w3c/dom/Document;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lorg/w3c/dom/Document;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ext/DOMDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic _deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/fasterxml/jackson/databind/DeserializationContext;

    .prologue
    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ext/DOMDeserializer$DocumentDeserializer;->_deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public _deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lorg/w3c/dom/Document;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ext/DOMDeserializer$DocumentDeserializer;->parse(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method
