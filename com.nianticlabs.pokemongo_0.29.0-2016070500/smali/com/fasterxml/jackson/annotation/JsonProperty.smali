.class public interface abstract annotation Lcom/fasterxml/jackson/annotation/JsonProperty;
.super Ljava/lang/Object;
.source "JsonProperty.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JacksonAnnotation;
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/fasterxml/jackson/annotation/JsonProperty;
        access = .enum Lcom/fasterxml/jackson/annotation/JsonProperty$Access;->AUTO:Lcom/fasterxml/jackson/annotation/JsonProperty$Access;
        defaultValue = ""
        index = -0x1
        required = false
        value = ""
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/annotation/JsonProperty$Access;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final INDEX_UNKNOWN:I = -0x1

.field public static final USE_DEFAULT_NAME:Ljava/lang/String; = ""


# virtual methods
.method public abstract access()Lcom/fasterxml/jackson/annotation/JsonProperty$Access;
.end method

.method public abstract defaultValue()Ljava/lang/String;
.end method

.method public abstract index()I
.end method

.method public abstract required()Z
.end method

.method public abstract value()Ljava/lang/String;
.end method
