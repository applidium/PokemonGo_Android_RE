.class public abstract Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;
.super Ljava/lang/Object;
.source "TypeIdResolverBase.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;


# instance fields
.field protected final _baseType:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final _typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, v0, v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeFactory;)V

    .line 30
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeFactory;)V
    .locals 0
    .param p1, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "typeFactory"    # Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 34
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 35
    return-void
.end method


# virtual methods
.method public getDescForKnownTypeIds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public idFromBaseType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;->idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0
    .param p1, "bt"    # Lcom/fasterxml/jackson/databind/JavaType;

    .prologue
    .line 39
    return-void
.end method

.method public typeFromId(Lcom/fasterxml/jackson/databind/DatabindContext;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "context"    # Lcom/fasterxml/jackson/databind/DatabindContext;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;->typeFromId(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public typeFromId(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;->typeFromId(Lcom/fasterxml/jackson/databind/DatabindContext;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method
