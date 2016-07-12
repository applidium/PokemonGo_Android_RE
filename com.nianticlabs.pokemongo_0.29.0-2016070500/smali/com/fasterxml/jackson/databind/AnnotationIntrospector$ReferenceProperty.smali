.class public Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;
.super Ljava/lang/Object;
.source "AnnotationIntrospector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReferenceProperty"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;
    }
.end annotation


# instance fields
.field private final _name:Ljava/lang/String;

.field private final _type:Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;Ljava/lang/String;)V
    .locals 0
    .param p1, "t"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;
    .param p2, "n"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;->_type:Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;

    .line 80
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;->_name:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public static back(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 84
    new-instance v0, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;

    sget-object v1, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;->BACK_REFERENCE:Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;

    invoke-direct {v0, v1, p0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;-><init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;Ljava/lang/String;)V

    return-object v0
.end method

.method public static managed(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 83
    new-instance v0, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;

    sget-object v1, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;->MANAGED_REFERENCE:Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;

    invoke-direct {v0, v1, p0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;-><init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;->_type:Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;

    return-object v0
.end method

.method public isBackReference()Z
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;->_type:Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;

    sget-object v1, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;->BACK_REFERENCE:Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isManagedReference()Z
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;->_type:Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;

    sget-object v1, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;->MANAGED_REFERENCE:Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
