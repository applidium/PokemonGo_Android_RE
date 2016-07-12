.class public abstract Lcom/fasterxml/jackson/databind/DatabindContext;
.super Ljava/lang/Object;
.source "DatabindContext.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final canOverrideAccessModifiers()Z
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DatabindContext;->getConfig()Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    move-result v0

    return v0
.end method

.method public constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 145
    .local p2, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 148
    .end local p1    # "baseType":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_0
    return-object p1

    .restart local p1    # "baseType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DatabindContext;->getConfig()Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    goto :goto_0
.end method

.method public constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DatabindContext;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public converterInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/Converter;
    .locals 7
    .param p1, "annotated"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p2, "converterDef"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/fasterxml/jackson/databind/util/Converter",
            "<",
            "Ljava/lang/Object;",
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
    const/4 v1, 0x0

    .line 198
    if-nez p2, :cond_0

    move-object p2, v1

    .line 224
    .end local p2    # "converterDef":Ljava/lang/Object;
    :goto_0
    return-object p2

    .line 201
    .restart local p2    # "converterDef":Ljava/lang/Object;
    :cond_0
    instance-of v4, p2, Lcom/fasterxml/jackson/databind/util/Converter;

    if-eqz v4, :cond_1

    .line 202
    check-cast p2, Lcom/fasterxml/jackson/databind/util/Converter;

    goto :goto_0

    .line 204
    :cond_1
    instance-of v4, p2, Ljava/lang/Class;

    if-nez v4, :cond_2

    .line 205
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AnnotationIntrospector returned Converter definition of type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; expected type Converter or Class<Converter> instead"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    move-object v2, p2

    .line 208
    check-cast v2, Ljava/lang/Class;

    .line 210
    .local v2, "converterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Lcom/fasterxml/jackson/databind/util/Converter$None;

    if-eq v2, v4, :cond_3

    invoke-static {v2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isBogusClass(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move-object p2, v1

    .line 211
    goto :goto_0

    .line 213
    :cond_4
    const-class v4, Lcom/fasterxml/jackson/databind/util/Converter;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 214
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AnnotationIntrospector returned Class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; expected Class<Converter>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 217
    :cond_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DatabindContext;->getConfig()Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    move-result-object v0

    .line 218
    .local v0, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getHandlerInstantiator()Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;

    move-result-object v3

    .line 219
    .local v3, "hi":Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
    if-nez v3, :cond_7

    .line 220
    .local v1, "conv":Lcom/fasterxml/jackson/databind/util/Converter;, "Lcom/fasterxml/jackson/databind/util/Converter<**>;"
    :goto_1
    if-nez v1, :cond_6

    .line 221
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    move-result v4

    invoke-static {v2, v4}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "conv":Lcom/fasterxml/jackson/databind/util/Converter;, "Lcom/fasterxml/jackson/databind/util/Converter<**>;"
    check-cast v1, Lcom/fasterxml/jackson/databind/util/Converter;

    .restart local v1    # "conv":Lcom/fasterxml/jackson/databind/util/Converter;, "Lcom/fasterxml/jackson/databind/util/Converter<**>;"
    :cond_6
    move-object p2, v1

    .line 224
    goto/16 :goto_0

    .line 219
    .end local v1    # "conv":Lcom/fasterxml/jackson/databind/util/Converter;, "Lcom/fasterxml/jackson/databind/util/Converter<**>;"
    :cond_7
    invoke-virtual {v3, v0, p1, v2}, Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;->converterInstance(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/util/Converter;

    move-result-object v1

    goto :goto_1
.end method

.method public abstract getActiveView()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
.end method

.method public abstract getAttribute(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getConfig()Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getLocale()Ljava/util/Locale;
.end method

.method public abstract getTimeZone()Ljava/util/TimeZone;
.end method

.method public abstract getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z
    .locals 1
    .param p1, "feature"    # Lcom/fasterxml/jackson/databind/MapperFeature;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DatabindContext;->getConfig()Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    return v0
.end method

.method public objectIdGeneratorInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
    .locals 5
    .param p1, "annotated"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p2, "objectIdInfo"    # Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;",
            ")",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getGeneratorType()Ljava/lang/Class;

    move-result-object v3

    .line 164
    .local v3, "implClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DatabindContext;->getConfig()Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    move-result-object v0

    .line 165
    .local v0, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getHandlerInstantiator()Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;

    move-result-object v2

    .line 166
    .local v2, "hi":Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
    if-nez v2, :cond_1

    const/4 v1, 0x0

    .line 167
    .local v1, "gen":Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;"
    :goto_0
    if-nez v1, :cond_0

    .line 168
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "gen":Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;"
    check-cast v1, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    .line 171
    .restart local v1    # "gen":Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;"
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getScope()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;->forScope(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    move-result-object v4

    return-object v4

    .line 166
    .end local v1    # "gen":Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;"
    :cond_1
    invoke-virtual {v2, v0, p1, v3}, Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;->objectIdGeneratorInstance(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    move-result-object v1

    goto :goto_0
.end method

.method public objectIdResolverInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/fasterxml/jackson/annotation/ObjectIdResolver;
    .locals 5
    .param p1, "annotated"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p2, "objectIdInfo"    # Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    .prologue
    .line 176
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getResolverType()Ljava/lang/Class;

    move-result-object v2

    .line 177
    .local v2, "implClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/annotation/ObjectIdResolver;>;"
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DatabindContext;->getConfig()Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    move-result-object v0

    .line 178
    .local v0, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getHandlerInstantiator()Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;

    move-result-object v1

    .line 179
    .local v1, "hi":Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
    if-nez v1, :cond_1

    const/4 v3, 0x0

    .line 180
    .local v3, "resolver":Lcom/fasterxml/jackson/annotation/ObjectIdResolver;
    :goto_0
    if-nez v3, :cond_0

    .line 181
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    move-result v4

    invoke-static {v2, v4}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "resolver":Lcom/fasterxml/jackson/annotation/ObjectIdResolver;
    check-cast v3, Lcom/fasterxml/jackson/annotation/ObjectIdResolver;

    .line 184
    .restart local v3    # "resolver":Lcom/fasterxml/jackson/annotation/ObjectIdResolver;
    :cond_0
    return-object v3

    .line 179
    .end local v3    # "resolver":Lcom/fasterxml/jackson/annotation/ObjectIdResolver;
    :cond_1
    invoke-virtual {v1, v0, p1, v2}, Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;->resolverIdGeneratorInstance(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/ObjectIdResolver;

    move-result-object v3

    goto :goto_0
.end method

.method public abstract setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/DatabindContext;
.end method
