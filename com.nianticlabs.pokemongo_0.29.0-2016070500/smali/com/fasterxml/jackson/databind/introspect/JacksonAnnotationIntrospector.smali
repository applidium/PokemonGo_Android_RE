.class public Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;
.super Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
.source "JacksonAnnotationIntrospector.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector$1;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;-><init>()V

    return-void
.end method

.method private final _findSortAlpha(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "ann"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 624
    const-class v1, Lcom/fasterxml/jackson/annotation/JsonPropertyOrder;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonPropertyOrder;

    .line 628
    .local v0, "order":Lcom/fasterxml/jackson/annotation/JsonPropertyOrder;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonPropertyOrder;->alphabetic()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 629
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 631
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected _classIfExplicit(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 954
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isBogusClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 955
    :cond_0
    const/4 p1, 0x0

    .line 957
    .end local p1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    return-object p1
.end method

.method protected _classIfExplicit(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 961
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "implicit":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_classIfExplicit(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 962
    if-eqz p1, :cond_0

    if-ne p1, p2, :cond_1

    :cond_0
    const/4 p1, 0x0

    .end local p1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    return-object p1
.end method

.method protected _constructNoTypeResolverBuilder()Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;
    .locals 1

    .prologue
    .line 1051
    invoke-static {}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;->noTypeInfoBuilder()Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected _constructStdTypeResolverBuilder()Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;
    .locals 1

    .prologue
    .line 1043
    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;-><init>()V

    return-object v0
.end method

.method protected _constructVirtualProperty(Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Attr;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .locals 7
    .param p1, "attr"    # Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Attr;
    .param p3, "ac"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .param p4, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Attr;",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;"
        }
    .end annotation

    .prologue
    .line 675
    .local p2, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Attr;->required()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v2, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_REQUIRED:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    .line 678
    .local v2, "metadata":Lcom/fasterxml/jackson/databind/PropertyMetadata;
    :goto_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Attr;->value()Ljava/lang/String;

    move-result-object v0

    .line 681
    .local v0, "attrName":Ljava/lang/String;
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Attr;->propName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Attr;->propNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_propertyName(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v4

    .line 682
    .local v4, "propName":Lcom/fasterxml/jackson/databind/PropertyName;
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/PropertyName;->hasSimpleName()Z

    move-result v5

    if-nez v5, :cond_0

    .line 683
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v4

    .line 686
    :cond_0
    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/VirtualAnnotatedMember;

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getRawType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v1, p3, v5, v0, v6}, Lcom/fasterxml/jackson/databind/introspect/VirtualAnnotatedMember;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 689
    .local v1, "member":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Attr;->include()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v5

    invoke-static {p2, v1, v4, v2, v5}, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->construct(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/PropertyMetadata;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;

    move-result-object v3

    .line 692
    .local v3, "propDef":Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;

    move-result-object v5

    invoke-static {v0, v3, v5, p4}, Lcom/fasterxml/jackson/databind/ser/impl/AttributePropertyWriter;->construct(Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ser/impl/AttributePropertyWriter;

    move-result-object v5

    return-object v5

    .line 675
    .end local v0    # "attrName":Ljava/lang/String;
    .end local v1    # "member":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .end local v2    # "metadata":Lcom/fasterxml/jackson/databind/PropertyMetadata;
    .end local v3    # "propDef":Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;
    .end local v4    # "propName":Lcom/fasterxml/jackson/databind/PropertyName;
    :cond_1
    sget-object v2, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    goto :goto_0
.end method

.method protected _constructVirtualProperty(Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Prop;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .locals 11
    .param p1, "prop"    # Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Prop;
    .param p3, "ac"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Prop;",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            ")",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;"
        }
    .end annotation

    .prologue
    .line 699
    .local p2, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Prop;->required()Z

    move-result v8

    if-eqz v8, :cond_1

    sget-object v4, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_REQUIRED:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    .line 701
    .local v4, "metadata":Lcom/fasterxml/jackson/databind/PropertyMetadata;
    :goto_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Prop;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Prop;->namespace()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_propertyName(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v6

    .line 702
    .local v6, "propName":Lcom/fasterxml/jackson/databind/PropertyName;
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Prop;->type()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {p2, v8}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v7

    .line 704
    .local v7, "type":Lcom/fasterxml/jackson/databind/JavaType;
    new-instance v3, Lcom/fasterxml/jackson/databind/introspect/VirtualAnnotatedMember;

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getRawType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v10

    invoke-direct {v3, p3, v8, v9, v10}, Lcom/fasterxml/jackson/databind/introspect/VirtualAnnotatedMember;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 707
    .local v3, "member":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Prop;->include()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v8

    invoke-static {p2, v3, v6, v4, v8}, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->construct(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/PropertyMetadata;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;

    move-result-object v5

    .line 710
    .local v5, "propDef":Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Prop;->value()Ljava/lang/Class;

    move-result-object v2

    .line 712
    .local v2, "implClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getHandlerInstantiator()Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;

    move-result-object v1

    .line 713
    .local v1, "hi":Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
    if-nez v1, :cond_2

    const/4 v0, 0x0

    .line 715
    .local v0, "bpw":Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;
    :goto_1
    if-nez v0, :cond_0

    .line 716
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    move-result v8

    invoke-static {v2, v8}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bpw":Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;
    check-cast v0, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;

    .line 721
    .restart local v0    # "bpw":Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;
    :cond_0
    invoke-virtual {v0, p2, p3, v5, v7}, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;->withConfig(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;

    move-result-object v8

    return-object v8

    .line 699
    .end local v0    # "bpw":Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;
    .end local v1    # "hi":Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
    .end local v2    # "implClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "member":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .end local v4    # "metadata":Lcom/fasterxml/jackson/databind/PropertyMetadata;
    .end local v5    # "propDef":Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;
    .end local v6    # "propName":Lcom/fasterxml/jackson/databind/PropertyName;
    .end local v7    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_1
    sget-object v4, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    goto :goto_0

    .line 713
    .restart local v1    # "hi":Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
    .restart local v2    # "implClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "member":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .restart local v4    # "metadata":Lcom/fasterxml/jackson/databind/PropertyMetadata;
    .restart local v5    # "propDef":Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;
    .restart local v6    # "propName":Lcom/fasterxml/jackson/databind/PropertyName;
    .restart local v7    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_2
    invoke-virtual {v1, p2, v2}, Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;->virtualPropertyWriterInstance(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;

    move-result-object v0

    goto :goto_1
.end method

.method protected final _findFilterId(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 3
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 165
    const-class v2, Lcom/fasterxml/jackson/annotation/JsonFilter;

    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonFilter;

    .line 166
    .local v0, "ann":Lcom/fasterxml/jackson/annotation/JsonFilter;
    if-eqz v0, :cond_0

    .line 167
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonFilter;->value()Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 173
    .end local v1    # "id":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected _findTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
    .locals 10
    .param p2, "ann"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p3, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    const/4 v7, 0x0

    .line 985
    const-class v8, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;

    invoke-virtual {p0, p2, v8}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;

    .line 986
    .local v5, "info":Lcom/fasterxml/jackson/annotation/JsonTypeInfo;
    const-class v8, Lcom/fasterxml/jackson/databind/annotation/JsonTypeResolver;

    invoke-virtual {p0, p2, v8}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/fasterxml/jackson/databind/annotation/JsonTypeResolver;

    .line 988
    .local v6, "resAnn":Lcom/fasterxml/jackson/databind/annotation/JsonTypeResolver;
    if-eqz v6, :cond_4

    .line 989
    if-nez v5, :cond_0

    move-object v0, v7

    .line 1035
    :goto_0
    return-object v0

    .line 996
    :cond_0
    invoke-interface {v6}, Lcom/fasterxml/jackson/databind/annotation/JsonTypeResolver;->value()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {p1, p2, v8}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->typeResolverBuilderInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 1008
    .local v0, "b":Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;, "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<*>;"
    :goto_1
    const-class v8, Lcom/fasterxml/jackson/databind/annotation/JsonTypeIdResolver;

    invoke-virtual {p0, p2, v8}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/annotation/JsonTypeIdResolver;

    .line 1009
    .local v3, "idResInfo":Lcom/fasterxml/jackson/databind/annotation/JsonTypeIdResolver;
    if-nez v3, :cond_7

    move-object v2, v7

    .line 1011
    .local v2, "idRes":Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;
    :goto_2
    if-eqz v2, :cond_1

    .line 1012
    invoke-interface {v2, p3}, Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;->init(Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 1014
    :cond_1
    invoke-interface {v5}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;->use()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    move-result-object v7

    invoke-interface {v0, v7, v2}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->init(Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 1019
    invoke-interface {v5}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;->include()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    move-result-object v4

    .line 1020
    .local v4, "inclusion":Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
    sget-object v7, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->EXTERNAL_PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    if-ne v4, v7, :cond_2

    instance-of v7, p2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    if-eqz v7, :cond_2

    .line 1021
    sget-object v4, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    .line 1023
    :cond_2
    invoke-interface {v0, v4}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->inclusion(Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 1024
    invoke-interface {v5}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;->property()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->typeProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 1025
    invoke-interface {v5}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;->defaultImpl()Ljava/lang/Class;

    move-result-object v1

    .line 1031
    .local v1, "defaultImpl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v7, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$None;

    if-eq v1, v7, :cond_3

    invoke-virtual {v1}, Ljava/lang/Class;->isAnnotation()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1032
    invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->defaultImpl(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 1034
    :cond_3
    invoke-interface {v5}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;->visible()Z

    move-result v7

    invoke-interface {v0, v7}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->typeIdVisibility(Z)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 1035
    goto :goto_0

    .line 998
    .end local v0    # "b":Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;, "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<*>;"
    .end local v1    # "defaultImpl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "idRes":Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;
    .end local v3    # "idResInfo":Lcom/fasterxml/jackson/databind/annotation/JsonTypeIdResolver;
    .end local v4    # "inclusion":Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
    :cond_4
    if-nez v5, :cond_5

    move-object v0, v7

    .line 999
    goto :goto_0

    .line 1002
    :cond_5
    invoke-interface {v5}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;->use()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    move-result-object v8

    sget-object v9, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->NONE:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    if-ne v8, v9, :cond_6

    .line 1003
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_constructNoTypeResolverBuilder()Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;

    move-result-object v0

    goto :goto_0

    .line 1005
    :cond_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_constructStdTypeResolverBuilder()Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;

    move-result-object v0

    .restart local v0    # "b":Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;, "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<*>;"
    goto :goto_1

    .line 1009
    .restart local v3    # "idResInfo":Lcom/fasterxml/jackson/databind/annotation/JsonTypeIdResolver;
    :cond_7
    invoke-interface {v3}, Lcom/fasterxml/jackson/databind/annotation/JsonTypeIdResolver;->value()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p1, p2, v7}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->typeIdResolverInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;

    move-result-object v2

    goto :goto_2
.end method

.method protected _isIgnorable(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Z
    .locals 2
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 949
    const-class v1, Lcom/fasterxml/jackson/annotation/JsonIgnore;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonIgnore;

    .line 950
    .local v0, "ann":Lcom/fasterxml/jackson/annotation/JsonIgnore;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonIgnore;->value()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected _propertyName(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 1
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;

    .prologue
    .line 966
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 967
    sget-object v0, Lcom/fasterxml/jackson/databind/PropertyName;->USE_DEFAULT:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 972
    :goto_0
    return-object v0

    .line 969
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 970
    :cond_1
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    goto :goto_0

    .line 972
    :cond_2
    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    goto :goto_0
.end method

.method public findAndAddVirtualProperties(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Ljava/util/List;)V
    .locals 9
    .param p2, "ac"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 637
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    .local p3, "properties":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;>;"
    const-class v8, Lcom/fasterxml/jackson/databind/annotation/JsonAppend;

    invoke-virtual {p0, p2, v8}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonAppend;

    .line 638
    .local v0, "ann":Lcom/fasterxml/jackson/databind/annotation/JsonAppend;
    if-nez v0, :cond_1

    .line 670
    :cond_0
    return-void

    .line 641
    :cond_1
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonAppend;->prepend()Z

    move-result v5

    .line 642
    .local v5, "prepend":Z
    const/4 v6, 0x0

    .line 645
    .local v6, "propType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonAppend;->attrs()[Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Attr;

    move-result-object v1

    .line 646
    .local v1, "attrs":[Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Attr;
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, v1

    .local v4, "len":I
    :goto_0
    if-ge v3, v4, :cond_4

    .line 647
    if-nez v6, :cond_2

    .line 648
    const-class v8, Ljava/lang/Object;

    invoke-virtual {p1, v8}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v6

    .line 650
    :cond_2
    aget-object v8, v1, v3

    invoke-virtual {p0, v8, p1, p2, v6}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_constructVirtualProperty(Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Attr;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-result-object v2

    .line 652
    .local v2, "bpw":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    if-eqz v5, :cond_3

    .line 653
    invoke-interface {p3, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 646
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 655
    :cond_3
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 660
    .end local v2    # "bpw":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :cond_4
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonAppend;->props()[Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Prop;

    move-result-object v7

    .line 661
    .local v7, "props":[Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Prop;
    const/4 v3, 0x0

    array-length v4, v7

    :goto_2
    if-ge v3, v4, :cond_0

    .line 662
    aget-object v8, v7, v3

    invoke-virtual {p0, v8, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_constructVirtualProperty(Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Prop;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-result-object v2

    .line 664
    .restart local v2    # "bpw":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    if-eqz v5, :cond_5

    .line 665
    invoke-interface {p3, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 661
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 667
    :cond_5
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public findAutoDetectVisibility(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .locals 2
    .param p1, "ac"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 193
    .local p2, "checker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    const-class v1, Lcom/fasterxml/jackson/annotation/JsonAutoDetect;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonAutoDetect;

    .line 194
    .local v0, "ann":Lcom/fasterxml/jackson/annotation/JsonAutoDetect;
    if-nez v0, :cond_0

    .end local p2    # "checker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    :goto_0
    return-object p2

    .restart local p2    # "checker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    :cond_0
    invoke-interface {p2, v0}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->with(Lcom/fasterxml/jackson/annotation/JsonAutoDetect;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    move-result-object p2

    goto :goto_0
.end method

.method public findContentDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 3
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 796
    const-class v2, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    .line 797
    .local v0, "ann":Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
    if-eqz v0, :cond_0

    .line 799
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;->contentUsing()Ljava/lang/Class;

    move-result-object v1

    .line 800
    .local v1, "deserClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/databind/JsonDeserializer;>;"
    const-class v2, Lcom/fasterxml/jackson/databind/JsonDeserializer$None;

    if-eq v1, v2, :cond_0

    .line 804
    .end local v1    # "deserClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/databind/JsonDeserializer;>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findContentSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 3
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 466
    const-class v2, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    .line 467
    .local v0, "ann":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
    if-eqz v0, :cond_0

    .line 469
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->contentUsing()Ljava/lang/Class;

    move-result-object v1

    .line 470
    .local v1, "serClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/databind/JsonSerializer;>;"
    const-class v2, Lcom/fasterxml/jackson/databind/JsonSerializer$None;

    if-eq v1, v2, :cond_0

    .line 474
    .end local v1    # "serClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/databind/JsonSerializer;>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findCreatorBinding(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;
    .locals 2
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 937
    const-class v1, Lcom/fasterxml/jackson/annotation/JsonCreator;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonCreator;

    .line 938
    .local v0, "ann":Lcom/fasterxml/jackson/annotation/JsonCreator;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonCreator;->mode()Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    move-result-object v1

    goto :goto_0
.end method

.method public findDeserializationContentConverter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
    .locals 3
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .prologue
    .line 836
    const-class v1, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    .line 837
    .local v0, "ann":Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;->contentConverter()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/fasterxml/jackson/databind/util/Converter$None;

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_classIfExplicit(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method public findDeserializationContentType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .locals 2
    .param p1, "am"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p2, "baseContentType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 822
    const-class v1, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    .line 823
    .local v0, "ann":Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;->contentAs()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_classIfExplicit(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method public findDeserializationConverter(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 3
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 829
    const-class v1, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    .line 830
    .local v0, "ann":Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;->converter()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/fasterxml/jackson/databind/util/Converter$None;

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_classIfExplicit(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method public findDeserializationKeyType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .locals 2
    .param p1, "am"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p2, "baseKeyType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 815
    const-class v1, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    .line 816
    .local v0, "ann":Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;->keyAs()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_classIfExplicit(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method public findDeserializationType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .locals 2
    .param p1, "am"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p2, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 809
    const-class v1, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    .line 810
    .local v0, "ann":Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;->as()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_classIfExplicit(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method public findDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 3
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 769
    const-class v2, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    .line 770
    .local v0, "ann":Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
    if-eqz v0, :cond_0

    .line 772
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;->using()Ljava/lang/Class;

    move-result-object v1

    .line 773
    .local v1, "deserClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/databind/JsonDeserializer;>;"
    const-class v2, Lcom/fasterxml/jackson/databind/JsonDeserializer$None;

    if-eq v1, v2, :cond_0

    .line 777
    .end local v1    # "deserClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/databind/JsonDeserializer;>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "value":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 74
    .local v0, "f":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 75
    const-class v3, Lcom/fasterxml/jackson/annotation/JsonProperty;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/annotation/JsonProperty;

    .line 76
    .local v2, "prop":Lcom/fasterxml/jackson/annotation/JsonProperty;
    if-eqz v2, :cond_0

    .line 77
    invoke-interface {v2}, Lcom/fasterxml/jackson/annotation/JsonProperty;->value()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "n":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 88
    .end local v0    # "f":Ljava/lang/reflect/Field;
    .end local v1    # "n":Ljava/lang/String;
    .end local v2    # "prop":Lcom/fasterxml/jackson/annotation/JsonProperty;
    :goto_0
    return-object v1

    .line 85
    :catch_0
    move-exception v3

    .line 88
    :cond_0
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 83
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public findFilterId(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findFilterId(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public findFilterId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Object;
    .locals 1
    .param p1, "ac"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findFilterId(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public findFormat(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 2
    .param p1, "ann"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 265
    const-class v1, Lcom/fasterxml/jackson/annotation/JsonFormat;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonFormat;

    .line 266
    .local v0, "f":Lcom/fasterxml/jackson/annotation/JsonFormat;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    invoke-direct {v1, v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Lcom/fasterxml/jackson/annotation/JsonFormat;)V

    goto :goto_0
.end method

.method public findIgnoreUnknownProperties(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "ac"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .prologue
    .line 139
    const-class v1, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;

    .line 140
    .local v0, "ignore":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;->ignoreUnknown()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public findImplicitPropertyName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/String;
    .locals 1
    .param p1, "param"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .prologue
    .line 207
    const/4 v0, 0x0

    return-object v0
.end method

.method public findInjectableValueId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
    .locals 4
    .param p1, "m"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .prologue
    .line 300
    const-class v3, Lcom/fasterxml/jackson/annotation/JacksonInject;

    invoke-virtual {p0, p1, v3}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/annotation/JacksonInject;

    .line 301
    .local v1, "ann":Lcom/fasterxml/jackson/annotation/JacksonInject;
    if-nez v1, :cond_1

    .line 302
    const/4 v2, 0x0

    .line 319
    :cond_0
    :goto_0
    return-object v2

    .line 307
    :cond_1
    invoke-interface {v1}, Lcom/fasterxml/jackson/annotation/JacksonInject;->value()Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, "id":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 310
    instance-of v3, p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-nez v3, :cond_2

    .line 311
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getRawType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 313
    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 314
    .local v0, "am":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v3

    if-nez v3, :cond_3

    .line 315
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getRawType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 317
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawParameterType(I)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public findKeyDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 3
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 783
    const-class v2, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    .line 784
    .local v0, "ann":Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
    if-eqz v0, :cond_0

    .line 785
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;->keyUsing()Ljava/lang/Class;

    move-result-object v1

    .line 786
    .local v1, "deserClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/databind/KeyDeserializer;>;"
    const-class v2, Lcom/fasterxml/jackson/databind/KeyDeserializer$None;

    if-eq v1, v2, :cond_0

    .line 790
    .end local v1    # "deserClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/databind/KeyDeserializer;>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findKeySerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 3
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 452
    const-class v2, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    .line 453
    .local v0, "ann":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
    if-eqz v0, :cond_0

    .line 455
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->keyUsing()Ljava/lang/Class;

    move-result-object v1

    .line 456
    .local v1, "serClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/databind/JsonSerializer;>;"
    const-class v2, Lcom/fasterxml/jackson/databind/JsonSerializer$None;

    if-eq v1, v2, :cond_0

    .line 460
    .end local v1    # "serClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/databind/JsonSerializer;>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findNameForDeserialization(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 4
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 881
    const-class v3, Lcom/fasterxml/jackson/annotation/JsonSetter;

    invoke-virtual {p0, p1, v3}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonSetter;

    .line 882
    .local v0, "js":Lcom/fasterxml/jackson/annotation/JsonSetter;
    if-eqz v0, :cond_0

    .line 883
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonSetter;->value()Ljava/lang/String;

    move-result-object v1

    .line 902
    .local v1, "name":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v3

    .end local v1    # "name":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 885
    :cond_0
    const-class v3, Lcom/fasterxml/jackson/annotation/JsonProperty;

    invoke-virtual {p0, p1, v3}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/annotation/JsonProperty;

    .line 886
    .local v2, "pann":Lcom/fasterxml/jackson/annotation/JsonProperty;
    if-eqz v2, :cond_1

    .line 887
    invoke-interface {v2}, Lcom/fasterxml/jackson/annotation/JsonProperty;->value()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "name":Ljava/lang/String;
    goto :goto_0

    .line 892
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    const-class v3, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    invoke-virtual {p0, p1, v3}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_hasAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2

    const-class v3, Lcom/fasterxml/jackson/annotation/JsonView;

    invoke-virtual {p0, p1, v3}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_hasAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2

    const-class v3, Lcom/fasterxml/jackson/annotation/JsonUnwrapped;

    invoke-virtual {p0, p1, v3}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_hasAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2

    const-class v3, Lcom/fasterxml/jackson/annotation/JsonBackReference;

    invoke-virtual {p0, p1, v3}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_hasAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2

    const-class v3, Lcom/fasterxml/jackson/annotation/JsonManagedReference;

    invoke-virtual {p0, p1, v3}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_hasAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 897
    :cond_2
    const-string v1, ""

    .restart local v1    # "name":Ljava/lang/String;
    goto :goto_0

    .line 899
    .end local v1    # "name":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public findNameForSerialization(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 4
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 733
    const/4 v1, 0x0

    .line 735
    .local v1, "name":Ljava/lang/String;
    const-class v3, Lcom/fasterxml/jackson/annotation/JsonGetter;

    invoke-virtual {p0, p1, v3}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonGetter;

    .line 736
    .local v0, "jg":Lcom/fasterxml/jackson/annotation/JsonGetter;
    if-eqz v0, :cond_0

    .line 737
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonGetter;->value()Ljava/lang/String;

    move-result-object v1

    .line 750
    :goto_0
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v3

    :goto_1
    return-object v3

    .line 739
    :cond_0
    const-class v3, Lcom/fasterxml/jackson/annotation/JsonProperty;

    invoke-virtual {p0, p1, v3}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/annotation/JsonProperty;

    .line 740
    .local v2, "pann":Lcom/fasterxml/jackson/annotation/JsonProperty;
    if-eqz v2, :cond_1

    .line 741
    invoke-interface {v2}, Lcom/fasterxml/jackson/annotation/JsonProperty;->value()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 742
    :cond_1
    const-class v3, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    invoke-virtual {p0, p1, v3}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_hasAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2

    const-class v3, Lcom/fasterxml/jackson/annotation/JsonView;

    invoke-virtual {p0, p1, v3}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_hasAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2

    const-class v3, Lcom/fasterxml/jackson/annotation/JsonRawValue;

    invoke-virtual {p0, p1, v3}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_hasAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 745
    :cond_2
    const-string v1, ""

    goto :goto_0

    .line 747
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public findNamingStrategy(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Object;
    .locals 2
    .param p1, "ac"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .prologue
    .line 179
    const-class v1, Lcom/fasterxml/jackson/databind/annotation/JsonNaming;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonNaming;

    .line 180
    .local v0, "ann":Lcom/fasterxml/jackson/databind/annotation/JsonNaming;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonNaming;->value()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method public findNullSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 3
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 480
    const-class v2, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    .line 481
    .local v0, "ann":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
    if-eqz v0, :cond_0

    .line 483
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->nullsUsing()Ljava/lang/Class;

    move-result-object v1

    .line 484
    .local v1, "serClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/databind/JsonSerializer;>;"
    const-class v2, Lcom/fasterxml/jackson/databind/JsonSerializer$None;

    if-eq v1, v2, :cond_0

    .line 488
    .end local v1    # "serClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/databind/JsonSerializer;>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findObjectIdInfo(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
    .locals 6
    .param p1, "ann"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 400
    const-class v2, Lcom/fasterxml/jackson/annotation/JsonIdentityInfo;

    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonIdentityInfo;

    .line 401
    .local v0, "info":Lcom/fasterxml/jackson/annotation/JsonIdentityInfo;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonIdentityInfo;->generator()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$None;

    if-ne v2, v3, :cond_1

    .line 402
    :cond_0
    const/4 v2, 0x0

    .line 406
    :goto_0
    return-object v2

    .line 405
    :cond_1
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonIdentityInfo;->property()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v1

    .line 406
    .local v1, "name":Lcom/fasterxml/jackson/databind/PropertyName;
    new-instance v2, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonIdentityInfo;->scope()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonIdentityInfo;->generator()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonIdentityInfo;->resolver()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public findObjectReferenceInfo(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
    .locals 2
    .param p1, "ann"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p2, "objectIdInfo"    # Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    .prologue
    .line 411
    const-class v1, Lcom/fasterxml/jackson/annotation/JsonIdentityReference;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonIdentityReference;

    .line 412
    .local v0, "ref":Lcom/fasterxml/jackson/annotation/JsonIdentityReference;
    if-eqz v0, :cond_0

    .line 413
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonIdentityReference;->alwaysAsId()Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->withAlwaysAsId(Z)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    move-result-object p2

    .line 415
    :cond_0
    return-object p2
.end method

.method public findPOJOBuilder(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Class;
    .locals 2
    .param p1, "ac"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 857
    const-class v1, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    .line 858
    .local v0, "ann":Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;->builder()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_classIfExplicit(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method public findPOJOBuilderConfig(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;
    .locals 2
    .param p1, "ac"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .prologue
    .line 864
    const-class v1, Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder;

    .line 865
    .local v0, "ann":Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;

    invoke-direct {v1, v0}, Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;-><init>(Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder;)V

    goto :goto_0
.end method

.method public findPropertiesToIgnore(Lcom/fasterxml/jackson/databind/introspect/Annotated;)[Ljava/lang/String;
    .locals 2
    .param p1, "ac"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 114
    const-class v1, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;

    .line 115
    .local v0, "ignore":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;->value()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public findPropertiesToIgnore(Lcom/fasterxml/jackson/databind/introspect/Annotated;Z)[Ljava/lang/String;
    .locals 3
    .param p1, "ac"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p2, "forSerialization"    # Z

    .prologue
    const/4 v1, 0x0

    .line 120
    const-class v2, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;

    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;

    .line 121
    .local v0, "ignore":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    if-nez v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-object v1

    .line 125
    :cond_1
    if-eqz p2, :cond_3

    .line 126
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;->allowGetters()Z

    move-result v2

    if-nez v2, :cond_0

    .line 134
    :cond_2
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;->value()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 130
    :cond_3
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;->allowSetters()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method public findPropertyAccess(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonProperty$Access;
    .locals 2
    .param p1, "m"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 227
    const-class v1, Lcom/fasterxml/jackson/annotation/JsonProperty;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonProperty;

    .line 228
    .local v0, "ann":Lcom/fasterxml/jackson/annotation/JsonProperty;
    if-eqz v0, :cond_0

    .line 229
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonProperty;->access()Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

    move-result-object v1

    .line 231
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findPropertyContentTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
    .locals 3
    .param p2, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .param p3, "containerType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 361
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must call method with a container type (got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v0

    return-object v0
.end method

.method public findPropertyDefaultValue(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/String;
    .locals 4
    .param p1, "ann"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    const/4 v2, 0x0

    .line 254
    const-class v3, Lcom/fasterxml/jackson/annotation/JsonProperty;

    invoke-virtual {p0, p1, v3}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonProperty;

    .line 255
    .local v0, "prop":Lcom/fasterxml/jackson/annotation/JsonProperty;
    if-nez v0, :cond_0

    .line 260
    :goto_0
    return-object v2

    .line 258
    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonProperty;->defaultValue()Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    .end local v1    # "str":Ljava/lang/String;
    :cond_1
    move-object v2, v1

    goto :goto_0
.end method

.method public findPropertyDescription(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/String;
    .locals 2
    .param p1, "ann"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 236
    const-class v1, Lcom/fasterxml/jackson/annotation/JsonPropertyDescription;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonPropertyDescription;

    .line 237
    .local v0, "desc":Lcom/fasterxml/jackson/annotation/JsonPropertyDescription;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonPropertyDescription;->value()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public findPropertyInclusion(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 7
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 538
    const-class v5, Lcom/fasterxml/jackson/annotation/JsonInclude;

    invoke-virtual {p0, p1, v5}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/annotation/JsonInclude;

    .line 539
    .local v3, "inc":Lcom/fasterxml/jackson/annotation/JsonInclude;
    if-nez v3, :cond_1

    sget-object v4, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 540
    .local v4, "valueIncl":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    :goto_0
    sget-object v5, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-ne v4, v5, :cond_0

    .line 541
    const-class v5, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    invoke-virtual {p0, p1, v5}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    .line 542
    .local v0, "ann":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
    if-eqz v0, :cond_0

    .line 543
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->include()Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;

    move-result-object v2

    .line 544
    .local v2, "i2":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;
    sget-object v5, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector$1;->$SwitchMap$com$fasterxml$jackson$databind$annotation$JsonSerialize$Inclusion:[I

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 562
    .end local v0    # "ann":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
    .end local v2    # "i2":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;
    :cond_0
    :goto_1
    if-nez v3, :cond_2

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 563
    .local v1, "contentIncl":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    :goto_2
    invoke-static {v4, v1}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->construct(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v5

    return-object v5

    .line 539
    .end local v1    # "contentIncl":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .end local v4    # "valueIncl":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    :cond_1
    invoke-interface {v3}, Lcom/fasterxml/jackson/annotation/JsonInclude;->value()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v4

    goto :goto_0

    .line 546
    .restart local v0    # "ann":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
    .restart local v2    # "i2":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;
    .restart local v4    # "valueIncl":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    :pswitch_0
    sget-object v4, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->ALWAYS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 547
    goto :goto_1

    .line 549
    :pswitch_1
    sget-object v4, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 550
    goto :goto_1

    .line 552
    :pswitch_2
    sget-object v4, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_DEFAULT:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 553
    goto :goto_1

    .line 555
    :pswitch_3
    sget-object v4, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 556
    goto :goto_1

    .line 562
    .end local v0    # "ann":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
    .end local v2    # "i2":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;
    :cond_2
    invoke-interface {v3}, Lcom/fasterxml/jackson/annotation/JsonInclude;->content()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v1

    goto :goto_2

    .line 544
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public findPropertyIndex(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Integer;
    .locals 3
    .param p1, "ann"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 242
    const-class v2, Lcom/fasterxml/jackson/annotation/JsonProperty;

    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/annotation/JsonProperty;

    .line 243
    .local v1, "prop":Lcom/fasterxml/jackson/annotation/JsonProperty;
    if-eqz v1, :cond_0

    .line 244
    invoke-interface {v1}, Lcom/fasterxml/jackson/annotation/JsonProperty;->index()I

    move-result v0

    .line 245
    .local v0, "ix":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 246
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 249
    .end local v0    # "ix":I
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public findPropertyTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
    .locals 1
    .param p2, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .param p3, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 349
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 351
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method public findReferenceType(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;
    .locals 3
    .param p1, "member"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .prologue
    .line 272
    const-class v2, Lcom/fasterxml/jackson/annotation/JsonManagedReference;

    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonManagedReference;

    .line 273
    .local v0, "ref1":Lcom/fasterxml/jackson/annotation/JsonManagedReference;
    if-eqz v0, :cond_0

    .line 274
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonManagedReference;->value()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;->managed(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;

    move-result-object v2

    .line 280
    :goto_0
    return-object v2

    .line 276
    :cond_0
    const-class v2, Lcom/fasterxml/jackson/annotation/JsonBackReference;

    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/annotation/JsonBackReference;

    .line 277
    .local v1, "ref2":Lcom/fasterxml/jackson/annotation/JsonBackReference;
    if-eqz v1, :cond_1

    .line 278
    invoke-interface {v1}, Lcom/fasterxml/jackson/annotation/JsonBackReference;->value()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;->back(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;

    move-result-object v2

    goto :goto_0

    .line 280
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public findRootName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 3
    .param p1, "ac"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .prologue
    .line 100
    const-class v2, Lcom/fasterxml/jackson/annotation/JsonRootName;

    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonRootName;

    .line 101
    .local v0, "ann":Lcom/fasterxml/jackson/annotation/JsonRootName;
    if-nez v0, :cond_0

    .line 102
    const/4 v2, 0x0

    .line 108
    :goto_0
    return-object v2

    .line 104
    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonRootName;->namespace()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "ns":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 106
    const/4 v1, 0x0

    .line 108
    :cond_1
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonRootName;->value()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v2

    goto :goto_0
.end method

.method public findSerializationContentConverter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
    .locals 3
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .prologue
    .line 602
    const-class v1, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    .line 603
    .local v0, "ann":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->contentConverter()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/fasterxml/jackson/databind/util/Converter$None;

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_classIfExplicit(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method public findSerializationContentType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .locals 2
    .param p1, "am"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p2, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 583
    const-class v1, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    .line 584
    .local v0, "ann":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->contentAs()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_classIfExplicit(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method public findSerializationConverter(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 3
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 596
    const-class v1, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    .line 597
    .local v0, "ann":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->converter()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/fasterxml/jackson/databind/util/Converter$None;

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_classIfExplicit(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method public findSerializationInclusion(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .locals 6
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p2, "defValue"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .prologue
    .line 495
    const-class v4, Lcom/fasterxml/jackson/annotation/JsonInclude;

    invoke-virtual {p0, p1, v4}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/annotation/JsonInclude;

    .line 496
    .local v2, "inc":Lcom/fasterxml/jackson/annotation/JsonInclude;
    if-eqz v2, :cond_0

    .line 497
    invoke-interface {v2}, Lcom/fasterxml/jackson/annotation/JsonInclude;->value()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v3

    .line 498
    .local v3, "v":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    sget-object v4, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-eq v3, v4, :cond_0

    .line 518
    .end local v3    # "v":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    :goto_0
    return-object v3

    .line 502
    :cond_0
    const-class v4, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    invoke-virtual {p0, p1, v4}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    .line 503
    .local v0, "ann":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
    if-eqz v0, :cond_1

    .line 504
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->include()Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;

    move-result-object v1

    .line 505
    .local v1, "i2":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;
    sget-object v4, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector$1;->$SwitchMap$com$fasterxml$jackson$databind$annotation$JsonSerialize$Inclusion:[I

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .end local v1    # "i2":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;
    :cond_1
    move-object v3, p2

    .line 518
    goto :goto_0

    .line 507
    .restart local v1    # "i2":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;
    :pswitch_0
    sget-object v3, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->ALWAYS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    goto :goto_0

    .line 509
    :pswitch_1
    sget-object v3, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    goto :goto_0

    .line 511
    :pswitch_2
    sget-object v3, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_DEFAULT:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    goto :goto_0

    .line 513
    :pswitch_3
    sget-object v3, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    goto :goto_0

    .line 505
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public findSerializationInclusionForContent(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .locals 3
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p2, "defValue"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .prologue
    .line 524
    const-class v2, Lcom/fasterxml/jackson/annotation/JsonInclude;

    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonInclude;

    .line 525
    .local v0, "inc":Lcom/fasterxml/jackson/annotation/JsonInclude;
    if-eqz v0, :cond_0

    .line 526
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonInclude;->content()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v1

    .line 527
    .local v1, "incl":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-eq v1, v2, :cond_0

    .line 531
    .end local v1    # "incl":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    :goto_0
    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method public findSerializationKeyType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .locals 2
    .param p1, "am"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p2, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 576
    const-class v1, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    .line 577
    .local v0, "ann":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->keyAs()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_classIfExplicit(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method public findSerializationPropertyOrder(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)[Ljava/lang/String;
    .locals 2
    .param p1, "ac"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .prologue
    .line 614
    const-class v1, Lcom/fasterxml/jackson/annotation/JsonPropertyOrder;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonPropertyOrder;

    .line 615
    .local v0, "order":Lcom/fasterxml/jackson/annotation/JsonPropertyOrder;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonPropertyOrder;->value()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public findSerializationSortAlphabetically(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "ann"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 620
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findSortAlpha(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public findSerializationType(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Class;
    .locals 2
    .param p1, "am"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 569
    const-class v1, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    .line 570
    .local v0, "ann":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->as()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_classIfExplicit(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method public findSerializationTyping(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;
    .locals 2
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 590
    const-class v1, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    .line 591
    .local v0, "ann":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->typing()Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    move-result-object v1

    goto :goto_0
.end method

.method public findSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 5
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 427
    const-class v4, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    invoke-virtual {p0, p1, v4}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    .line 428
    .local v0, "ann":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
    if-eqz v0, :cond_0

    .line 430
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->using()Ljava/lang/Class;

    move-result-object v3

    .line 431
    .local v3, "serClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/databind/JsonSerializer;>;"
    const-class v4, Lcom/fasterxml/jackson/databind/JsonSerializer$None;

    if-eq v3, v4, :cond_0

    .line 446
    .end local v3    # "serClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/databind/JsonSerializer;>;"
    :goto_0
    return-object v3

    .line 440
    :cond_0
    const-class v4, Lcom/fasterxml/jackson/annotation/JsonRawValue;

    invoke-virtual {p0, p1, v4}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/annotation/JsonRawValue;

    .line 441
    .local v1, "annRaw":Lcom/fasterxml/jackson/annotation/JsonRawValue;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/fasterxml/jackson/annotation/JsonRawValue;->value()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 443
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getRawType()Ljava/lang/Class;

    move-result-object v2

    .line 444
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v3, Lcom/fasterxml/jackson/databind/ser/std/RawSerializer;

    invoke-direct {v3, v2}, Lcom/fasterxml/jackson/databind/ser/std/RawSerializer;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    .line 446
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public findSubtypes(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/util/List;
    .locals 10
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 370
    const-class v7, Lcom/fasterxml/jackson/annotation/JsonSubTypes;

    invoke-virtual {p0, p1, v7}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/annotation/JsonSubTypes;

    .line 371
    .local v4, "t":Lcom/fasterxml/jackson/annotation/JsonSubTypes;
    if-nez v4, :cond_1

    const/4 v3, 0x0

    .line 377
    :cond_0
    return-object v3

    .line 372
    :cond_1
    invoke-interface {v4}, Lcom/fasterxml/jackson/annotation/JsonSubTypes;->value()[Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;

    move-result-object v6

    .line 373
    .local v6, "types":[Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;
    new-instance v3, Ljava/util/ArrayList;

    array-length v7, v6

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 374
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    move-object v0, v6

    .local v0, "arr$":[Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    .line 375
    .local v5, "type":Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;
    new-instance v7, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    invoke-interface {v5}, Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;->value()Ljava/lang/Class;

    move-result-object v8

    invoke-interface {v5}, Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;->name()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public findTypeName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/String;
    .locals 2
    .param p1, "ac"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .prologue
    .line 383
    const-class v1, Lcom/fasterxml/jackson/annotation/JsonTypeName;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonTypeName;

    .line 384
    .local v0, "tn":Lcom/fasterxml/jackson/annotation/JsonTypeName;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonTypeName;->value()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public findTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
    .locals 1
    .param p2, "ac"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .param p3, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 339
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v0

    return-object v0
.end method

.method public findUnwrappingNameTransformer(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/NameTransformer;
    .locals 4
    .param p1, "member"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .prologue
    .line 286
    const-class v3, Lcom/fasterxml/jackson/annotation/JsonUnwrapped;

    invoke-virtual {p0, p1, v3}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonUnwrapped;

    .line 289
    .local v0, "ann":Lcom/fasterxml/jackson/annotation/JsonUnwrapped;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonUnwrapped;->enabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 290
    :cond_0
    const/4 v3, 0x0

    .line 294
    :goto_0
    return-object v3

    .line 292
    :cond_1
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonUnwrapped;->prefix()Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, "prefix":Ljava/lang/String;
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonUnwrapped;->suffix()Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, "suffix":Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/fasterxml/jackson/databind/util/NameTransformer;->simpleTransformer(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/util/NameTransformer;

    move-result-object v3

    goto :goto_0
.end method

.method public findValueInstantiator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Object;
    .locals 2
    .param p1, "ac"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .prologue
    .line 849
    const-class v1, Lcom/fasterxml/jackson/databind/annotation/JsonValueInstantiator;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonValueInstantiator;

    .line 851
    .local v0, "ann":Lcom/fasterxml/jackson/databind/annotation/JsonValueInstantiator;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonValueInstantiator;->value()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method public findViews(Lcom/fasterxml/jackson/databind/introspect/Annotated;)[Ljava/lang/Class;
    .locals 2
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 325
    const-class v1, Lcom/fasterxml/jackson/annotation/JsonView;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonView;

    .line 326
    .local v0, "ann":Lcom/fasterxml/jackson/annotation/JsonView;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonView;->value()[Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method public hasAnyGetterAnnotation(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .locals 1
    .param p1, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .prologue
    .line 921
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonAnyGetter;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_hasAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasAnySetterAnnotation(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .locals 1
    .param p1, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .prologue
    .line 912
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonAnySetter;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_hasAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasAsValueAnnotation(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .locals 2
    .param p1, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .prologue
    .line 755
    const-class v1, Lcom/fasterxml/jackson/annotation/JsonValue;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonValue;

    .line 757
    .local v0, "ann":Lcom/fasterxml/jackson/annotation/JsonValue;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonValue;->value()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasCreatorAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Z
    .locals 3
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 931
    const-class v1, Lcom/fasterxml/jackson/annotation/JsonCreator;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonCreator;

    .line 932
    .local v0, "ann":Lcom/fasterxml/jackson/annotation/JsonCreator;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonCreator;->mode()Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;->DISABLED:Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z
    .locals 1
    .param p1, "m"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_isIgnorable(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Z

    move-result v0

    return v0
.end method

.method public hasRequiredMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "m"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .prologue
    .line 218
    const-class v1, Lcom/fasterxml/jackson/annotation/JsonProperty;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonProperty;

    .line 219
    .local v0, "ann":Lcom/fasterxml/jackson/annotation/JsonProperty;
    if-eqz v0, :cond_0

    .line 220
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonProperty;->required()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 222
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z
    .locals 2
    .param p1, "ann"    # Ljava/lang/annotation/Annotation;

    .prologue
    .line 52
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/annotation/JacksonAnnotationsInside;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIgnorableType(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "ac"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .prologue
    .line 145
    const-class v1, Lcom/fasterxml/jackson/annotation/JsonIgnoreType;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreType;

    .line 146
    .local v0, "ignore":Lcom/fasterxml/jackson/annotation/JsonIgnoreType;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonIgnoreType;->value()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public isTypeId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "member"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .prologue
    .line 389
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonTypeId;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_hasAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public version()Lcom/fasterxml/jackson/core/Version;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/PackageVersion;->VERSION:Lcom/fasterxml/jackson/core/Version;

    return-object v0
.end method
