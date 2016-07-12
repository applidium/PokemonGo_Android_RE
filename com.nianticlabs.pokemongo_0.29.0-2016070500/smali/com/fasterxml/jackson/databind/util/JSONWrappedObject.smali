.class public Lcom/fasterxml/jackson/databind/util/JSONWrappedObject;
.super Ljava/lang/Object;
.source "JSONWrappedObject.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/JsonSerializable;


# instance fields
.field protected final _prefix:Ljava/lang/String;

.field protected final _serializationType:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final _suffix:Ljava/lang/String;

.field protected final _value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 46
    const/4 v0, 0x0

    check-cast v0, Lcom/fasterxml/jackson/databind/JavaType;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/util/JSONWrappedObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "asType"    # Lcom/fasterxml/jackson/databind/JavaType;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/JSONWrappedObject;->_prefix:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/util/JSONWrappedObject;->_suffix:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/util/JSONWrappedObject;->_value:Ljava/lang/Object;

    .line 59
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/util/JSONWrappedObject;->_serializationType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 60
    return-void
.end method


# virtual methods
.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/JSONWrappedObject;->_prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializationType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/JSONWrappedObject;->_serializationType:Lcom/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/JSONWrappedObject;->_suffix:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/JSONWrappedObject;->_value:Ljava/lang/Object;

    return-object v0
.end method

.method public serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 4
    .param p1, "jgen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p2, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 81
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/JSONWrappedObject;->_prefix:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/JSONWrappedObject;->_prefix:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(Ljava/lang/String;)V

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/JSONWrappedObject;->_value:Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 83
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 90
    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/JSONWrappedObject;->_suffix:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/JSONWrappedObject;->_suffix:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(Ljava/lang/String;)V

    .line 91
    :cond_1
    return-void

    .line 84
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/JSONWrappedObject;->_serializationType:Lcom/fasterxml/jackson/databind/JavaType;

    if-eqz v1, :cond_3

    .line 85
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/JSONWrappedObject;->_serializationType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p2, v1, v2, v3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findTypedValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/JSONWrappedObject;->_value:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1, p2}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_0

    .line 87
    :cond_3
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/JSONWrappedObject;->_value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 88
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2, v0, v2, v3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findTypedValueSerializer(Ljava/lang/Class;ZLcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/JSONWrappedObject;->_value:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1, p2}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_0
.end method

.method public serializeWithType(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 0
    .param p1, "jgen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p2, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p3, "typeSer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/util/JSONWrappedObject;->serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 74
    return-void
.end method
