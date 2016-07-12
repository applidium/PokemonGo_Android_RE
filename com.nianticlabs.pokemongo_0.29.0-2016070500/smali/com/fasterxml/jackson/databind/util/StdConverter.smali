.class public abstract Lcom/fasterxml/jackson/databind/util/StdConverter;
.super Ljava/lang/Object;
.source "StdConverter.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/util/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<IN:",
        "Ljava/lang/Object;",
        "OUT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/fasterxml/jackson/databind/util/Converter",
        "<TIN;TOUT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/StdConverter;, "Lcom/fasterxml/jackson/databind/util/StdConverter<TIN;TOUT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract convert(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TIN;)TOUT;"
        }
    .end annotation
.end method

.method public getInputType(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 4
    .param p1, "typeFactory"    # Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .prologue
    .line 28
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/StdConverter;, "Lcom/fasterxml/jackson/databind/util/StdConverter<TIN;TOUT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/fasterxml/jackson/databind/util/Converter;

    invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 29
    .local v0, "types":[Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 30
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not find OUT type parameter for Converter of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 32
    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method public getOutputType(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 4
    .param p1, "typeFactory"    # Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .prologue
    .line 38
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/StdConverter;, "Lcom/fasterxml/jackson/databind/util/StdConverter<TIN;TOUT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/fasterxml/jackson/databind/util/Converter;

    invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 39
    .local v0, "types":[Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 40
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not find OUT type parameter for Converter of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_1
    const/4 v1, 0x1

    aget-object v1, v0, v1

    return-object v1
.end method
