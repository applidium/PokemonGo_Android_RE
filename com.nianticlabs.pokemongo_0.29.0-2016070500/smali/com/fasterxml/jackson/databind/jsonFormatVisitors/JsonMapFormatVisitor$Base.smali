.class public Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonMapFormatVisitor$Base;
.super Ljava/lang/Object;
.source "JsonMapFormatVisitor.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonMapFormatVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonMapFormatVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base"
.end annotation


# instance fields
.field protected _provider:Lcom/fasterxml/jackson/databind/SerializerProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .param p1, "p"    # Lcom/fasterxml/jackson/databind/SerializerProvider;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonMapFormatVisitor$Base;->_provider:Lcom/fasterxml/jackson/databind/SerializerProvider;

    return-void
.end method


# virtual methods
.method public getProvider()Lcom/fasterxml/jackson/databind/SerializerProvider;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonMapFormatVisitor$Base;->_provider:Lcom/fasterxml/jackson/databind/SerializerProvider;

    return-object v0
.end method

.method public keyFormat(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitable;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0
    .param p1, "handler"    # Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitable;
    .param p2, "keyType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 41
    return-void
.end method

.method public setProvider(Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .param p1, "p"    # Lcom/fasterxml/jackson/databind/SerializerProvider;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonMapFormatVisitor$Base;->_provider:Lcom/fasterxml/jackson/databind/SerializerProvider;

    return-void
.end method

.method public valueFormat(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitable;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0
    .param p1, "handler"    # Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitable;
    .param p2, "valueType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 43
    return-void
.end method
