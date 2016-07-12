.class public Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;
.super Ljava/lang/Object;
.source "POJOPropertiesCollector.java"


# instance fields
.field protected final _annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

.field protected _anyGetters:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            ">;"
        }
    .end annotation
.end field

.field protected _anySetters:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation
.end field

.field protected final _classDef:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

.field protected _collected:Z

.field protected final _config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;"
        }
    .end annotation
.end field

.field protected _creatorProperties:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;",
            ">;"
        }
    .end annotation
.end field

.field protected final _forSerialization:Z

.field protected _ignoredPropertyNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _injectables:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            ">;"
        }
    .end annotation
.end field

.field protected _jsonValueGetters:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation
.end field

.field protected final _mutatorPrefix:Ljava/lang/String;

.field protected _properties:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;",
            ">;"
        }
    .end annotation
.end field

.field protected final _stdBeanNaming:Z

.field protected final _type:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final _visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;ZLcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Ljava/lang/String;)V
    .locals 2
    .param p2, "forSerialization"    # Z
    .param p3, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p4, "classDef"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .param p5, "mutatorPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;Z",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    .line 116
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_STD_BEAN_NAMING:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_stdBeanNaming:Z

    .line 117
    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_forSerialization:Z

    .line 118
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    .line 119
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_classDef:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .line 120
    if-nez p5, :cond_0

    const-string p5, "set"

    .end local p5    # "mutatorPrefix":Ljava/lang/String;
    :cond_0
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_mutatorPrefix:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isAnnotationProcessingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .line 123
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getDefaultVisibilityChecker()Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    .line 129
    :goto_1
    return-void

    .line 121
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getDefaultVisibilityChecker()Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findAutoDetectVisibility(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    goto :goto_1
.end method

.method private _collectIgnorals(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 708
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_forSerialization:Z

    if-nez v0, :cond_1

    .line 709
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_ignoredPropertyNames:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 710
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_ignoredPropertyNames:Ljava/util/HashSet;

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_ignoredPropertyNames:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 714
    :cond_1
    return-void
.end method

.method private _findNamingStrategy()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
    .locals 7

    .prologue
    .line 994
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v4, :cond_0

    const/4 v2, 0x0

    .line 996
    .local v2, "namingDef":Ljava/lang/Object;
    :goto_0
    if-nez v2, :cond_1

    .line 997
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getPropertyNamingStrategy()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    move-result-object v2

    .line 1021
    .end local v2    # "namingDef":Ljava/lang/Object;
    :goto_1
    return-object v2

    .line 994
    :cond_0
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_classDef:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNamingStrategy(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 999
    .restart local v2    # "namingDef":Ljava/lang/Object;
    :cond_1
    instance-of v4, v2, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    if-eqz v4, :cond_2

    .line 1000
    check-cast v2, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    goto :goto_1

    .line 1005
    :cond_2
    instance-of v4, v2, Ljava/lang/Class;

    if-nez v4, :cond_3

    .line 1006
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AnnotationIntrospector returned PropertyNamingStrategy definition of type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; expected type PropertyNamingStrategy or Class<PropertyNamingStrategy> instead"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    move-object v1, v2

    .line 1009
    check-cast v1, Ljava/lang/Class;

    .line 1010
    .local v1, "namingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1011
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AnnotationIntrospector returned Class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; expected Class<PropertyNamingStrategy>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1014
    :cond_4
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getHandlerInstantiator()Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;

    move-result-object v0

    .line 1015
    .local v0, "hi":Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
    if-eqz v0, :cond_5

    .line 1016
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_classDef:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    invoke-virtual {v0, v4, v5, v1}, Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;->namingStrategyInstance(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    move-result-object v3

    .line 1017
    .local v3, "pns":Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
    if-eqz v3, :cond_5

    move-object v2, v3

    .line 1018
    goto :goto_1

    .line 1021
    .end local v3    # "pns":Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
    :cond_5
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    move-result v4

    invoke-static {v1, v4}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    move-object v2, v4

    goto/16 :goto_1
.end method

.method private _propNameFromSimple(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 1
    .param p1, "simpleName"    # Ljava/lang/String;

    .prologue
    .line 643
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected _addCreatorParam(Ljava/util/Map;Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;)V
    .locals 8
    .param p2, "param"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;",
            ">;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 436
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findImplicitPropertyName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/String;

    move-result-object v6

    .line 437
    .local v6, "impl":Ljava/lang/String;
    if-nez v6, :cond_0

    .line 438
    const-string v6, ""

    .line 440
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNameForDeserialization(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v2

    .line 441
    .local v2, "pn":Lcom/fasterxml/jackson/databind/PropertyName;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/PropertyName;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    move v3, v4

    .line 442
    .local v3, "expl":Z
    :goto_0
    if-nez v3, :cond_4

    .line 443
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 468
    :cond_1
    :goto_1
    return-void

    .end local v3    # "expl":Z
    :cond_2
    move v3, v5

    .line 441
    goto :goto_0

    .line 451
    .restart local v3    # "expl":Z
    :cond_3
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getOwner()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasCreatorAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 454
    invoke-static {v6}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v2

    .line 464
    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_property(Ljava/util/Map;Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    move-result-object v0

    .local v0, "prop":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    :goto_2
    move-object v1, p2

    .line 466
    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->addCtor(Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/databind/PropertyName;ZZZ)V

    .line 467
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 464
    .end local v0    # "prop":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    :cond_5
    invoke-virtual {p0, p1, v6}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_property(Ljava/util/Map;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    move-result-object v0

    goto :goto_2
.end method

.method protected _addCreators(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 409
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;"
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-eqz v5, :cond_5

    .line 410
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_classDef:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getConstructors()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    .line 411
    .local v0, "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    if-nez v5, :cond_1

    .line 412
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    .line 414
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getParameterCount()I

    move-result v4

    .local v4, "len":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 415
    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_addCreatorParam(Ljava/util/Map;Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;)V

    .line 414
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 418
    .end local v0    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .end local v2    # "i":I
    .end local v4    # "len":I
    :cond_2
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_classDef:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getStaticMethods()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 419
    .local v1, "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    if-nez v5, :cond_4

    .line 420
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    .line 422
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "i":I
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v4

    .restart local v4    # "len":I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 423
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_addCreatorParam(Ljava/util/Map;Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;)V

    .line 422
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 427
    .end local v1    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "len":I
    :cond_5
    return-void
.end method

.method protected _addFields(Ljava/util/Map;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;"
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 342
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .line 347
    .local v6, "ai":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_forSerialization:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    sget-object v13, Lcom/fasterxml/jackson/databind/MapperFeature;->ALLOW_FINAL_FIELDS_AS_MUTATORS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v0, v13}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    if-nez v0, :cond_6

    move v9, v11

    .line 348
    .local v9, "pruneFinalFields":Z
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    sget-object v13, Lcom/fasterxml/jackson/databind/MapperFeature;->PROPAGATE_TRANSIENT_MARKER:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v0, v13}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v10

    .line 350
    .local v10, "transientAsIgnoral":Z
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_classDef:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->fields()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    .line 351
    .local v1, "f":Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
    if-nez v6, :cond_7

    const/4 v8, 0x0

    .line 352
    .local v8, "implName":Ljava/lang/String;
    :goto_2
    if-nez v8, :cond_1

    .line 353
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->getName()Ljava/lang/String;

    move-result-object v8

    .line 358
    :cond_1
    if-nez v6, :cond_8

    .line 359
    const/4 v2, 0x0

    .line 370
    .local v2, "pn":Lcom/fasterxml/jackson/databind/PropertyName;
    :goto_3
    if-eqz v2, :cond_a

    move v3, v11

    .line 372
    .local v3, "nameExplicit":Z
    :goto_4
    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/PropertyName;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 373
    invoke-direct {p0, v8}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_propNameFromSimple(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v2

    .line 374
    const/4 v3, 0x0

    .line 377
    :cond_2
    if-eqz v2, :cond_b

    move v4, v11

    .line 378
    .local v4, "visible":Z
    :goto_5
    if-nez v4, :cond_3

    .line 379
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->isFieldVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;)Z

    move-result v4

    .line 382
    :cond_3
    if-eqz v6, :cond_c

    invoke-virtual {v6, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v5, v11

    .line 385
    .local v5, "ignored":Z
    :goto_6
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->isTransient()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 386
    const/4 v4, 0x0

    .line 387
    if-eqz v10, :cond_4

    .line 388
    const/4 v5, 0x1

    .line 396
    :cond_4
    if-eqz v9, :cond_5

    if-nez v2, :cond_5

    if-nez v5, :cond_5

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    :cond_5
    invoke-virtual {p0, p1, v8}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_property(Ljava/util/Map;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->addField(Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;Lcom/fasterxml/jackson/databind/PropertyName;ZZZ)V

    goto :goto_1

    .end local v1    # "f":Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
    .end local v2    # "pn":Lcom/fasterxml/jackson/databind/PropertyName;
    .end local v3    # "nameExplicit":Z
    .end local v4    # "visible":Z
    .end local v5    # "ignored":Z
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "implName":Ljava/lang/String;
    .end local v9    # "pruneFinalFields":Z
    .end local v10    # "transientAsIgnoral":Z
    :cond_6
    move v9, v12

    .line 347
    goto :goto_0

    .line 351
    .restart local v1    # "f":Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v9    # "pruneFinalFields":Z
    .restart local v10    # "transientAsIgnoral":Z
    :cond_7
    invoke-virtual {v6, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findImplicitPropertyName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 360
    .restart local v8    # "implName":Ljava/lang/String;
    :cond_8
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_forSerialization:Z

    if-eqz v0, :cond_9

    .line 366
    invoke-virtual {v6, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNameForSerialization(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v2

    .restart local v2    # "pn":Lcom/fasterxml/jackson/databind/PropertyName;
    goto :goto_3

    .line 368
    .end local v2    # "pn":Lcom/fasterxml/jackson/databind/PropertyName;
    :cond_9
    invoke-virtual {v6, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNameForDeserialization(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v2

    .restart local v2    # "pn":Lcom/fasterxml/jackson/databind/PropertyName;
    goto :goto_3

    :cond_a
    move v3, v12

    .line 370
    goto :goto_4

    .restart local v3    # "nameExplicit":Z
    :cond_b
    move v4, v12

    .line 377
    goto :goto_5

    .restart local v4    # "visible":Z
    :cond_c
    move v5, v12

    .line 382
    goto :goto_6

    .line 401
    .end local v1    # "f":Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
    .end local v2    # "pn":Lcom/fasterxml/jackson/databind/PropertyName;
    .end local v3    # "nameExplicit":Z
    .end local v4    # "visible":Z
    .end local v8    # "implName":Ljava/lang/String;
    :cond_d
    return-void
.end method

.method protected _addGetterMethod(Ljava/util/Map;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)V
    .locals 7
    .param p2, "m"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .param p3, "ai"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;",
            ">;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 503
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->hasReturnType()Z

    move-result v0

    if-nez v0, :cond_1

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 508
    :cond_1
    if-eqz p3, :cond_5

    .line 509
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasAnyGetterAnnotation(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 510
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;

    if-nez v0, :cond_2

    .line 511
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;

    .line 513
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 517
    :cond_3
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasAsValueAnnotation(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 518
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_jsonValueGetters:Ljava/util/LinkedList;

    if-nez v0, :cond_4

    .line 519
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_jsonValueGetters:Ljava/util/LinkedList;

    .line 521
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_jsonValueGetters:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 528
    :cond_5
    if-nez p3, :cond_7

    move-object v2, v6

    .line 529
    .local v2, "pn":Lcom/fasterxml/jackson/databind/PropertyName;
    :goto_1
    if-eqz v2, :cond_8

    const/4 v3, 0x1

    .line 531
    .local v3, "nameExplicit":Z
    :goto_2
    if-nez v3, :cond_b

    .line 532
    if-nez p3, :cond_9

    .line 533
    .local v6, "implName":Ljava/lang/String;
    :goto_3
    if-nez v6, :cond_6

    .line 534
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_stdBeanNaming:Z

    invoke-static {p2, v0, v1}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->okNameForRegularGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 536
    :cond_6
    if-nez v6, :cond_a

    .line 537
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_stdBeanNaming:Z

    invoke-static {p2, v0, v1}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->okNameForIsGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 538
    if-eqz v6, :cond_0

    .line 541
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    invoke-interface {v0, p2}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->isIsGetterVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z

    move-result v4

    .line 562
    .local v4, "visible":Z
    :goto_4
    if-nez p3, :cond_10

    .line 563
    .local v5, "ignore":Z
    :goto_5
    invoke-virtual {p0, p1, v6}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_property(Ljava/util/Map;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    move-result-object v0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->addGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/PropertyName;ZZZ)V

    goto :goto_0

    .line 528
    .end local v2    # "pn":Lcom/fasterxml/jackson/databind/PropertyName;
    .end local v3    # "nameExplicit":Z
    .end local v4    # "visible":Z
    .end local v5    # "ignore":Z
    .end local v6    # "implName":Ljava/lang/String;
    :cond_7
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNameForSerialization(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v2

    goto :goto_1

    .restart local v2    # "pn":Lcom/fasterxml/jackson/databind/PropertyName;
    :cond_8
    move v3, v5

    .line 529
    goto :goto_2

    .line 532
    .restart local v3    # "nameExplicit":Z
    :cond_9
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findImplicitPropertyName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 543
    .restart local v6    # "implName":Ljava/lang/String;
    :cond_a
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    invoke-interface {v0, p2}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->isGetterVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z

    move-result v4

    .restart local v4    # "visible":Z
    goto :goto_4

    .line 547
    .end local v4    # "visible":Z
    .end local v6    # "implName":Ljava/lang/String;
    :cond_b
    if-nez p3, :cond_f

    .line 548
    .restart local v6    # "implName":Ljava/lang/String;
    :goto_6
    if-nez v6, :cond_c

    .line 549
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_stdBeanNaming:Z

    invoke-static {p2, v0}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->okNameForGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Z)Ljava/lang/String;

    move-result-object v6

    .line 552
    :cond_c
    if-nez v6, :cond_d

    .line 553
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v6

    .line 555
    :cond_d
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/PropertyName;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 557
    invoke-direct {p0, v6}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_propNameFromSimple(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v2

    .line 558
    const/4 v3, 0x0

    .line 560
    :cond_e
    const/4 v4, 0x1

    .restart local v4    # "visible":Z
    goto :goto_4

    .line 547
    .end local v4    # "visible":Z
    .end local v6    # "implName":Ljava/lang/String;
    :cond_f
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findImplicitPropertyName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 562
    .restart local v4    # "visible":Z
    .restart local v6    # "implName":Ljava/lang/String;
    :cond_10
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v5

    goto :goto_5
.end method

.method protected _addInjectables(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 605
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .line 606
    .local v0, "ai":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    if-nez v0, :cond_1

    .line 624
    :cond_0
    return-void

    .line 611
    :cond_1
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_classDef:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->fields()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    .line 612
    .local v1, "f":Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findInjectableValueId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_doAddInjectable(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)V

    goto :goto_0

    .line 615
    .end local v1    # "f":Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
    :cond_2
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_classDef:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->memberMethods()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 619
    .local v3, "m":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 622
    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findInjectableValueId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_doAddInjectable(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)V

    goto :goto_1
.end method

.method protected _addMethods(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 475
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .line 477
    .local v0, "ai":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_classDef:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->memberMethods()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 483
    .local v3, "m":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v1

    .line 484
    .local v1, "argCount":I
    if-nez v1, :cond_1

    .line 485
    invoke-virtual {p0, p1, v3, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_addGetterMethod(Ljava/util/Map;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)V

    goto :goto_0

    .line 486
    :cond_1
    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    .line 487
    invoke-virtual {p0, p1, v3, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_addSetterMethod(Ljava/util/Map;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)V

    goto :goto_0

    .line 488
    :cond_2
    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 489
    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasAnySetterAnnotation(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 490
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;

    if-nez v4, :cond_3

    .line 491
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;

    .line 493
    :cond_3
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 497
    .end local v1    # "argCount":I
    .end local v3    # "m":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    :cond_4
    return-void
.end method

.method protected _addSetterMethod(Ljava/util/Map;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)V
    .locals 7
    .param p2, "m"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .param p3, "ai"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;",
            ">;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 571
    if-nez p3, :cond_1

    move-object v2, v6

    .line 572
    .local v2, "pn":Lcom/fasterxml/jackson/databind/PropertyName;
    :goto_0
    if-eqz v2, :cond_2

    const/4 v3, 0x1

    .line 573
    .local v3, "nameExplicit":Z
    :goto_1
    if-nez v3, :cond_5

    .line 574
    if-nez p3, :cond_3

    .line 575
    .local v6, "implName":Ljava/lang/String;
    :goto_2
    if-nez v6, :cond_0

    .line 576
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_mutatorPrefix:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_stdBeanNaming:Z

    invoke-static {p2, v0, v1}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->okNameForMutator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 578
    :cond_0
    if-nez v6, :cond_4

    .line 601
    :goto_3
    return-void

    .line 571
    .end local v2    # "pn":Lcom/fasterxml/jackson/databind/PropertyName;
    .end local v3    # "nameExplicit":Z
    .end local v6    # "implName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNameForDeserialization(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v2

    goto :goto_0

    .restart local v2    # "pn":Lcom/fasterxml/jackson/databind/PropertyName;
    :cond_2
    move v3, v5

    .line 572
    goto :goto_1

    .line 574
    .restart local v3    # "nameExplicit":Z
    :cond_3
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findImplicitPropertyName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 581
    .restart local v6    # "implName":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    invoke-interface {v0, p2}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->isSetterVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z

    move-result v4

    .line 599
    .local v4, "visible":Z
    :goto_4
    if-nez p3, :cond_a

    .line 600
    .local v5, "ignore":Z
    :goto_5
    invoke-virtual {p0, p1, v6}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_property(Ljava/util/Map;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    move-result-object v0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->addSetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/PropertyName;ZZZ)V

    goto :goto_3

    .line 584
    .end local v4    # "visible":Z
    .end local v5    # "ignore":Z
    .end local v6    # "implName":Ljava/lang/String;
    :cond_5
    if-nez p3, :cond_9

    .line 585
    .restart local v6    # "implName":Ljava/lang/String;
    :goto_6
    if-nez v6, :cond_6

    .line 586
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_mutatorPrefix:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_stdBeanNaming:Z

    invoke-static {p2, v0, v1}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->okNameForMutator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 589
    :cond_6
    if-nez v6, :cond_7

    .line 590
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v6

    .line 592
    :cond_7
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/PropertyName;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 594
    invoke-direct {p0, v6}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_propNameFromSimple(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v2

    .line 595
    const/4 v3, 0x0

    .line 597
    :cond_8
    const/4 v4, 0x1

    .restart local v4    # "visible":Z
    goto :goto_4

    .line 584
    .end local v4    # "visible":Z
    .end local v6    # "implName":Ljava/lang/String;
    :cond_9
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findImplicitPropertyName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 599
    .restart local v4    # "visible":Z
    .restart local v6    # "implName":Ljava/lang/String;
    :cond_a
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v5

    goto :goto_5
.end method

.method protected _doAddInjectable(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "m"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .prologue
    .line 628
    if-nez p1, :cond_1

    .line 640
    :cond_0
    return-void

    .line 631
    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_injectables:Ljava/util/LinkedHashMap;

    if-nez v2, :cond_2

    .line 632
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_injectables:Ljava/util/LinkedHashMap;

    .line 634
    :cond_2
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_injectables:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 635
    .local v0, "prev":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    if-eqz v0, :cond_0

    .line 636
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 637
    .local v1, "type":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duplicate injectable value with id \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' (of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected _property(Ljava/util/Map;Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    .locals 1
    .param p2, "name"    # Lcom/fasterxml/jackson/databind/PropertyName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;",
            ">;",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;"
        }
    .end annotation

    .prologue
    .line 976
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;"
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_property(Ljava/util/Map;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected _property(Ljava/util/Map;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    .locals 4
    .param p2, "implName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;"
        }
    .end annotation

    .prologue
    .line 983
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 984
    .local v0, "prop":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    if-nez v0, :cond_0

    .line 985
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .end local v0    # "prop":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-boolean v3, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_forSerialization:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Z)V

    .line 987
    .restart local v0    # "prop":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    :cond_0
    return-object v0
.end method

.method protected _removeUnwantedAccessor(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 692
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;"
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    sget-object v4, Lcom/fasterxml/jackson/databind/MapperFeature;->INFER_PROPERTY_MUTATORS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    .line 693
    .local v0, "inferMutators":Z
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 695
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 696
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 697
    .local v2, "prop":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->removeNonVisible(Z)V

    goto :goto_0

    .line 699
    .end local v2    # "prop":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    :cond_0
    return-void
.end method

.method protected _removeUnwantedProperties(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 658
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;"
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 660
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 661
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 664
    .local v1, "prop":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->anyVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 665
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 669
    :cond_1
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->anyIgnorals()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 671
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->isExplicitlyIncluded()Z

    move-result v2

    if-nez v2, :cond_2

    .line 672
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 673
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_collectIgnorals(Ljava/lang/String;)V

    goto :goto_0

    .line 677
    :cond_2
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->removeIgnored()V

    .line 678
    iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_forSerialization:Z

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->couldDeserialize()Z

    move-result v2

    if-nez v2, :cond_0

    .line 679
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_collectIgnorals(Ljava/lang/String;)V

    goto :goto_0

    .line 683
    .end local v1    # "prop":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    :cond_3
    return-void
.end method

.method protected _renameProperties(Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 725
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 726
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;>;"
    const/4 v8, 0x0

    .line 727
    .local v8, "renamed":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 728
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 729
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 731
    .local v7, "prop":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->findExplicitNames()Ljava/util/Set;

    move-result-object v3

    .line 734
    .local v3, "l":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/PropertyName;>;"
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 737
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 738
    if-nez v8, :cond_1

    .line 739
    new-instance v8, Ljava/util/LinkedList;

    .end local v8    # "renamed":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;"
    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 742
    .restart local v8    # "renamed":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 743
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/PropertyName;

    .line 744
    .local v4, "n":Lcom/fasterxml/jackson/databind/PropertyName;
    invoke-virtual {v7, v4}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->withName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 748
    .end local v4    # "n":Lcom/fasterxml/jackson/databind/PropertyName;
    :cond_2
    invoke-virtual {v7, v3}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->explode(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 764
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;"
    .end local v3    # "l":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/PropertyName;>;"
    .end local v7    # "prop":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    :cond_3
    if-eqz v8, :cond_5

    .line 765
    invoke-virtual {v8}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 766
    .restart local v7    # "prop":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v5

    .line 767
    .local v5, "name":Ljava/lang/String;
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 768
    .local v6, "old":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    if-nez v6, :cond_4

    .line 769
    invoke-interface {p1, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    :goto_2
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    invoke-virtual {p0, v7, v9}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_updateCreatorProperty(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;Ljava/util/List;)V

    goto :goto_1

    .line 771
    :cond_4
    invoke-virtual {v6, v7}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->addAll(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;)V

    goto :goto_2

    .line 777
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "old":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    .end local v7    # "prop":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    :cond_5
    return-void
.end method

.method protected _renameUsing(Ljava/util/Map;Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)V
    .locals 12
    .param p2, "naming"    # Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;",
            ">;",
            "Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 782
    .local p1, "propMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;"
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v10

    new-array v10, v10, [Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    invoke-interface {v9, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 783
    .local v6, "props":[Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 784
    move-object v0, v6

    .local v0, "arr$":[Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_8

    aget-object v5, v0, v2

    .line 785
    .local v5, "prop":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getFullName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v1

    .line 786
    .local v1, "fullName":Lcom/fasterxml/jackson/databind/PropertyName;
    const/4 v7, 0x0

    .line 789
    .local v7, "rename":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->isExplicitlyNamed()Z

    move-result v9

    if-nez v9, :cond_0

    .line 790
    iget-boolean v9, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_forSerialization:Z

    if-eqz v9, :cond_2

    .line 791
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->hasGetter()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 792
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getGetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v10

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p2, v9, v10, v11}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->nameForGetterMethod(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 812
    :cond_0
    :goto_1
    if-eqz v7, :cond_6

    invoke-virtual {v1, v7}, Lcom/fasterxml/jackson/databind/PropertyName;->hasSimpleName(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 813
    invoke-virtual {v5, v7}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->withSimpleName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    move-result-object v5

    .line 814
    move-object v8, v7

    .line 821
    .local v8, "simpleName":Ljava/lang/String;
    :goto_2
    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 822
    .local v4, "old":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    if-nez v4, :cond_7

    .line 823
    invoke-interface {p1, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    :goto_3
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    invoke-virtual {p0, v5, v9}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_updateCreatorProperty(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;Ljava/util/List;)V

    .line 784
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 793
    .end local v4    # "old":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    .end local v8    # "simpleName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->hasField()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 794
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getField()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    move-result-object v10

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p2, v9, v10, v11}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->nameForField(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 797
    :cond_2
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->hasSetter()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 798
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getSetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v10

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p2, v9, v10, v11}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->nameForSetterMethod(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 799
    :cond_3
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->hasConstructorParameter()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 800
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getConstructorParameter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v10

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p2, v9, v10, v11}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->nameForConstructorParameter(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 801
    :cond_4
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->hasField()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 802
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getField()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    move-result-object v10

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p2, v9, v10, v11}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->nameForField(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 803
    :cond_5
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->hasGetter()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 807
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getGetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v10

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p2, v9, v10, v11}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->nameForGetterMethod(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 816
    :cond_6
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "simpleName":Ljava/lang/String;
    goto/16 :goto_2

    .line 825
    .restart local v4    # "old":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    :cond_7
    invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->addAll(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;)V

    goto :goto_3

    .line 830
    .end local v1    # "fullName":Lcom/fasterxml/jackson/databind/PropertyName;
    .end local v4    # "old":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    .end local v5    # "prop":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    .end local v7    # "rename":Ljava/lang/String;
    .end local v8    # "simpleName":Ljava/lang/String;
    :cond_8
    return-void
.end method

.method protected _renameWithWrappers(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 837
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 838
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;>;"
    const/4 v7, 0x0

    .line 839
    .local v7, "renamed":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 840
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 841
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 842
    .local v6, "prop":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getPrimaryMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v3

    .line 843
    .local v3, "member":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    if-eqz v3, :cond_0

    .line 846
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v9, v3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findWrapperName(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v8

    .line 850
    .local v8, "wrapperName":Lcom/fasterxml/jackson/databind/PropertyName;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/PropertyName;->hasSimpleName()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 853
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getFullName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/fasterxml/jackson/databind/PropertyName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 854
    if-nez v7, :cond_1

    .line 855
    new-instance v7, Ljava/util/LinkedList;

    .end local v7    # "renamed":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;"
    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 857
    .restart local v7    # "renamed":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;"
    :cond_1
    invoke-virtual {v6, v8}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->withName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    move-result-object v6

    .line 858
    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 859
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 863
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;"
    .end local v3    # "member":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .end local v6    # "prop":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    .end local v8    # "wrapperName":Lcom/fasterxml/jackson/databind/PropertyName;
    :cond_2
    if-eqz v7, :cond_4

    .line 864
    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 865
    .restart local v6    # "prop":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v4

    .line 866
    .local v4, "name":Ljava/lang/String;
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 867
    .local v5, "old":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    if-nez v5, :cond_3

    .line 868
    invoke-interface {p1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 870
    :cond_3
    invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->addAll(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;)V

    goto :goto_1

    .line 874
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "old":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    .end local v6    # "prop":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    :cond_4
    return-void
.end method

.method protected _sortProperties(Ljava/util/Map;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 888
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;"
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .line 890
    .local v7, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    if-nez v7, :cond_0

    const/4 v2, 0x0

    .line 892
    .local v2, "alpha":Ljava/lang/Boolean;
    :goto_0
    if-nez v2, :cond_1

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->shouldSortPropertiesAlphabetically()Z

    move-result v14

    .line 897
    .local v14, "sort":Z
    :goto_1
    if-nez v7, :cond_2

    const/4 v12, 0x0

    .line 900
    .local v12, "propertyOrder":[Ljava/lang/String;
    :goto_2
    if-nez v14, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    if-nez v17, :cond_3

    if-nez v12, :cond_3

    .line 962
    :goto_3
    return-void

    .line 890
    .end local v2    # "alpha":Ljava/lang/Boolean;
    .end local v12    # "propertyOrder":[Ljava/lang/String;
    .end local v14    # "sort":Z
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_classDef:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationSortAlphabetically(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 895
    .restart local v2    # "alpha":Ljava/lang/Boolean;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    .restart local v14    # "sort":Z
    goto :goto_1

    .line 897
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_classDef:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationPropertyOrder(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)[Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    .line 903
    .restart local v12    # "propertyOrder":[Ljava/lang/String;
    :cond_3
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v13

    .line 906
    .local v13, "size":I
    if-eqz v14, :cond_4

    .line 907
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 912
    .local v1, "all":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;"
    :goto_4
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 913
    .local v11, "prop":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v1, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 909
    .end local v1    # "all":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v11    # "prop":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    :cond_4
    new-instance v1, Ljava/util/LinkedHashMap;

    add-int v17, v13, v13

    move/from16 v0, v17

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .restart local v1    # "all":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;"
    goto :goto_4

    .line 915
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_5
    new-instance v10, Ljava/util/LinkedHashMap;

    add-int v17, v13, v13

    move/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 917
    .local v10, "ordered":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;"
    if-eqz v12, :cond_9

    .line 918
    move-object v3, v12

    .local v3, "arr$":[Ljava/lang/String;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    move v6, v5

    .end local v5    # "i$":I
    .local v6, "i$":I
    :goto_6
    if-ge v6, v8, :cond_9

    aget-object v9, v3, v6

    .line 919
    .local v9, "name":Ljava/lang/String;
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 920
    .local v16, "w":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    if-nez v16, :cond_7

    .line 921
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v6    # "i$":I
    .local v5, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 922
    .restart local v11    # "prop":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getInternalName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 923
    move-object/from16 v16, v11

    .line 925
    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v9

    .line 930
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v11    # "prop":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    :cond_7
    if-eqz v16, :cond_8

    .line 931
    move-object/from16 v0, v16

    invoke-interface {v10, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    :cond_8
    add-int/lit8 v5, v6, 0x1

    .local v5, "i$":I
    move v6, v5

    .end local v5    # "i$":I
    .restart local v6    # "i$":I
    goto :goto_6

    .line 936
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v16    # "w":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    .line 943
    if-eqz v14, :cond_b

    .line 944
    new-instance v15, Ljava/util/TreeMap;

    invoke-direct {v15}, Ljava/util/TreeMap;-><init>()V

    .line 946
    .local v15, "sorted":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 947
    .restart local v11    # "prop":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 949
    .end local v11    # "prop":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    :cond_a
    invoke-virtual {v15}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 953
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v15    # "sorted":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;"
    .local v4, "cr":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;"
    :goto_8
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 954
    .restart local v11    # "prop":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v10, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 951
    .end local v4    # "cr":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v11    # "prop":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    .restart local v4    # "cr":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;"
    goto :goto_8

    .line 958
    .end local v4    # "cr":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;"
    :cond_c
    invoke-interface {v10, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 960
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->clear()V

    .line 961
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/16 :goto_3
.end method

.method protected _updateCreatorProperty(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;Ljava/util/List;)V
    .locals 4
    .param p1, "prop"    # Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1026
    .local p2, "creatorProperties":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;"
    if-eqz p2, :cond_0

    .line 1027
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1028
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getInternalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getInternalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1029
    invoke-interface {p2, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1034
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_0
    return-void

    .line 1027
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public collect()Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 270
    return-object p0
.end method

.method protected collectAll()V
    .locals 6

    .prologue
    .line 280
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 283
    .local v3, "props":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;"
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_addFields(Ljava/util/Map;)V

    .line 284
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_addMethods(Ljava/util/Map;)V

    .line 285
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_addCreators(Ljava/util/Map;)V

    .line 286
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_addInjectables(Ljava/util/Map;)V

    .line 290
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_removeUnwantedProperties(Ljava/util/Map;)V

    .line 293
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 294
    .local v2, "property":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    iget-boolean v4, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_forSerialization:Z

    invoke-virtual {v2, v4}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->mergeAnnotations(Z)V

    goto :goto_0

    .line 298
    .end local v2    # "property":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    :cond_0
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_removeUnwantedAccessor(Ljava/util/Map;)V

    .line 301
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_renameProperties(Ljava/util/Map;)V

    .line 304
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_findNamingStrategy()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    move-result-object v1

    .line 305
    .local v1, "naming":Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
    if-eqz v1, :cond_1

    .line 306
    invoke-virtual {p0, v3, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_renameUsing(Ljava/util/Map;Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)V

    .line 313
    :cond_1
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 314
    .restart local v2    # "property":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->trimByVisibility()V

    goto :goto_1

    .line 320
    .end local v2    # "property":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    :cond_2
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    sget-object v5, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_WRAPPER_NAME_AS_PROPERTY_NAME:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 321
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_renameWithWrappers(Ljava/util/Map;)V

    .line 325
    :cond_3
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_sortProperties(Ljava/util/Map;)V

    .line 326
    iput-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    .line 328
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_collected:Z

    .line 329
    return-void
.end method

.method public findPOJOBuilderClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_classDef:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPOJOBuilder(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    return-object v0
.end method

.method public getAnyGetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 185
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_collected:Z

    if-nez v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->collectAll()V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v3, :cond_1

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multiple \'any-getters\' defined ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " vs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->reportProblem(Ljava/lang/String;)V

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 195
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnySetterMethod()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 200
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_collected:Z

    if-nez v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->collectAll()V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v3, :cond_1

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multiple \'any-setters\' defined ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " vs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->reportProblem(Ljava/lang/String;)V

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 210
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClassDef()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_classDef:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    return-object v0
.end method

.method public getConfig()Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    return-object v0
.end method

.method public getIgnoredPropertyNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_ignoredPropertyNames:Ljava/util/HashSet;

    return-object v0
.end method

.method public getInjectables()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_collected:Z

    if-nez v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->collectAll()V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_injectables:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getJsonValueMethod()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 168
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_collected:Z

    if-nez v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->collectAll()V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_jsonValueGetters:Ljava/util/LinkedList;

    if-eqz v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_jsonValueGetters:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v3, :cond_1

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multiple value properties defined ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_jsonValueGetters:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " vs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_jsonValueGetters:Ljava/util/LinkedList;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->reportProblem(Ljava/lang/String;)V

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_jsonValueGetters:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 180
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getObjectIdInfo()Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
    .locals 3

    .prologue
    .line 227
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v1, :cond_1

    .line 228
    const/4 v0, 0x0

    .line 234
    :cond_0
    :goto_0
    return-object v0

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_classDef:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findObjectIdInfo(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    move-result-object v0

    .line 231
    .local v0, "info":Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
    if-eqz v0, :cond_0

    .line 232
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_classDef:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    invoke-virtual {v1, v2, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findObjectReferenceInfo(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getProperties()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->getPropertyMap()Ljava/util/Map;

    move-result-object v0

    .line 156
    .local v0, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method protected getPropertyMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_collected:Z

    if-nez v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->collectAll()V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method

.method protected reportProblem(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 971
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem with definition of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_classDef:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
