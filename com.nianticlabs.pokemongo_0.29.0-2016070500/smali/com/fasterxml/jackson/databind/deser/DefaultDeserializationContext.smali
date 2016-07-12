.class public abstract Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
.super Lcom/fasterxml/jackson/databind/DeserializationContext;
.source "DefaultDeserializationContext.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext$Impl;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _objectIdResolvers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/annotation/ObjectIdResolver;",
            ">;"
        }
    .end annotation
.end field

.field protected transient _objectIds:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;",
            "Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;)V
    .locals 0
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;-><init>(Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    .line 61
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/InjectableValues;)V
    .locals 0
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p3, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p4, "values"    # Lcom/fasterxml/jackson/databind/InjectableValues;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/DeserializationContext;-><init>(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/InjectableValues;)V

    .line 49
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;)V
    .locals 0
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
    .param p2, "factory"    # Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;-><init>(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;)V

    .line 54
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/fasterxml/jackson/databind/deser/DeserializerCache;)V
    .locals 0
    .param p1, "df"    # Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;
    .param p2, "cache"    # Lcom/fasterxml/jackson/databind/deser/DeserializerCache;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;-><init>(Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/fasterxml/jackson/databind/deser/DeserializerCache;)V

    .line 44
    return-void
.end method


# virtual methods
.method public checkUnresolvedObjectId()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_objectIds:Ljava/util/LinkedHashMap;

    if-nez v7, :cond_1

    .line 165
    :cond_0
    return-void

    .line 140
    :cond_1
    sget-object v7, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_UNRESOLVED_OBJECT_IDS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p0, v7}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 143
    const/4 v1, 0x0

    .line 144
    .local v1, "exception":Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_objectIds:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 145
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;

    .line 146
    .local v6, "roid":Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->hasReferringProperties()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 150
    invoke-virtual {p0, v6}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->tryToResolveUnresolvedObjectId(Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 153
    if-nez v1, :cond_3

    .line 154
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;

    .end local v1    # "exception":Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;
    const-string v7, "Unresolved forward references for: "

    invoke-direct {v1, v7}, Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;-><init>(Ljava/lang/String;)V

    .line 156
    .restart local v1    # "exception":Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;
    :cond_3
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->getKey()Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;

    move-result-object v7

    iget-object v4, v7, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;->key:Ljava/lang/Object;

    .line 157
    .local v4, "key":Ljava/lang/Object;
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->referringProperties()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 158
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;

    .line 159
    .local v5, "referring":Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;->getBeanType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;->getLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v8

    invoke-virtual {v1, v4, v7, v8}, Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;->addUnresolvedId(Ljava/lang/Object;Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonLocation;)V

    goto :goto_0

    .line 162
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;>;"
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;>;"
    .end local v4    # "key":Ljava/lang/Object;
    .end local v5    # "referring":Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;
    .end local v6    # "roid":Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;
    :cond_4
    if-eqz v1, :cond_0

    .line 163
    throw v1
.end method

.method public copy()Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DefaultDeserializationContext sub-class not overriding copy()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract createInstance(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/InjectableValues;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
.end method

.method public deserializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 6
    .param p1, "ann"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p2, "deserDef"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
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
    const/4 v0, 0x0

    .line 193
    if-nez p2, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-object v0

    .line 198
    :cond_1
    instance-of v3, p2, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-eqz v3, :cond_3

    move-object v0, p2

    .line 199
    check-cast v0, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 223
    .local v0, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_2
    :goto_1
    instance-of v3, v0, Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 224
    check-cast v3, Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;

    invoke-interface {v3, p0}, Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;->resolve(Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    goto :goto_0

    .line 204
    .end local v0    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_3
    instance-of v3, p2, Ljava/lang/Class;

    if-nez v3, :cond_4

    .line 205
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AnnotationIntrospector returned deserializer definition of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; expected type JsonDeserializer or Class<JsonDeserializer> instead"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    move-object v1, p2

    .line 207
    check-cast v1, Ljava/lang/Class;

    .line 209
    .local v1, "deserClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Lcom/fasterxml/jackson/databind/JsonDeserializer$None;

    if-eq v1, v3, :cond_0

    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isBogusClass(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 212
    const-class v3, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 213
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AnnotationIntrospector returned Class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; expected Class<JsonDeserializer>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 215
    :cond_5
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getHandlerInstantiator()Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;

    move-result-object v2

    .line 216
    .local v2, "hi":Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
    if-nez v2, :cond_6

    .line 217
    .restart local v0    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :goto_2
    if-nez v0, :cond_2

    .line 218
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    check-cast v0, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .restart local v0    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    goto/16 :goto_1

    .line 216
    .end local v0    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_6
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v2, v3, p1, v1}, Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;->deserializerInstance(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    goto :goto_2
.end method

.method public findObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;
    .locals 1
    .param p1, "id"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 130
    .local p2, "gen":Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;"
    new-instance v0, Lcom/fasterxml/jackson/annotation/SimpleObjectIdResolver;

    invoke-direct {v0}, Lcom/fasterxml/jackson/annotation/SimpleObjectIdResolver;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->findObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/annotation/ObjectIdResolver;)Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;

    move-result-object v0

    return-object v0
.end method

.method public findObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/annotation/ObjectIdResolver;)Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;
    .locals 7
    .param p1, "id"    # Ljava/lang/Object;
    .param p3, "resolverType"    # Lcom/fasterxml/jackson/annotation/ObjectIdResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator",
            "<*>;",
            "Lcom/fasterxml/jackson/annotation/ObjectIdResolver;",
            ")",
            "Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;"
        }
    .end annotation

    .prologue
    .line 87
    .local p2, "gen":Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;"
    if-nez p1, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 124
    :goto_0
    return-object v0

    .line 91
    :cond_0
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;->key(Ljava/lang/Object;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;

    move-result-object v2

    .line 93
    .local v2, "key":Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_objectIds:Ljava/util/LinkedHashMap;

    if-nez v5, :cond_4

    .line 94
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v5, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_objectIds:Ljava/util/LinkedHashMap;

    .line 103
    :cond_1
    const/4 v4, 0x0

    .line 105
    .local v4, "resolver":Lcom/fasterxml/jackson/annotation/ObjectIdResolver;
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_objectIdResolvers:Ljava/util/List;

    if-nez v5, :cond_5

    .line 106
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0x8

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_objectIdResolvers:Ljava/util/List;

    .line 116
    :cond_2
    :goto_1
    if-nez v4, :cond_3

    .line 117
    invoke-interface {p3, p0}, Lcom/fasterxml/jackson/annotation/ObjectIdResolver;->newForDeserialization(Ljava/lang/Object;)Lcom/fasterxml/jackson/annotation/ObjectIdResolver;

    move-result-object v4

    .line 118
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_objectIdResolvers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_3
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;

    invoke-direct {v0, v2}, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;-><init>(Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;)V

    .line 122
    .local v0, "entry":Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;
    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->setResolver(Lcom/fasterxml/jackson/annotation/ObjectIdResolver;)V

    .line 123
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_objectIds:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 96
    .end local v0    # "entry":Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;
    .end local v4    # "resolver":Lcom/fasterxml/jackson/annotation/ObjectIdResolver;
    :cond_4
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_objectIds:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;

    .line 97
    .restart local v0    # "entry":Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;
    if-eqz v0, :cond_1

    goto :goto_0

    .line 108
    .end local v0    # "entry":Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;
    .restart local v4    # "resolver":Lcom/fasterxml/jackson/annotation/ObjectIdResolver;
    :cond_5
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_objectIdResolvers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/annotation/ObjectIdResolver;

    .line 109
    .local v3, "res":Lcom/fasterxml/jackson/annotation/ObjectIdResolver;
    invoke-interface {v3, p3}, Lcom/fasterxml/jackson/annotation/ObjectIdResolver;->canUseFor(Lcom/fasterxml/jackson/annotation/ObjectIdResolver;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 110
    move-object v4, v3

    .line 111
    goto :goto_1
.end method

.method public final keyDeserializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .locals 6
    .param p1, "ann"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p2, "deserDef"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 233
    if-nez p2, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-object v0

    .line 239
    :cond_1
    instance-of v3, p2, Lcom/fasterxml/jackson/databind/KeyDeserializer;

    if-eqz v3, :cond_3

    move-object v0, p2

    .line 240
    check-cast v0, Lcom/fasterxml/jackson/databind/KeyDeserializer;

    .line 264
    .local v0, "deser":Lcom/fasterxml/jackson/databind/KeyDeserializer;
    :cond_2
    :goto_1
    instance-of v3, v0, Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 265
    check-cast v3, Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;

    invoke-interface {v3, p0}, Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;->resolve(Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    goto :goto_0

    .line 242
    .end local v0    # "deser":Lcom/fasterxml/jackson/databind/KeyDeserializer;
    :cond_3
    instance-of v3, p2, Ljava/lang/Class;

    if-nez v3, :cond_4

    .line 243
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AnnotationIntrospector returned key deserializer definition of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; expected type KeyDeserializer or Class<KeyDeserializer> instead"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    move-object v1, p2

    .line 247
    check-cast v1, Ljava/lang/Class;

    .line 249
    .local v1, "deserClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Lcom/fasterxml/jackson/databind/KeyDeserializer$None;

    if-eq v1, v3, :cond_0

    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isBogusClass(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 252
    const-class v3, Lcom/fasterxml/jackson/databind/KeyDeserializer;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 253
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AnnotationIntrospector returned Class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; expected Class<KeyDeserializer>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 256
    :cond_5
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getHandlerInstantiator()Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;

    move-result-object v2

    .line 257
    .local v2, "hi":Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
    if-nez v2, :cond_6

    .line 258
    .restart local v0    # "deser":Lcom/fasterxml/jackson/databind/KeyDeserializer;
    :goto_2
    if-nez v0, :cond_2

    .line 259
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "deser":Lcom/fasterxml/jackson/databind/KeyDeserializer;
    check-cast v0, Lcom/fasterxml/jackson/databind/KeyDeserializer;

    .restart local v0    # "deser":Lcom/fasterxml/jackson/databind/KeyDeserializer;
    goto/16 :goto_1

    .line 257
    .end local v0    # "deser":Lcom/fasterxml/jackson/databind/KeyDeserializer;
    :cond_6
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v2, v3, p1, v1}, Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;->keyDeserializerInstance(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v0

    goto :goto_2
.end method

.method protected tryToResolveUnresolvedObjectId(Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;)Z
    .locals 1
    .param p1, "roid"    # Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;

    .prologue
    .line 179
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->tryToResolveUnresolved(Lcom/fasterxml/jackson/databind/DeserializationContext;)Z

    move-result v0

    return v0
.end method

.method public abstract with(Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
.end method
