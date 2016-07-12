.class public Lcom/fasterxml/jackson/databind/util/JSONPObject;
.super Ljava/lang/Object;
.source "JSONPObject.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/JsonSerializable;


# instance fields
.field protected final _function:Ljava/lang/String;

.field protected final _serializationType:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final _value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "function"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 41
    const/4 v0, 0x0

    check-cast v0, Lcom/fasterxml/jackson/databind/JavaType;

    invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/util/JSONPObject;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0
    .param p1, "function"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "asType"    # Lcom/fasterxml/jackson/databind/JavaType;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/JSONPObject;->_function:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/util/JSONPObject;->_value:Ljava/lang/Object;

    .line 48
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/util/JSONPObject;->_serializationType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 49
    return-void
.end method


# virtual methods
.method public getFunction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/JSONPObject;->_function:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializationType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/JSONPObject;->_serializationType:Lcom/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/JSONPObject;->_value:Ljava/lang/Object;

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

    .line 70
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/JSONPObject;->_function:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(Ljava/lang/String;)V

    .line 71
    const/16 v1, 0x28

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(C)V

    .line 72
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/JSONPObject;->_value:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 73
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 80
    :goto_0
    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(C)V

    .line 81
    return-void

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/JSONPObject;->_serializationType:Lcom/fasterxml/jackson/databind/JavaType;

    if-eqz v1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/JSONPObject;->_serializationType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p2, v1, v2, v3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findTypedValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/JSONPObject;->_value:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1, p2}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_0

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/JSONPObject;->_value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 78
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2, v0, v2, v3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findTypedValueSerializer(Ljava/lang/Class;ZLcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/JSONPObject;->_value:Ljava/lang/Object;

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
    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/util/JSONPObject;->serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 63
    return-void
.end method
