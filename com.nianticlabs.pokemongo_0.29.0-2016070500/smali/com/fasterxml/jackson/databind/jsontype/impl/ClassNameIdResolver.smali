.class public Lcom/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver;
.super Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;
.source "ClassNameIdResolver.java"


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeFactory;)V
    .locals 0
    .param p1, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "typeFactory"    # Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeFactory;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected final _idFrom(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
    .locals 8
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 81
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Ljava/lang/Enum;

    invoke-virtual {v6, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 82
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    move-result v6

    if-nez v6, :cond_0

    .line 83
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    .line 86
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "str":Ljava/lang/String;
    const-string v6, "java.util"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 96
    instance-of v6, p1, Ljava/util/EnumSet;

    if-eqz v6, :cond_2

    .line 97
    check-cast p1, Ljava/util/EnumSet;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findEnumType(Ljava/util/EnumSet;)Ljava/lang/Class;

    move-result-object v1

    .line 99
    .local v1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->defaultInstance()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v6

    const-class v7, Ljava/util/EnumSet;

    invoke-virtual {v6, v7, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructCollectionType(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/type/CollectionType;->toCanonical()Ljava/lang/String;

    move-result-object v4

    .line 140
    .end local v1    # "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_0
    return-object v4

    .line 100
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v6, p1, Ljava/util/EnumMap;

    if-eqz v6, :cond_3

    .line 101
    check-cast p1, Ljava/util/EnumMap;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findEnumType(Ljava/util/EnumMap;)Ljava/lang/Class;

    move-result-object v1

    .line 102
    .restart local v1    # "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Ljava/lang/Object;

    .line 104
    .local v5, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->defaultInstance()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v6

    const-class v7, Ljava/util/EnumMap;

    invoke-virtual {v6, v7, v1, v5}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructMapType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/type/MapType;->toCanonical()Ljava/lang/String;

    move-result-object v4

    .line 105
    goto :goto_0

    .line 106
    .end local v1    # "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_3
    const/16 v6, 0x9

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "end":Ljava/lang/String;
    const-string v6, ".Arrays$"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, ".Collections$"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_4
    const-string v6, "List"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_1

    .line 115
    const-string v4, "java.util.ArrayList"

    goto :goto_0

    .line 118
    .end local v0    # "end":Ljava/lang/String;
    :cond_5
    const/16 v6, 0x24

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_1

    .line 126
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getOuterClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 127
    .local v2, "outer":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_1

    .line 132
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    .line 133
    .local v3, "staticType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v3}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getOuterClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6

    if-nez v6, :cond_1

    .line 135
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p2

    .line 136
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method protected _typeFromId(Ljava/lang/String;Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "typeFactory"    # Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .prologue
    .line 57
    const/16 v3, 0x3c

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_0

    .line 58
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructFromCanonical(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 64
    :goto_0
    return-object v2

    .line 63
    :cond_0
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 64
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p2, v3, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 65
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid type id \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' (for id type \'Id.class\'): no such class found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 67
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid type id \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' (for id type \'Id.class\'): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getDescForKnownTypeIds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    const-string v0, "class name used as type id"

    return-object v0
.end method

.method public getMechanism()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->CLASS:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    return-object v0
.end method

.method public idFromValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver;->_idFrom(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver;->_idFrom(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public registerSubtype(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method public typeFromId(Lcom/fasterxml/jackson/databind/DatabindContext;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "context"    # Lcom/fasterxml/jackson/databind/DatabindContext;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DatabindContext;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver;->_typeFromId(Ljava/lang/String;Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public typeFromId(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver;->_typeFromId(Ljava/lang/String;Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method
