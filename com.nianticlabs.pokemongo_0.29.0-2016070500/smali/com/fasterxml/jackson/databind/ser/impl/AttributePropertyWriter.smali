.class public Lcom/fasterxml/jackson/databind/ser/impl/AttributePropertyWriter;
.super Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;
.source "AttributePropertyWriter.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _attrName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/impl/AttributePropertyWriter;)V
    .locals 1
    .param p1, "base"    # Lcom/fasterxml/jackson/databind/ser/impl/AttributePropertyWriter;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;-><init>(Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;)V

    .line 59
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/impl/AttributePropertyWriter;->_attrName:Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/AttributePropertyWriter;->_attrName:Ljava/lang/String;

    .line 60
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 6
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "propDef"    # Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .param p3, "contextAnnotations"    # Lcom/fasterxml/jackson/databind/util/Annotations;
    .param p4, "declaredType"    # Lcom/fasterxml/jackson/databind/JavaType;

    .prologue
    .line 35
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->findInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/impl/AttributePropertyWriter;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)V

    .line 36
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)V
    .locals 8
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "propDef"    # Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .param p3, "contextAnnotations"    # Lcom/fasterxml/jackson/databind/util/Annotations;
    .param p4, "declaredType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p5, "inclusion"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .prologue
    const/4 v4, 0x0

    .line 42
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, v4

    move-object v6, v4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;-><init>(Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)V

    .line 45
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/AttributePropertyWriter;->_attrName:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static construct(Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ser/impl/AttributePropertyWriter;
    .locals 1
    .param p0, "attrName"    # Ljava/lang/String;
    .param p1, "propDef"    # Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .param p2, "contextAnnotations"    # Lcom/fasterxml/jackson/databind/util/Annotations;
    .param p3, "declaredType"    # Lcom/fasterxml/jackson/databind/JavaType;

    .prologue
    .line 53
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/AttributePropertyWriter;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/impl/AttributePropertyWriter;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/JavaType;)V

    return-object v0
.end method


# virtual methods
.method protected value(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)Ljava/lang/Object;
    .locals 1
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "jgen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "prov"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/AttributePropertyWriter;->_attrName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public withConfig(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;
    .locals 2
    .param p2, "declaringClass"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .param p3, "propDef"    # Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .param p4, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
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

    .prologue
    .line 69
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should not be called on this type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
