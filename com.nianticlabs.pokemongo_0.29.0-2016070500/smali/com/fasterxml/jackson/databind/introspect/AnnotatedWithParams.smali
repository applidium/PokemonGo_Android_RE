.class public abstract Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
.super Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
.source "AnnotatedWithParams.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _paramAnnotations:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V
    .locals 0
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .param p2, "annotations"    # Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .param p3, "paramAnnotations"    # [Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    .line 36
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->_paramAnnotations:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    .line 37
    return-void
.end method


# virtual methods
.method public final addOrOverrideParam(ILjava/lang/annotation/Annotation;)V
    .locals 2
    .param p1, "paramIndex"    # I
    .param p2, "a"    # Ljava/lang/annotation/Annotation;

    .prologue
    .line 47
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->_paramAnnotations:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    aget-object v0, v1, p1

    .line 48
    .local v0, "old":Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    .end local v0    # "old":Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;-><init>()V

    .line 50
    .restart local v0    # "old":Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->_paramAnnotations:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    aput-object v0, v1, p1

    .line 52
    :cond_0
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->add(Ljava/lang/annotation/Annotation;)Z

    .line 53
    return-void
.end method

.method public abstract call()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract call([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract call1(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "acls":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->_annotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public final getAnnotationCount()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->_annotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->size()I

    move-result v0

    return v0
.end method

.method public abstract getGenericParameterType(I)Ljava/lang/reflect/Type;
.end method

.method public final getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 118
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getGenericParameterType(I)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameterAnnotations(I)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;I)V

    return-object v0
.end method

.method public final getParameterAnnotations(I)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->_paramAnnotations:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    if-eqz v0, :cond_0

    .line 110
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->_paramAnnotations:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->_paramAnnotations:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    aget-object v0, v0, p1

    .line 114
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getParameterCount()I
.end method

.method public abstract getRawParameterType(I)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method protected getType(Lcom/fasterxml/jackson/databind/type/TypeBindings;[Ljava/lang/reflect/TypeVariable;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 9
    .param p1, "bindings"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;",
            "[",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 74
    .local p2, "typeParams":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    if-eqz p2, :cond_1

    array-length v7, p2

    if-lez v7, :cond_1

    .line 75
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->childInstance()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object p1

    .line 76
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/reflect/TypeVariable;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v6, v0, v1

    .line 77
    .local v6, "var":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_addPlaceholder(Ljava/lang/String;)V

    .line 81
    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v3, v7, v8

    .line 82
    .local v3, "lowerBound":Ljava/lang/reflect/Type;
    if-nez v3, :cond_0

    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    .line 84
    .local v5, "type":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_1
    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7, v5}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->addBinding(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .end local v5    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_0
    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->resolveType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    goto :goto_1

    .line 87
    .end local v0    # "arr$":[Ljava/lang/reflect/TypeVariable;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "lowerBound":Ljava/lang/reflect/Type;
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "var":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->resolveType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v7

    return-object v7
.end method

.method protected replaceParameterAnnotations(ILcom/fasterxml/jackson/databind/introspect/AnnotationMap;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .locals 1
    .param p1, "index"    # I
    .param p2, "ann"    # Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->_paramAnnotations:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    aput-object p2, v0, p1

    .line 62
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v0

    return-object v0
.end method

.method public final resolveParameterType(ILcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "index"    # I
    .param p2, "bindings"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getGenericParameterType(I)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->resolveType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method
