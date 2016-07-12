.class public interface abstract annotation Lcom/fasterxml/jackson/annotation/JsonFormat;
.super Ljava/lang/Object;
.source "JsonFormat.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JacksonAnnotation;
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/fasterxml/jackson/annotation/JsonFormat;
        locale = "##default"
        pattern = ""
        shape = .enum Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ANY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
        timezone = "##default"
        with = {}
        without = {}
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/annotation/JsonFormat$Value;,
        Lcom/fasterxml/jackson/annotation/JsonFormat$Features;,
        Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;,
        Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
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
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final DEFAULT_LOCALE:Ljava/lang/String; = "##default"

.field public static final DEFAULT_TIMEZONE:Ljava/lang/String; = "##default"


# virtual methods
.method public abstract locale()Ljava/lang/String;
.end method

.method public abstract pattern()Ljava/lang/String;
.end method

.method public abstract shape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
.end method

.method public abstract timezone()Ljava/lang/String;
.end method

.method public abstract with()[Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
.end method

.method public abstract without()[Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
.end method
