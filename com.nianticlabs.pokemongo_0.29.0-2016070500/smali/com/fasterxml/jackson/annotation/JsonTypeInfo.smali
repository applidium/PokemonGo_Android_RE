.class public interface abstract annotation Lcom/fasterxml/jackson/annotation/JsonTypeInfo;
.super Ljava/lang/Object;
.source "JsonTypeInfo.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JacksonAnnotation;
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/fasterxml/jackson/annotation/JsonTypeInfo;
        defaultImpl = Lcom/fasterxml/jackson/annotation/JsonTypeInfo$None;
        include = .enum Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
        property = ""
        visible = false
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/annotation/JsonTypeInfo$None;,
        Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;,
        Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract defaultImpl()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract include()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
.end method

.method public abstract property()Ljava/lang/String;
.end method

.method public abstract use()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
.end method

.method public abstract visible()Z
.end method
