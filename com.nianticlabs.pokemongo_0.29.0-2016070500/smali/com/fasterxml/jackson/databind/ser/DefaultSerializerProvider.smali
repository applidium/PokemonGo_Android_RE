.class public abstract Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;
.super Lcom/fasterxml/jackson/databind/SerializerProvider;
.source "DefaultSerializerProvider.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider$Impl;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected transient _objectIdGenerators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected transient _seenObjectIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/SerializerProvider;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/ser/SerializerFactory;)V
    .locals 0
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p3, "f"    # Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/SerializerProvider;-><init>(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/ser/SerializerFactory;)V

    .line 62
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;)V
    .locals 0
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;-><init>(Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 66
    return-void
.end method


# virtual methods
.method protected _createObjectIdMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;",
            ">;"
        }
    .end annotation

    .prologue
    .line 520
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->USE_EQUALITY_FOR_OBJECT_ID:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 523
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    goto :goto_0
.end method

.method protected _serializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 6
    .param p1, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->getDefaultNullValueSerializer()Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v3

    .line 351
    .local v3, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v4, p1, p0}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 361
    return-void

    .line 352
    :catch_0
    move-exception v1

    .line 353
    .local v1, "ioe":Ljava/io/IOException;
    throw v1

    .line 354
    .end local v1    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 356
    .local v2, "msg":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 357
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[no message for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 359
    :cond_0
    new-instance v4, Lcom/fasterxml/jackson/databind/JsonMappingException;

    invoke-direct {v4, v2, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;)V
    .locals 2
    .param p1, "javaType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "visitor"    # Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 402
    if-nez p1, :cond_0

    .line 403
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A class must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_0
    invoke-interface {p2, p0}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->setProvider(Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 409
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/fasterxml/jackson/databind/JsonSerializer;->acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 410
    return-void
.end method

.method public cachedSerializersCount()I
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_serializerCache:Lcom/fasterxml/jackson/databind/ser/SerializerCache;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->size()I

    move-result v0

    return v0
.end method

.method public copy()Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DefaultSerializerProvider sub-class not overriding copy()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract createInstance(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/ser/SerializerFactory;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;
.end method

.method public findObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;
    .locals 7
    .param p1, "forPojo"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;"
        }
    .end annotation

    .prologue
    .line 477
    .local p2, "generatorType":Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;"
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_seenObjectIds:Ljava/util/Map;

    if-nez v5, :cond_3

    .line 478
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_createObjectIdMap()Ljava/util/Map;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_seenObjectIds:Ljava/util/Map;

    .line 486
    :cond_0
    const/4 v1, 0x0

    .line 488
    .local v1, "generator":Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;"
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_objectIdGenerators:Ljava/util/ArrayList;

    if-nez v5, :cond_4

    .line 489
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0x8

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_objectIdGenerators:Ljava/util/ArrayList;

    .line 499
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 500
    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;->newForSerialization(Ljava/lang/Object;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    move-result-object v1

    .line 501
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_objectIdGenerators:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    :cond_2
    new-instance v4, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;

    invoke-direct {v4, v1}, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;-><init>(Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)V

    .line 504
    .local v4, "oid":Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_seenObjectIds:Ljava/util/Map;

    invoke-interface {v5, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    .end local v1    # "generator":Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;"
    :goto_1
    return-object v4

    .line 480
    .end local v4    # "oid":Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;
    :cond_3
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_seenObjectIds:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;

    .line 481
    .restart local v4    # "oid":Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;
    if-eqz v4, :cond_0

    goto :goto_1

    .line 491
    .end local v4    # "oid":Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;
    .restart local v1    # "generator":Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;"
    :cond_4
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_objectIdGenerators:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "len":I
    :goto_2
    if-ge v2, v3, :cond_1

    .line 492
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_objectIdGenerators:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    .line 493
    .local v0, "gen":Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;"
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;->canUseFor(Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 494
    move-object v1, v0

    .line 495
    goto :goto_0

    .line 491
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public flushCachedSerializers()V
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_serializerCache:Lcom/fasterxml/jackson/databind/ser/SerializerCache;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->flush()V

    .line 466
    return-void
.end method

.method public generateJsonSchema(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsonschema/JsonSchema;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/jsonschema/JsonSchema;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 376
    if-nez p1, :cond_0

    .line 377
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "A class must be provided"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 382
    :cond_0
    invoke-virtual {p0, p1, v3}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v1

    .line 383
    .local v1, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    instance-of v2, v1, Lcom/fasterxml/jackson/databind/jsonschema/SchemaAware;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/fasterxml/jackson/databind/jsonschema/SchemaAware;

    .end local v1    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    invoke-interface {v1, p0, v3}, Lcom/fasterxml/jackson/databind/jsonschema/SchemaAware;->getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 385
    .local v0, "schemaNode":Lcom/fasterxml/jackson/databind/JsonNode;
    :goto_0
    instance-of v2, v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v2, :cond_2

    .line 386
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " would not be serialized as a JSON object and therefore has no schema"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 383
    .end local v0    # "schemaNode":Lcom/fasterxml/jackson/databind/JsonNode;
    .restart local v1    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    :cond_1
    invoke-static {}, Lcom/fasterxml/jackson/databind/jsonschema/JsonSchema;->getDefaultSchemaNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    goto :goto_0

    .line 389
    .end local v1    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    .restart local v0    # "schemaNode":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_2
    new-instance v2, Lcom/fasterxml/jackson/databind/jsonschema/JsonSchema;

    check-cast v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .end local v0    # "schemaNode":Lcom/fasterxml/jackson/databind/JsonNode;
    invoke-direct {v2, v0}, Lcom/fasterxml/jackson/databind/jsonschema/JsonSchema;-><init>(Lcom/fasterxml/jackson/databind/node/ObjectNode;)V

    return-object v2
.end method

.method public hasSerializerFor(Ljava/lang/Class;Ljava/util/concurrent/atomic/AtomicReference;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Throwable;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "cause":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    const/4 v2, 0x0

    .line 422
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_findExplicitUntypedSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    :try_end_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 423
    .local v1, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 434
    .end local v1    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    :cond_0
    :goto_0
    return v2

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Lcom/fasterxml/jackson/databind/JsonMappingException;
    if-eqz p2, :cond_0

    .line 426
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 428
    .end local v0    # "e":Lcom/fasterxml/jackson/databind/JsonMappingException;
    :catch_1
    move-exception v0

    .line 429
    .local v0, "e":Ljava/lang/RuntimeException;
    if-nez p2, :cond_1

    .line 430
    throw v0

    .line 432
    :cond_1
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public serializePolymorphic(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 9
    .param p1, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "rootType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p5, "typeSer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p4, "valueSer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    const/4 v8, 0x0

    .line 278
    if-nez p2, :cond_1

    .line 279
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_serializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 284
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_reportIncompatibleRootType(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 291
    :cond_2
    if-nez p4, :cond_3

    .line 292
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 293
    invoke-virtual {p0, p3, v8}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object p4

    .line 300
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getFullRootName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v4

    .line 301
    .local v4, "rootName":Lcom/fasterxml/jackson/databind/PropertyName;
    if-nez v4, :cond_6

    .line 302
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    sget-object v7, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRAP_ROOT_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v6, v7}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v5

    .line 303
    .local v5, "wrap":Z
    if-eqz v5, :cond_4

    .line 304
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 305
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/fasterxml/jackson/databind/SerializationConfig;->findRootName(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v3

    .line 306
    .local v3, "pname":Lcom/fasterxml/jackson/databind/PropertyName;
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v3, v6}, Lcom/fasterxml/jackson/databind/PropertyName;->simpleAsEncoded(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)Lcom/fasterxml/jackson/core/SerializableString;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V

    .line 316
    .end local v3    # "pname":Lcom/fasterxml/jackson/databind/PropertyName;
    :cond_4
    :goto_2
    :try_start_0
    invoke-virtual {p4, p2, p1, p0, p5}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    .line 317
    if-eqz v5, :cond_0

    .line 318
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 320
    :catch_0
    move-exception v1

    .line 321
    .local v1, "ioe":Ljava/io/IOException;
    throw v1

    .line 295
    .end local v1    # "ioe":Ljava/io/IOException;
    .end local v4    # "rootName":Lcom/fasterxml/jackson/databind/PropertyName;
    .end local v5    # "wrap":Z
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0, v6, v8}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object p4

    goto :goto_1

    .line 308
    .restart local v4    # "rootName":Lcom/fasterxml/jackson/databind/PropertyName;
    :cond_6
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/PropertyName;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 309
    const/4 v5, 0x0

    .restart local v5    # "wrap":Z
    goto :goto_2

    .line 311
    .end local v5    # "wrap":Z
    :cond_7
    const/4 v5, 0x1

    .line 312
    .restart local v5    # "wrap":Z
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 313
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    goto :goto_2

    .line 322
    :catch_1
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, "msg":Ljava/lang/String;
    if-nez v2, :cond_8

    .line 325
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[no message for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 327
    :cond_8
    new-instance v6, Lcom/fasterxml/jackson/databind/JsonMappingException;

    invoke-direct {v6, v2, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public serializePolymorphic(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 6
    .param p1, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "typeSer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 338
    if-nez p2, :cond_0

    move-object v3, v4

    .local v3, "t":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 339
    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializePolymorphic(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    .line 340
    return-void

    .line 338
    .end local v3    # "t":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    goto :goto_0
.end method

.method public serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V
    .locals 10
    .param p1, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    if-nez p2, :cond_1

    .line 102
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_serializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 107
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, v0, v8, v9}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->findTypedValueSerializer(Ljava/lang/Class;ZLcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v6

    .line 111
    .local v6, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getFullRootName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v5

    .line 113
    .local v5, "rootName":Lcom/fasterxml/jackson/databind/PropertyName;
    if-nez v5, :cond_3

    .line 115
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    sget-object v9, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRAP_ROOT_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v8, v9}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v7

    .line 116
    .local v7, "wrap":Z
    if-eqz v7, :cond_2

    .line 117
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 118
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/fasterxml/jackson/databind/SerializationConfig;->findRootName(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v4

    .line 119
    .local v4, "pname":Lcom/fasterxml/jackson/databind/PropertyName;
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v4, v8}, Lcom/fasterxml/jackson/databind/PropertyName;->simpleAsEncoded(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)Lcom/fasterxml/jackson/core/SerializableString;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V

    .line 130
    .end local v4    # "pname":Lcom/fasterxml/jackson/databind/PropertyName;
    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual {v6, p2, p1, p0}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 131
    if-eqz v7, :cond_0

    .line 132
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 134
    :catch_0
    move-exception v2

    .line 135
    .local v2, "ioe":Ljava/io/IOException;
    throw v2

    .line 121
    .end local v2    # "ioe":Ljava/io/IOException;
    .end local v7    # "wrap":Z
    :cond_3
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/PropertyName;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 122
    const/4 v7, 0x0

    .restart local v7    # "wrap":Z
    goto :goto_1

    .line 125
    .end local v7    # "wrap":Z
    :cond_4
    const/4 v7, 0x1

    .line 126
    .restart local v7    # "wrap":Z
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 127
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    goto :goto_1

    .line 136
    :catch_1
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "msg":Ljava/lang/String;
    if-nez v3, :cond_5

    .line 139
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[no message for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 141
    :cond_5
    new-instance v8, Lcom/fasterxml/jackson/databind/JsonMappingException;

    invoke-direct {v8, v3, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method

.method public serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 9
    .param p1, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "rootType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    if-nez p2, :cond_1

    .line 159
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_serializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 164
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_reportIncompatibleRootType(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 167
    :cond_2
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0, p3, v7, v8}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->findTypedValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v5

    .line 171
    .local v5, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getFullRootName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v4

    .line 172
    .local v4, "rootName":Lcom/fasterxml/jackson/databind/PropertyName;
    if-nez v4, :cond_4

    .line 174
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    sget-object v8, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRAP_ROOT_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v7, v8}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v6

    .line 175
    .local v6, "wrap":Z
    if-eqz v6, :cond_3

    .line 176
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 177
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/fasterxml/jackson/databind/SerializationConfig;->findRootName(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v3

    .line 178
    .local v3, "pname":Lcom/fasterxml/jackson/databind/PropertyName;
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v3, v7}, Lcom/fasterxml/jackson/databind/PropertyName;->simpleAsEncoded(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)Lcom/fasterxml/jackson/core/SerializableString;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V

    .line 189
    .end local v3    # "pname":Lcom/fasterxml/jackson/databind/PropertyName;
    :cond_3
    :goto_1
    :try_start_0
    invoke-virtual {v5, p2, p1, p0}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 190
    if-eqz v6, :cond_0

    .line 191
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 193
    :catch_0
    move-exception v1

    .line 194
    .local v1, "ioe":Ljava/io/IOException;
    throw v1

    .line 180
    .end local v1    # "ioe":Ljava/io/IOException;
    .end local v6    # "wrap":Z
    :cond_4
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/PropertyName;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 181
    const/4 v6, 0x0

    .restart local v6    # "wrap":Z
    goto :goto_1

    .line 184
    .end local v6    # "wrap":Z
    :cond_5
    const/4 v6, 0x1

    .line 185
    .restart local v6    # "wrap":Z
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 186
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    goto :goto_1

    .line 195
    :catch_1
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "msg":Ljava/lang/String;
    if-nez v2, :cond_6

    .line 198
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[no message for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 200
    :cond_6
    new-instance v7, Lcom/fasterxml/jackson/databind/JsonMappingException;

    invoke-direct {v7, v2, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method public serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
    .locals 8
    .param p1, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "rootType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    .local p4, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    if-nez p2, :cond_1

    .line 220
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_serializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 225
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_reportIncompatibleRootType(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 228
    :cond_2
    if-nez p4, :cond_3

    .line 229
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0, p3, v6, v7}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->findTypedValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object p4

    .line 233
    :cond_3
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getFullRootName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v4

    .line 234
    .local v4, "rootName":Lcom/fasterxml/jackson/databind/PropertyName;
    if-nez v4, :cond_6

    .line 236
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    sget-object v7, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRAP_ROOT_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v6, v7}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v5

    .line 237
    .local v5, "wrap":Z
    if-eqz v5, :cond_4

    .line 238
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 239
    if-nez p3, :cond_5

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/fasterxml/jackson/databind/SerializationConfig;->findRootName(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v3

    .line 242
    .local v3, "pname":Lcom/fasterxml/jackson/databind/PropertyName;
    :goto_1
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v3, v6}, Lcom/fasterxml/jackson/databind/PropertyName;->simpleAsEncoded(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)Lcom/fasterxml/jackson/core/SerializableString;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V

    .line 253
    .end local v3    # "pname":Lcom/fasterxml/jackson/databind/PropertyName;
    :cond_4
    :goto_2
    :try_start_0
    invoke-virtual {p4, p2, p1, p0}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 254
    if-eqz v5, :cond_0

    .line 255
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 257
    :catch_0
    move-exception v1

    .line 258
    .local v1, "ioe":Ljava/io/IOException;
    throw v1

    .line 239
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_5
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v6, p3}, Lcom/fasterxml/jackson/databind/SerializationConfig;->findRootName(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v3

    goto :goto_1

    .line 244
    .end local v5    # "wrap":Z
    :cond_6
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/PropertyName;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 245
    const/4 v5, 0x0

    .restart local v5    # "wrap":Z
    goto :goto_2

    .line 248
    .end local v5    # "wrap":Z
    :cond_7
    const/4 v5, 0x1

    .line 249
    .restart local v5    # "wrap":Z
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 250
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    goto :goto_2

    .line 259
    :catch_1
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "msg":Ljava/lang/String;
    if-nez v2, :cond_8

    .line 262
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[no message for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 264
    :cond_8
    new-instance v6, Lcom/fasterxml/jackson/databind/JsonMappingException;

    invoke-direct {v6, v2, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public serializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 6
    .param p1, "annotated"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p2, "serDef"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 535
    if-nez p2, :cond_1

    .line 566
    :cond_0
    :goto_0
    return-object v3

    .line 540
    :cond_1
    instance-of v4, p2, Lcom/fasterxml/jackson/databind/JsonSerializer;

    if-eqz v4, :cond_3

    move-object v1, p2

    .line 541
    check-cast v1, Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 566
    .local v1, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    :cond_2
    :goto_1
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_handleResolvable(Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v3

    goto :goto_0

    .line 546
    .end local v1    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    :cond_3
    instance-of v4, p2, Ljava/lang/Class;

    if-nez v4, :cond_4

    .line 547
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AnnotationIntrospector returned serializer definition of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; expected type JsonSerializer or Class<JsonSerializer> instead"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    move-object v2, p2

    .line 550
    check-cast v2, Ljava/lang/Class;

    .line 552
    .local v2, "serClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Lcom/fasterxml/jackson/databind/JsonSerializer$None;

    if-eq v2, v4, :cond_0

    invoke-static {v2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isBogusClass(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 555
    const-class v4, Lcom/fasterxml/jackson/databind/JsonSerializer;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 556
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AnnotationIntrospector returned Class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; expected Class<JsonSerializer>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 559
    :cond_5
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getHandlerInstantiator()Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;

    move-result-object v0

    .line 560
    .local v0, "hi":Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
    if-nez v0, :cond_6

    move-object v1, v3

    .line 561
    .restart local v1    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    :goto_2
    if-nez v1, :cond_2

    .line 562
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/SerializationConfig;->canOverrideAccessModifiers()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    check-cast v1, Lcom/fasterxml/jackson/databind/JsonSerializer;

    .restart local v1    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    goto :goto_1

    .line 560
    .end local v1    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    :cond_6
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, v3, p1, v2}, Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;->serializerInstance(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v1

    goto :goto_2
.end method
