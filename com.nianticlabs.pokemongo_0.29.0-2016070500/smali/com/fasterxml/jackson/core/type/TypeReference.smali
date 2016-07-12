.class public abstract Lcom/fasterxml/jackson/core/type/TypeReference;
.super Ljava/lang/Object;
.source "TypeReference.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/fasterxml/jackson/core/type/TypeReference",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field protected final _type:Ljava/lang/reflect/Type;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 32
    .local p0, "this":Lcom/fasterxml/jackson/core/type/TypeReference;, "Lcom/fasterxml/jackson/core/type/TypeReference<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 34
    .local v0, "superClass":Ljava/lang/reflect/Type;
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 35
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Internal error: TypeReference constructed without actual type information"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_0
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .end local v0    # "superClass":Ljava/lang/reflect/Type;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/fasterxml/jackson/core/type/TypeReference;->_type:Ljava/lang/reflect/Type;

    .line 45
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/fasterxml/jackson/core/type/TypeReference;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/type/TypeReference",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/fasterxml/jackson/core/type/TypeReference;, "Lcom/fasterxml/jackson/core/type/TypeReference<TT;>;"
    .local p1, "o":Lcom/fasterxml/jackson/core/type/TypeReference;, "Lcom/fasterxml/jackson/core/type/TypeReference<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 27
    .local p0, "this":Lcom/fasterxml/jackson/core/type/TypeReference;, "Lcom/fasterxml/jackson/core/type/TypeReference<TT;>;"
    check-cast p1, Lcom/fasterxml/jackson/core/type/TypeReference;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/type/TypeReference;->compareTo(Lcom/fasterxml/jackson/core/type/TypeReference;)I

    move-result v0

    return v0
.end method

.method public getType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Lcom/fasterxml/jackson/core/type/TypeReference;, "Lcom/fasterxml/jackson/core/type/TypeReference<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/core/type/TypeReference;->_type:Ljava/lang/reflect/Type;

    return-object v0
.end method
