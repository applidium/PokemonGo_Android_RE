.class final Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;
.super Ljava/lang/Object;
.source "ExternalTypeHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExtTypedProperty"
.end annotation


# instance fields
.field private final _property:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

.field private final _typeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

.field private final _typePropertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)V
    .locals 1
    .param p1, "property"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .param p2, "typeDeser"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->_property:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 303
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->_typeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 304
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->_typePropertyName:Ljava/lang/String;

    .line 305
    return-void
.end method


# virtual methods
.method public getDefaultTypeId()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 316
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->_typeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->getDefaultImpl()Ljava/lang/Class;

    move-result-object v0

    .line 317
    .local v0, "defaultType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 320
    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->_typeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->getTypeIdResolver()Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;->idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getProperty()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->_property:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    return-object v0
.end method

.method public getTypePropertyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->_typePropertyName:Ljava/lang/String;

    return-object v0
.end method

.method public hasDefaultType()Z
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->_typeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->getDefaultImpl()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTypePropertyName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "n"    # Ljava/lang/String;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->_typePropertyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
