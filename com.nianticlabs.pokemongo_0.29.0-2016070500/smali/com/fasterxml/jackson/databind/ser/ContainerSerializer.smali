.class public abstract Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "ContainerSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0
    .param p1, "fullType"    # Lcom/fasterxml/jackson/databind/JavaType;

    .prologue
    .line 33
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;, "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer<TT;>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 34
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;, "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer<TT;>;"
    .local p1, "src":Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;, "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer<*>;"
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;->_handledType:Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;Z)V

    .line 48
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
    .line 26
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;, "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer<TT;>;"
    .local p1, "t":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    .line 27
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
    .line 43
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;, "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer<TT;>;"
    .local p1, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;Z)V

    .line 44
    return-void
.end method


# virtual methods
.method protected abstract _withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            ")",
            "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getContentSerializer()Lcom/fasterxml/jackson/databind/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getContentType()Lcom/fasterxml/jackson/databind/JavaType;
.end method

.method protected hasContentTypeAnnotation(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Z
    .locals 3
    .param p1, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "property"    # Lcom/fasterxml/jackson/databind/BeanProperty;

    .prologue
    .line 141
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;, "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer<TT;>;"
    if-eqz p2, :cond_0

    .line 142
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 143
    .local v0, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v1

    .line 144
    .local v1, "m":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 145
    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationContentType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 146
    const/4 v2, 0x1

    .line 150
    .end local v0    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .end local v1    # "m":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public abstract hasSingleElement(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public isEmpty(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;, "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;->isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
    .locals 0
    .param p1, "vts"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            ")",
            "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;, "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer<TT;>;"
    if-nez p1, :cond_0

    .line 62
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;, "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer<TT;>;"
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;, "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer<TT;>;"
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;->_withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;

    move-result-object p0

    goto :goto_0
.end method
