.class public Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor$Base;
.super Ljava/lang/Object;
.source "JsonObjectFormatVisitor.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;
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
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .param p1, "p"    # Lcom/fasterxml/jackson/databind/SerializerProvider;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor$Base;->_provider:Lcom/fasterxml/jackson/databind/SerializerProvider;

    return-void
.end method


# virtual methods
.method public getProvider()Lcom/fasterxml/jackson/databind/SerializerProvider;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor$Base;->_provider:Lcom/fasterxml/jackson/databind/SerializerProvider;

    return-object v0
.end method

.method public optionalProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)V
    .locals 0
    .param p1, "prop"    # Lcom/fasterxml/jackson/databind/BeanProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 60
    return-void
.end method

.method public optionalProperty(Ljava/lang/String;Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitable;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitable;
    .param p3, "propertyTypeHint"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 64
    return-void
.end method

.method public property(Lcom/fasterxml/jackson/databind/BeanProperty;)V
    .locals 0
    .param p1, "prop"    # Lcom/fasterxml/jackson/databind/BeanProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 52
    return-void
.end method

.method public property(Ljava/lang/String;Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitable;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitable;
    .param p3, "propertyTypeHint"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 56
    return-void
.end method

.method public setProvider(Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .param p1, "p"    # Lcom/fasterxml/jackson/databind/SerializerProvider;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor$Base;->_provider:Lcom/fasterxml/jackson/databind/SerializerProvider;

    return-void
.end method
