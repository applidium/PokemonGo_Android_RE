.class public interface abstract annotation Lcom/fasterxml/jackson/databind/jsonschema/JsonSerializableSchema;
.super Ljava/lang/Object;
.source "JsonSerializableSchema.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JacksonAnnotation;
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/fasterxml/jackson/databind/jsonschema/JsonSerializableSchema;
        id = ""
        schemaItemDefinition = "##irrelevant"
        schemaObjectPropertiesDefinition = "##irrelevant"
        schemaType = "any"
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final NO_VALUE:Ljava/lang/String; = "##irrelevant"


# virtual methods
.method public abstract id()Ljava/lang/String;
.end method

.method public abstract schemaItemDefinition()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract schemaObjectPropertiesDefinition()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract schemaType()Ljava/lang/String;
.end method
