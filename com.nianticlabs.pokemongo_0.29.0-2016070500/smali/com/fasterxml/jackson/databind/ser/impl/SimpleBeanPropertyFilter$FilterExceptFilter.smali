.class public Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter$FilterExceptFilter;
.super Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter;
.source "SimpleBeanPropertyFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilterExceptFilter"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _propertiesToInclude:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 266
    .local p1, "properties":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter;-><init>()V

    .line 267
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter$FilterExceptFilter;->_propertiesToInclude:Ljava/util/Set;

    .line 268
    return-void
.end method


# virtual methods
.method protected include(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)Z
    .locals 2
    .param p1, "writer"    # Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter$FilterExceptFilter;->_propertiesToInclude:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected include(Lcom/fasterxml/jackson/databind/ser/PropertyWriter;)Z
    .locals 2
    .param p1, "writer"    # Lcom/fasterxml/jackson/databind/ser/PropertyWriter;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter$FilterExceptFilter;->_propertiesToInclude:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/ser/PropertyWriter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
