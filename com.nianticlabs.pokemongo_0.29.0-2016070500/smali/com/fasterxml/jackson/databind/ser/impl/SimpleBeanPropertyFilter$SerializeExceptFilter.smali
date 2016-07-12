.class public Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter$SerializeExceptFilter;
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
    name = "SerializeExceptFilter"
.end annotation


# static fields
.field static final INCLUDE_ALL:Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter$SerializeExceptFilter;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _propertiesToExclude:Ljava/util/Set;
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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 291
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter$SerializeExceptFilter;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter$SerializeExceptFilter;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter$SerializeExceptFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter$SerializeExceptFilter;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter;-><init>()V

    .line 299
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter$SerializeExceptFilter;->_propertiesToExclude:Ljava/util/Set;

    .line 300
    return-void
.end method

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
    .line 302
    .local p1, "properties":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter;-><init>()V

    .line 303
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter$SerializeExceptFilter;->_propertiesToExclude:Ljava/util/Set;

    .line 304
    return-void
.end method


# virtual methods
.method protected include(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)Z
    .locals 2
    .param p1, "writer"    # Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter$SerializeExceptFilter;->_propertiesToExclude:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected include(Lcom/fasterxml/jackson/databind/ser/PropertyWriter;)Z
    .locals 2
    .param p1, "writer"    # Lcom/fasterxml/jackson/databind/ser/PropertyWriter;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter$SerializeExceptFilter;->_propertiesToExclude:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/ser/PropertyWriter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
