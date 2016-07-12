.class public abstract Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;
.super Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
.source "TypeSerializerBase.java"


# instance fields
.field protected final _idResolver:Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;

.field protected final _property:Lcom/fasterxml/jackson/databind/BeanProperty;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Lcom/fasterxml/jackson/databind/BeanProperty;)V
    .locals 0
    .param p1, "idRes"    # Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;
    .param p2, "property"    # Lcom/fasterxml/jackson/databind/BeanProperty;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;->_idResolver:Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;

    .line 17
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 18
    return-void
.end method


# virtual methods
.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTypeIdResolver()Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;->_idResolver:Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;

    return-object v0
.end method

.method public abstract getTypeInclusion()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
.end method

.method protected handleMissingId(Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 58
    return-void
.end method

.method protected idFromValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 36
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;->_idResolver:Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;

    invoke-interface {v1, p1}, Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;->idFromValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "id":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 38
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;->handleMissingId(Ljava/lang/Object;)V

    .line 40
    :cond_0
    return-object v0
.end method

.method protected idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;->_idResolver:Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;

    invoke-interface {v1, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;->idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "id":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;->handleMissingId(Ljava/lang/Object;)V

    .line 48
    :cond_0
    return-object v0
.end method
