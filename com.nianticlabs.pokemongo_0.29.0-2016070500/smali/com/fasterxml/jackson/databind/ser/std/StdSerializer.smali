.class public abstract Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.super Lcom/fasterxml/jackson/databind/JsonSerializer;
.source "StdSerializer.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitable;
.implements Lcom/fasterxml/jackson/databind/jsonschema/SchemaAware;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fasterxml/jackson/databind/JsonSerializer",
        "<TT;>;",
        "Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitable;",
        "Lcom/fasterxml/jackson/databind/jsonschema/SchemaAware;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _handledType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 1
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;

    .prologue
    .line 50
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<TT;>;"
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonSerializer;-><init>()V

    .line 51
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->_handledType:Ljava/lang/Class;

    .line 52
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<TT;>;"
    .local p1, "src":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<*>;"
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonSerializer;-><init>()V

    .line 68
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->_handledType:Ljava/lang/Class;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->_handledType:Ljava/lang/Class;

    .line 69
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
    .line 45
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<TT;>;"
    .local p1, "t":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonSerializer;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->_handledType:Ljava/lang/Class;

    .line 47
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Z)V
    .locals 0
    .param p2, "dummy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<TT;>;"
    .local p1, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonSerializer;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->_handledType:Ljava/lang/Class;

    .line 61
    return-void
.end method


# virtual methods
.method public acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0
    .param p1, "visitor"    # Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;
    .param p2, "typeHint"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<TT;>;"
    invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->expectAnyFormat(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonAnyFormatVisitor;

    .line 152
    return-void
.end method

.method protected createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    .prologue
    .line 123
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<TT;>;"
    sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method protected createSchemaNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 128
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<TT;>;"
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 129
    .local v0, "schema":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 130
    return-object v0
.end method

.method protected createSchemaNode(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "isOptional"    # Z

    .prologue
    .line 135
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<TT;>;"
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->createSchemaNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 137
    .local v0, "schema":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    if-nez p2, :cond_0

    .line 138
    const-string v2, "required"

    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 140
    :cond_0
    return-object v0

    .line 138
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected findConvertingContentSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 6
    .param p1, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "prop"    # Lcom/fasterxml/jackson/databind/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 262
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<TT;>;"
    .local p3, "existingSerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v3

    .line 263
    .local v3, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    .line 264
    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v4

    .line 265
    .local v4, "m":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    if-eqz v4, :cond_1

    .line 266
    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationContentConverter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v1

    .line 267
    .local v1, "convDef":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 268
    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v5

    invoke-virtual {p1, v5, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->converterInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/Converter;

    move-result-object v0

    .line 269
    .local v0, "conv":Lcom/fasterxml/jackson/databind/util/Converter;, "Lcom/fasterxml/jackson/databind/util/Converter<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/fasterxml/jackson/databind/util/Converter;->getOutputType(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 271
    .local v2, "delegateType":Lcom/fasterxml/jackson/databind/JavaType;
    if-nez p3, :cond_0

    const-class v5, Ljava/lang/Object;

    invoke-virtual {v2, v5}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 272
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object p3

    .line 274
    :cond_0
    new-instance v5, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;

    invoke-direct {v5, v0, v2, p3}, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;-><init>(Lcom/fasterxml/jackson/databind/util/Converter;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 278
    .end local v0    # "conv":Lcom/fasterxml/jackson/databind/util/Converter;, "Lcom/fasterxml/jackson/databind/util/Converter<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v1    # "convDef":Ljava/lang/Object;
    .end local v2    # "delegateType":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v4    # "m":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    :goto_0
    return-object v5

    :cond_1
    move-object v5, p3

    goto :goto_0
.end method

.method protected findPropertyFilter(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/PropertyFilter;
    .locals 5
    .param p1, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "filterId"    # Ljava/lang/Object;
    .param p3, "valueToFilter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 291
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<TT;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getFilterProvider()Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    move-result-object v1

    .line 293
    .local v1, "filters":Lcom/fasterxml/jackson/databind/ser/FilterProvider;
    if-nez v1, :cond_0

    .line 294
    new-instance v2, Lcom/fasterxml/jackson/databind/JsonMappingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not resolve PropertyFilter with id \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'; no FilterProvider configured"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 296
    :cond_0
    invoke-virtual {v1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/FilterProvider;->findPropertyFilter(Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/PropertyFilter;

    move-result-object v0

    .line 298
    .local v0, "filter":Lcom/fasterxml/jackson/databind/ser/PropertyFilter;
    return-object v0
.end method

.method public getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1
    .param p1, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "typeHint"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<TT;>;"
    const-string v0, "string"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->createSchemaNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;Z)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 3
    .param p1, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "typeHint"    # Ljava/lang/reflect/Type;
    .param p3, "isOptional"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 116
    .local v0, "schema":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    if-nez p3, :cond_0

    .line 117
    const-string v2, "required"

    if-nez p3, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 119
    :cond_0
    return-object v0

    .line 117
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handledType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->_handledType:Ljava/lang/Class;

    return-object v0
.end method

.method protected isDefaultSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<TT;>;"
    .local p1, "serializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isJacksonStdImpl(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public wrapAndThrow(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V
    .locals 2
    .param p1, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "t"    # Ljava/lang/Throwable;
    .param p3, "bean"    # Ljava/lang/Object;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<TT;>;"
    :goto_0
    instance-of v1, p2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_0

    .line 210
    :cond_0
    instance-of v1, p2, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 211
    check-cast p2, Ljava/lang/Error;

    .end local p2    # "t":Ljava/lang/Throwable;
    throw p2

    .line 214
    .restart local p2    # "t":Ljava/lang/Throwable;
    :cond_1
    if-eqz p1, :cond_2

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRAP_EXCEPTIONS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 215
    .local v0, "wrap":Z
    :goto_1
    instance-of v1, p2, Ljava/io/IOException;

    if-eqz v1, :cond_5

    .line 216
    if-eqz v0, :cond_3

    instance-of v1, p2, Lcom/fasterxml/jackson/databind/JsonMappingException;

    if-nez v1, :cond_6

    .line 217
    :cond_3
    check-cast p2, Ljava/io/IOException;

    .end local p2    # "t":Ljava/lang/Throwable;
    throw p2

    .line 214
    .end local v0    # "wrap":Z
    .restart local p2    # "t":Ljava/lang/Throwable;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 219
    .restart local v0    # "wrap":Z
    :cond_5
    if-nez v0, :cond_6

    .line 220
    instance-of v1, p2, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_6

    .line 221
    check-cast p2, Ljava/lang/RuntimeException;

    .end local p2    # "t":Ljava/lang/Throwable;
    throw p2

    .line 225
    .restart local p2    # "t":Ljava/lang/Throwable;
    :cond_6
    invoke-static {p2, p3, p4}, Lcom/fasterxml/jackson/databind/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;I)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v1

    throw v1
.end method

.method public wrapAndThrow(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "t"    # Ljava/lang/Throwable;
    .param p3, "bean"    # Ljava/lang/Object;
    .param p4, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<TT;>;"
    :goto_0
    instance-of v1, p2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_0

    .line 184
    :cond_0
    instance-of v1, p2, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 185
    check-cast p2, Ljava/lang/Error;

    .end local p2    # "t":Ljava/lang/Throwable;
    throw p2

    .line 188
    .restart local p2    # "t":Ljava/lang/Throwable;
    :cond_1
    if-eqz p1, :cond_2

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRAP_EXCEPTIONS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 189
    .local v0, "wrap":Z
    :goto_1
    instance-of v1, p2, Ljava/io/IOException;

    if-eqz v1, :cond_5

    .line 190
    if-eqz v0, :cond_3

    instance-of v1, p2, Lcom/fasterxml/jackson/databind/JsonMappingException;

    if-nez v1, :cond_6

    .line 191
    :cond_3
    check-cast p2, Ljava/io/IOException;

    .end local p2    # "t":Ljava/lang/Throwable;
    throw p2

    .line 188
    .end local v0    # "wrap":Z
    .restart local p2    # "t":Ljava/lang/Throwable;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 193
    .restart local v0    # "wrap":Z
    :cond_5
    if-nez v0, :cond_6

    .line 194
    instance-of v1, p2, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_6

    .line 195
    check-cast p2, Ljava/lang/RuntimeException;

    .end local p2    # "t":Ljava/lang/Throwable;
    throw p2

    .line 199
    .restart local p2    # "t":Ljava/lang/Throwable;
    :cond_6
    invoke-static {p2, p3, p4}, Lcom/fasterxml/jackson/databind/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v1

    throw v1
.end method
