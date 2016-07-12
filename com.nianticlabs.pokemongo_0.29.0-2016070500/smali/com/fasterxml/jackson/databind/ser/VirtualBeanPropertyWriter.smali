.class public abstract Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;
.super Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
.source "VirtualBeanPropertyWriter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;-><init>()V

    .line 46
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 8
    .param p1, "propDef"    # Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .param p2, "contextAnnotations"    # Lcom/fasterxml/jackson/databind/util/Annotations;
    .param p3, "declaredType"    # Lcom/fasterxml/jackson/databind/JavaType;

    .prologue
    const/4 v4, 0x0

    .line 35
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->findInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;-><init>(Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)V

    .line 37
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)V
    .locals 10
    .param p1, "propDef"    # Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .param p2, "contextAnnotations"    # Lcom/fasterxml/jackson/databind/util/Annotations;
    .param p3, "declaredType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p5, "typeSer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .param p6, "serType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p7, "inclusion"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;",
            "Lcom/fasterxml/jackson/databind/util/Annotations;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/annotation/JsonInclude$Include;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    .local p4, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getPrimaryMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v2

    invoke-static/range {p7 .. p7}, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;->_suppressNulls(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Z

    move-result v8

    invoke-static/range {p7 .. p7}, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;->_suppressableValue(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;-><init>(Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JavaType;ZLjava/lang/Object;)V

    .line 60
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;)V
    .locals 0
    .param p1, "base"    # Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;-><init>(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V

    .line 64
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;Lcom/fasterxml/jackson/databind/PropertyName;)V
    .locals 0
    .param p1, "base"    # Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;
    .param p2, "name"    # Lcom/fasterxml/jackson/databind/PropertyName;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;-><init>(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;Lcom/fasterxml/jackson/databind/PropertyName;)V

    .line 68
    return-void
.end method

.method protected static _suppressNulls(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Z
    .locals 1
    .param p0, "inclusion"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .prologue
    .line 71
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->ALWAYS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static _suppressableValue(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Ljava/lang/Object;
    .locals 1
    .param p0, "inclusion"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .prologue
    .line 75
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-ne p0, v0, :cond_1

    .line 77
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    .line 79
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getGenericPropertyType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;->getPropertyType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;->_declaredType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public isVirtual()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public serializeAsElement(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 6
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "prov"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 191
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;->value(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)Ljava/lang/Object;

    move-result-object v3

    .line 193
    .local v3, "value":Ljava/lang/Object;
    if-nez v3, :cond_2

    .line 194
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;->_nullSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    if-eqz v4, :cond_1

    .line 195
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;->_nullSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNull()V

    goto :goto_0

    .line 201
    :cond_2
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;->_serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 202
    .local v2, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    if-nez v2, :cond_3

    .line 203
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 204
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 205
    .local v1, "map":Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v2

    .line 206
    if-nez v2, :cond_3

    .line 207
    invoke-virtual {p0, v1, v0, p3}, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v2

    .line 210
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "map":Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
    :cond_3
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;->_suppressableValue:Ljava/lang/Object;

    if-eqz v4, :cond_5

    .line 211
    sget-object v4, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;->_suppressableValue:Ljava/lang/Object;

    if-ne v4, v5, :cond_4

    .line 212
    invoke-virtual {v2, p3, v3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 213
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;->serializeAsPlaceholder(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_0

    .line 216
    :cond_4
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;->_suppressableValue:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 217
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;->serializeAsPlaceholder(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_0

    .line 221
    :cond_5
    if-ne v3, p1, :cond_6

    .line 222
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;->_handleSelfReference(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JsonSerializer;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 226
    :cond_6
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;->_typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    if-nez v4, :cond_7

    .line 227
    invoke-virtual {v2, v3, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_0

    .line 229
    :cond_7
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;->_typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    invoke-virtual {v2, v3, p2, p3, v4}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    goto :goto_0
.end method

.method public serializeAsField(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 6
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "prov"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;->value(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)Ljava/lang/Object;

    move-result-object v3

    .line 144
    .local v3, "value":Ljava/lang/Object;
    if-nez v3, :cond_1

    .line 145
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;->_nullSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    if-eqz v4, :cond_0

    .line 146
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;->_name:Lcom/fasterxml/jackson/core/io/SerializedString;

    invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V

    .line 147
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;->_nullSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;->_serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 152
    .local v2, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    if-nez v2, :cond_2

    .line 153
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 154
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 155
    .local v1, "m":Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v2

    .line 156
    if-nez v2, :cond_2

    .line 157
    invoke-virtual {p0, v1, v0, p3}, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v2

    .line 160
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "m":Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
    :cond_2
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;->_suppressableValue:Ljava/lang/Object;

    if-eqz v4, :cond_3

    .line 161
    sget-object v4, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;->_suppressableValue:Ljava/lang/Object;

    if-ne v4, v5, :cond_5

    .line 162
    invoke-virtual {v2, p3, v3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 169
    :cond_3
    if-ne v3, p1, :cond_4

    .line 171
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;->_handleSelfReference(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JsonSerializer;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 175
    :cond_4
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;->_name:Lcom/fasterxml/jackson/core/io/SerializedString;

    invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V

    .line 176
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;->_typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    if-nez v4, :cond_6

    .line 177
    invoke-virtual {v2, v3, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_0

    .line 165
    :cond_5
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;->_suppressableValue:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 179
    :cond_6
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;->_typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    invoke-virtual {v2, v3, p2, p3, v4}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    goto :goto_0
.end method

.method protected abstract value(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract withConfig(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            "Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;"
        }
    .end annotation
.end method
