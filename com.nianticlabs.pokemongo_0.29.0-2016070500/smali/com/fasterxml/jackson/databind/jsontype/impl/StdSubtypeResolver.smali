.class public Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;
.super Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;
.source "StdSubtypeResolver.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _registeredSubtypes:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;-><init>()V

    return-void
.end method


# virtual methods
.method protected _collectAndResolve(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Ljava/util/HashMap;)V
    .locals 12
    .param p1, "annotatedType"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .param p2, "namedType"    # Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    .param p4, "ai"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p3, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    .local p5, "collectedSubtypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->hasName()Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    move-object/from16 v0, p4

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findTypeName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object v8

    .line 223
    .local v8, "name":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 224
    new-instance v9, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v9, v1, v8}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .end local p2    # "namedType":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    .local v9, "namedType":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    move-object p2, v9

    .line 229
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "namedType":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    .restart local p2    # "namedType":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    :cond_0
    move-object/from16 v0, p5

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 231
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->hasName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    move-object/from16 v0, p5

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    .line 233
    .local v10, "prev":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->hasName()Z

    move-result v1

    if-nez v1, :cond_1

    .line 234
    move-object/from16 v0, p5

    invoke-virtual {v0, p2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .end local v10    # "prev":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    :cond_1
    return-void

    .line 240
    :cond_2
    move-object/from16 v0, p5

    invoke-virtual {v0, p2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    move-object/from16 v0, p4

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSubtypes(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/util/List;

    move-result-object v11

    .line 242
    .local v11, "st":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    if-eqz v11, :cond_1

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 243
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    .line 244
    .local v3, "subtype":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-static {v1, v0, p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v2

    .local v2, "subtypeClass":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    move-object v1, p0

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 245
    invoke-virtual/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_collectAndResolve(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method protected _collectAndResolveByTypeId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/util/Set;Ljava/util/Map;)V
    .locals 12
    .param p1, "annotatedType"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .param p2, "namedType"    # Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p3, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    .local p4, "typesHandled":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .local p5, "byName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v7

    .line 259
    .local v7, "ai":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->hasName()Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    invoke-virtual {v7, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findTypeName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object v9

    .line 261
    .local v9, "name":Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 262
    new-instance v10, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v10, v1, v9}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .end local p2    # "namedType":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    .local v10, "namedType":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    move-object p2, v10

    .line 265
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "namedType":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    .restart local p2    # "namedType":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->hasName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 271
    invoke-virtual {v7, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSubtypes(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/util/List;

    move-result-object v11

    .line 272
    .local v11, "st":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    if-eqz v11, :cond_2

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 273
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    .line 274
    .local v3, "subtype":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v7, p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v2

    .local v2, "subtypeClass":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    move-object v1, p0

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 275
    invoke-virtual/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_collectAndResolveByTypeId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/util/Set;Ljava/util/Map;)V

    goto :goto_0

    .line 279
    .end local v2    # "subtypeClass":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .end local v3    # "subtype":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "st":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    :cond_2
    return-void
.end method

.method protected _combineNamedAndUnnamed(Ljava/util/Set;Ljava/util/Map;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 288
    .local p1, "typesHandled":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .local p2, "byName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 293
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    .line 294
    .local v3, "t":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 296
    .end local v3    # "t":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 297
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v4, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    invoke-direct {v4, v0}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 299
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    return-object v2
.end method

.method public collectAndResolveSubtypes(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Ljava/util/Collection;
    .locals 1
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .param p3, "ai"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 204
    .local p2, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->collectAndResolveSubtypesByClass(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public collectAndResolveSubtypes(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/util/Collection;
    .locals 1
    .param p1, "property"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .param p3, "ai"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .param p4, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 196
    .local p2, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    invoke-virtual {p0, p2, p1, p4}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->collectAndResolveSubtypesByClass(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public collectAndResolveSubtypesByClass(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/util/Collection;
    .locals 14
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v4

    .line 99
    .local v4, "ai":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 101
    .local v5, "subtypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getRawType()Ljava/lang/Class;

    move-result-object v13

    .line 103
    .local v13, "rawBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    .line 105
    .local v2, "subtype":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v4, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v1

    .local v1, "curr":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    move-object v0, p0

    move-object v3, p1

    .line 107
    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_collectAndResolve(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Ljava/util/HashMap;)V

    goto :goto_0

    .line 112
    .end local v1    # "curr":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .end local v2    # "subtype":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "rawBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    new-instance v8, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v8, v0, v3}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .local v8, "rootType":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    move-object v6, p0

    move-object/from16 v7, p2

    move-object v9, p1

    move-object v10, v4

    move-object v11, v5

    .line 113
    invoke-virtual/range {v6 .. v11}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_collectAndResolve(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Ljava/util/HashMap;)V

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public collectAndResolveSubtypesByClass(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/util/Collection;
    .locals 20
    .param p2, "property"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .param p3, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v6

    .line 62
    .local v6, "ai":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    if-nez p3, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getRawType()Ljava/lang/Class;

    move-result-object v18

    .line 64
    .local v18, "rawBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 66
    .local v7, "collected":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;

    if-eqz v2, :cond_2

    .line 67
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    .line 69
    .local v4, "subtype":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v6, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v3

    .local v3, "curr":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    move-object/from16 v2, p0

    move-object/from16 v5, p1

    .line 71
    invoke-virtual/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_collectAndResolve(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Ljava/util/HashMap;)V

    goto :goto_1

    .line 62
    .end local v3    # "curr":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .end local v4    # "subtype":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    .end local v7    # "collected":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v18    # "rawBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v18

    goto :goto_0

    .line 77
    .restart local v7    # "collected":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    .restart local v18    # "rawBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSubtypes(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/util/List;

    move-result-object v19

    .line 78
    .local v19, "st":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    if-eqz v19, :cond_3

    .line 79
    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .restart local v17    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    .line 80
    .local v10, "nt":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v6, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v9

    .local v9, "ac":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    move-object/from16 v8, p0

    move-object/from16 v11, p1

    move-object v12, v6

    move-object v13, v7

    .line 81
    invoke-virtual/range {v8 .. v13}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_collectAndResolve(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Ljava/util/HashMap;)V

    goto :goto_2

    .line 85
    .end local v9    # "ac":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .end local v10    # "nt":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    .end local v17    # "i$":Ljava/util/Iterator;
    :cond_3
    new-instance v13, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-direct {v13, v0, v2}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 86
    .local v13, "rootType":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v6, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v9

    .restart local v9    # "ac":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    move-object/from16 v11, p0

    move-object v12, v9

    move-object/from16 v14, p1

    move-object v15, v6

    move-object/from16 v16, v7

    .line 89
    invoke-virtual/range {v11 .. v16}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_collectAndResolve(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Ljava/util/HashMap;)V

    .line 91
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v2
.end method

.method public collectAndResolveSubtypesByTypeId(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/util/Collection;
    .locals 16
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 166
    .local v5, "typesHandled":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 168
    .local v6, "byName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    new-instance v3, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getRawType()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v3, v1, v2}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .local v3, "rootType":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p1

    .line 169
    invoke-virtual/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_collectAndResolveByTypeId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/util/Set;Ljava/util/Map;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;

    if-eqz v1, :cond_1

    .line 172
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getRawType()Ljava/lang/Class;

    move-result-object v15

    .line 173
    .local v15, "rawBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    .line 175
    .local v9, "subtype":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v13

    .line 177
    .local v13, "ai":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-static {v1, v13, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v8

    .local v8, "curr":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    move-object/from16 v7, p0

    move-object/from16 v10, p1

    move-object v11, v5

    move-object v12, v6

    .line 178
    invoke-virtual/range {v7 .. v12}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_collectAndResolveByTypeId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/util/Set;Ljava/util/Map;)V

    goto :goto_0

    .line 182
    .end local v8    # "curr":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .end local v9    # "subtype":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    .end local v13    # "ai":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "rawBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_combineNamedAndUnnamed(Ljava/util/Set;Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public collectAndResolveSubtypesByTypeId(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/util/Collection;
    .locals 22
    .param p2, "property"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .param p3, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v18

    .line 128
    .local v18, "ai":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    if-nez p3, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getRawType()Ljava/lang/Class;

    move-result-object v20

    .line 131
    .local v20, "rawBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 132
    .local v7, "typesHandled":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 135
    .local v8, "byName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    new-instance v5, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-direct {v5, v0, v3}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 136
    .local v5, "rootType":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v4

    .local v4, "ac":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    move-object/from16 v3, p0

    move-object/from16 v6, p1

    .line 137
    invoke-virtual/range {v3 .. v8}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_collectAndResolveByTypeId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/util/Set;Ljava/util/Map;)V

    .line 140
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSubtypes(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/util/List;

    move-result-object v21

    .line 141
    .local v21, "st":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    if-eqz v21, :cond_1

    .line 142
    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    .line 143
    .local v11, "nt":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v3, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v4

    move-object/from16 v9, p0

    move-object v10, v4

    move-object/from16 v12, p1

    move-object v13, v7

    move-object v14, v8

    .line 144
    invoke-virtual/range {v9 .. v14}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_collectAndResolveByTypeId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/util/Set;Ljava/util/Map;)V

    goto :goto_1

    .line 128
    .end local v4    # "ac":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .end local v5    # "rootType":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    .end local v7    # "typesHandled":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .end local v8    # "byName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    .end local v11    # "nt":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v20    # "rawBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v21    # "st":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v20

    goto :goto_0

    .line 149
    .restart local v4    # "ac":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .restart local v5    # "rootType":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    .restart local v7    # "typesHandled":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .restart local v8    # "byName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    .restart local v20    # "rawBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v21    # "st":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;

    if-eqz v3, :cond_3

    .line 150
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;

    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    .line 152
    .local v14, "subtype":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    invoke-virtual {v14}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 153
    invoke-virtual {v14}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v3, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v13

    .local v13, "curr":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    move-object/from16 v12, p0

    move-object/from16 v15, p1

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    .line 154
    invoke-virtual/range {v12 .. v17}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_collectAndResolveByTypeId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/util/Set;Ljava/util/Map;)V

    goto :goto_2

    .line 158
    .end local v13    # "curr":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .end local v14    # "subtype":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    .end local v19    # "i$":Ljava/util/Iterator;
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_combineNamedAndUnnamed(Ljava/util/Set;Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v3

    return-object v3
.end method

.method public varargs registerSubtypes([Lcom/fasterxml/jackson/databind/jsontype/NamedType;)V
    .locals 5
    .param p1, "types"    # [Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    .prologue
    .line 33
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;

    if-nez v4, :cond_0

    .line 34
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v4, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;

    .line 36
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 37
    .local v3, "type":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    .end local v3    # "type":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    :cond_1
    return-void
.end method

.method public varargs registerSubtypes([Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v3, p1

    new-array v2, v3, [Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    .line 44
    .local v2, "types":[Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 45
    new-instance v3, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    aget-object v4, p1, v0

    invoke-direct {v3, v4}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;-><init>(Ljava/lang/Class;)V

    aput-object v3, v2, v0

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->registerSubtypes([Lcom/fasterxml/jackson/databind/jsontype/NamedType;)V

    .line 48
    return-void
.end method
