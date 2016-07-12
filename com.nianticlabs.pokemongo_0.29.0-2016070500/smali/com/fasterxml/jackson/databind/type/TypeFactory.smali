.class public final Lcom/fasterxml/jackson/databind/type/TypeFactory;
.super Ljava/lang/Object;
.source "TypeFactory.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static final CORE_TYPE_BOOL:Lcom/fasterxml/jackson/databind/type/SimpleType;

.field protected static final CORE_TYPE_INT:Lcom/fasterxml/jackson/databind/type/SimpleType;

.field protected static final CORE_TYPE_LONG:Lcom/fasterxml/jackson/databind/type/SimpleType;

.field protected static final CORE_TYPE_STRING:Lcom/fasterxml/jackson/databind/type/SimpleType;

.field private static final NO_TYPES:[Lcom/fasterxml/jackson/databind/JavaType;

.field protected static final instance:Lcom/fasterxml/jackson/databind/type/TypeFactory;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected transient _cachedArrayListType:Lcom/fasterxml/jackson/databind/type/HierarchicType;

.field protected transient _cachedHashMapType:Lcom/fasterxml/jackson/databind/type/HierarchicType;

.field protected final _classLoader:Ljava/lang/ClassLoader;

.field protected final _modifiers:[Lcom/fasterxml/jackson/databind/type/TypeModifier;

.field protected final _parser:Lcom/fasterxml/jackson/databind/type/TypeParser;

.field protected final _typeCache:Lcom/fasterxml/jackson/databind/util/LRUMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/util/LRUMap",
            "<",
            "Lcom/fasterxml/jackson/databind/type/ClassKey;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/JavaType;

    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->NO_TYPES:[Lcom/fasterxml/jackson/databind/JavaType;

    .line 46
    new-instance v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->instance:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 58
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_STRING:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 59
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_BOOL:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 60
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_INT:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 61
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_LONG:Lcom/fasterxml/jackson/databind/type/SimpleType;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/fasterxml/jackson/databind/util/LRUMap;

    const/16 v1, 0x10

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/util/LRUMap;-><init>(II)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_typeCache:Lcom/fasterxml/jackson/databind/util/LRUMap;

    .line 114
    new-instance v0, Lcom/fasterxml/jackson/databind/type/TypeParser;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/type/TypeParser;-><init>(Lcom/fasterxml/jackson/databind/type/TypeFactory;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_parser:Lcom/fasterxml/jackson/databind/type/TypeParser;

    .line 115
    iput-object v3, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_modifiers:[Lcom/fasterxml/jackson/databind/type/TypeModifier;

    .line 116
    iput-object v3, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_classLoader:Ljava/lang/ClassLoader;

    .line 117
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/type/TypeParser;[Lcom/fasterxml/jackson/databind/type/TypeModifier;)V
    .locals 1
    .param p1, "p"    # Lcom/fasterxml/jackson/databind/type/TypeParser;
    .param p2, "mods"    # [Lcom/fasterxml/jackson/databind/type/TypeModifier;

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;-><init>(Lcom/fasterxml/jackson/databind/type/TypeParser;[Lcom/fasterxml/jackson/databind/type/TypeModifier;Ljava/lang/ClassLoader;)V

    .line 121
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/type/TypeParser;[Lcom/fasterxml/jackson/databind/type/TypeModifier;Ljava/lang/ClassLoader;)V
    .locals 3
    .param p1, "p"    # Lcom/fasterxml/jackson/databind/type/TypeParser;
    .param p2, "mods"    # [Lcom/fasterxml/jackson/databind/type/TypeModifier;
    .param p3, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/fasterxml/jackson/databind/util/LRUMap;

    const/16 v1, 0x10

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/util/LRUMap;-><init>(II)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_typeCache:Lcom/fasterxml/jackson/databind/util/LRUMap;

    .line 125
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/type/TypeParser;->withFactory(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/type/TypeParser;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_parser:Lcom/fasterxml/jackson/databind/type/TypeParser;

    .line 126
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_modifiers:[Lcom/fasterxml/jackson/databind/type/TypeModifier;

    .line 127
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_classLoader:Ljava/lang/ClassLoader;

    .line 128
    return-void
.end method

.method private _collectionType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 1155
    .local p1, "rawClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/util/Collection;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 1157
    .local v0, "typeParams":[Lcom/fasterxml/jackson/databind/JavaType;
    if-nez v0, :cond_0

    .line 1158
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/fasterxml/jackson/databind/type/CollectionType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object v1

    .line 1164
    :goto_0
    return-object v1

    .line 1161
    :cond_0
    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 1162
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Strange Collection type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": can not determine type parameters"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1164
    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {p1, v1}, Lcom/fasterxml/jackson/databind/type/CollectionType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object v1

    goto :goto_0
.end method

.method private _mapType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 1138
    .local p1, "rawClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/util/Properties;

    if-ne p1, v1, :cond_0

    .line 1139
    sget-object v1, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_STRING:Lcom/fasterxml/jackson/databind/type/SimpleType;

    sget-object v2, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_STRING:Lcom/fasterxml/jackson/databind/type/SimpleType;

    invoke-static {p1, v1, v2}, Lcom/fasterxml/jackson/databind/type/MapType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v1

    .line 1150
    :goto_0
    return-object v1

    .line 1141
    :cond_0
    const-class v1, Ljava/util/Map;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 1143
    .local v0, "typeParams":[Lcom/fasterxml/jackson/databind/JavaType;
    if-nez v0, :cond_1

    .line 1144
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/fasterxml/jackson/databind/type/MapType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v1

    goto :goto_0

    .line 1147
    :cond_1
    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 1148
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Strange Map type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": can not determine type parameters"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1150
    :cond_2
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {p1, v1, v2}, Lcom/fasterxml/jackson/databind/type/MapType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v1

    goto :goto_0
.end method

.method public static defaultInstance()Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->instance:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    return-object v0
.end method

.method public static rawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 1
    .param p0, "t"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 195
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 196
    check-cast p0, Ljava/lang/Class;

    .line 199
    .end local p0    # "t":Ljava/lang/reflect/Type;
    :goto_0
    return-object p0

    .restart local p0    # "t":Ljava/lang/reflect/Type;
    :cond_0
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->defaultInstance()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0
.end method

.method public static unknownType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    .prologue
    .line 185
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->defaultInstance()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected declared-synchronized _arrayListSuperInterfaceChain(Lcom/fasterxml/jackson/databind/type/HierarchicType;)Lcom/fasterxml/jackson/databind/type/HierarchicType;
    .locals 3
    .param p1, "current"    # Lcom/fasterxml/jackson/databind/type/HierarchicType;

    .prologue
    .line 1301
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_cachedArrayListType:Lcom/fasterxml/jackson/databind/type/HierarchicType;

    if-nez v2, :cond_0

    .line 1302
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->deepCloneWithoutSubtype()Lcom/fasterxml/jackson/databind/type/HierarchicType;

    move-result-object v0

    .line 1303
    .local v0, "base":Lcom/fasterxml/jackson/databind/type/HierarchicType;
    const-class v2, Ljava/util/List;

    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_doFindSuperInterfaceChain(Lcom/fasterxml/jackson/databind/type/HierarchicType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/HierarchicType;

    .line 1304
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->getSuperType()Lcom/fasterxml/jackson/databind/type/HierarchicType;

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_cachedArrayListType:Lcom/fasterxml/jackson/databind/type/HierarchicType;

    .line 1306
    .end local v0    # "base":Lcom/fasterxml/jackson/databind/type/HierarchicType;
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_cachedArrayListType:Lcom/fasterxml/jackson/databind/type/HierarchicType;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->deepCloneWithoutSubtype()Lcom/fasterxml/jackson/databind/type/HierarchicType;

    move-result-object v1

    .line 1307
    .local v1, "t":Lcom/fasterxml/jackson/databind/type/HierarchicType;
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->setSuperType(Lcom/fasterxml/jackson/databind/type/HierarchicType;)V

    .line 1308
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->setSubType(Lcom/fasterxml/jackson/databind/type/HierarchicType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1309
    monitor-exit p0

    return-object p1

    .line 1301
    .end local v1    # "t":Lcom/fasterxml/jackson/databind/type/HierarchicType;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected _constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 8
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "context"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .prologue
    .line 497
    instance-of v5, p1, Ljava/lang/Class;

    if-eqz v5, :cond_0

    move-object v5, p1

    .line 498
    check-cast v5, Ljava/lang/Class;

    invoke-virtual {p0, v5, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromClass(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    .line 523
    .local v4, "resultType":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_0
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_modifiers:[Lcom/fasterxml/jackson/databind/type/TypeModifier;

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result v5

    if-nez v5, :cond_7

    .line 524
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_modifiers:[Lcom/fasterxml/jackson/databind/type/TypeModifier;

    .local v0, "arr$":[Lcom/fasterxml/jackson/databind/type/TypeModifier;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_7

    aget-object v3, v0, v1

    .line 525
    .local v3, "mod":Lcom/fasterxml/jackson/databind/type/TypeModifier;
    invoke-virtual {v3, v4, p1, p2, p0}, Lcom/fasterxml/jackson/databind/type/TypeModifier;->modifyType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    .line 524
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 501
    .end local v0    # "arr$":[Lcom/fasterxml/jackson/databind/type/TypeModifier;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "mod":Lcom/fasterxml/jackson/databind/type/TypeModifier;
    .end local v4    # "resultType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_0
    instance-of v5, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_1

    move-object v5, p1

    .line 502
    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    invoke-virtual {p0, v5, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromParamType(Ljava/lang/reflect/ParameterizedType;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    .restart local v4    # "resultType":Lcom/fasterxml/jackson/databind/JavaType;
    goto :goto_0

    .line 504
    .end local v4    # "resultType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_1
    instance-of v5, p1, Lcom/fasterxml/jackson/databind/JavaType;

    if-eqz v5, :cond_2

    .line 505
    check-cast p1, Lcom/fasterxml/jackson/databind/JavaType;

    .line 528
    .end local p1    # "type":Ljava/lang/reflect/Type;
    :goto_2
    return-object p1

    .line 507
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_2
    instance-of v5, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v5, :cond_3

    move-object v5, p1

    .line 508
    check-cast v5, Ljava/lang/reflect/GenericArrayType;

    invoke-virtual {p0, v5, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromArrayType(Ljava/lang/reflect/GenericArrayType;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    .restart local v4    # "resultType":Lcom/fasterxml/jackson/databind/JavaType;
    goto :goto_0

    .line 510
    .end local v4    # "resultType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_3
    instance-of v5, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v5, :cond_4

    move-object v5, p1

    .line 511
    check-cast v5, Ljava/lang/reflect/TypeVariable;

    invoke-virtual {p0, v5, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromVariable(Ljava/lang/reflect/TypeVariable;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    .restart local v4    # "resultType":Lcom/fasterxml/jackson/databind/JavaType;
    goto :goto_0

    .line 513
    .end local v4    # "resultType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_4
    instance-of v5, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v5, :cond_5

    move-object v5, p1

    .line 514
    check-cast v5, Ljava/lang/reflect/WildcardType;

    invoke-virtual {p0, v5, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromWildcard(Ljava/lang/reflect/WildcardType;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    .restart local v4    # "resultType":Lcom/fasterxml/jackson/databind/JavaType;
    goto :goto_0

    .line 517
    .end local v4    # "resultType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_5
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized Type: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez p1, :cond_6

    const-string v5, "[null]"

    :goto_3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .restart local v4    # "resultType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_7
    move-object p1, v4

    .line 528
    goto :goto_2
.end method

.method protected _doFindSuperInterfaceChain(Lcom/fasterxml/jackson/databind/type/HierarchicType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/HierarchicType;
    .locals 7
    .param p1, "current"    # Lcom/fasterxml/jackson/databind/type/HierarchicType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/HierarchicType;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/type/HierarchicType;"
        }
    .end annotation

    .prologue
    .line 1259
    .local p2, "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->getRawClass()Ljava/lang/Class;

    move-result-object v5

    .line 1260
    .local v5, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 1263
    .local v4, "parents":[Ljava/lang/reflect/Type;
    if-eqz v4, :cond_1

    .line 1264
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/reflect/Type;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1265
    .local v3, "parent":Ljava/lang/reflect/Type;
    invoke-virtual {p0, v3, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_findSuperInterfaceChain(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/HierarchicType;

    move-result-object v6

    .line 1266
    .local v6, "sup":Lcom/fasterxml/jackson/databind/type/HierarchicType;
    if-eqz v6, :cond_0

    .line 1267
    invoke-virtual {v6, p1}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->setSubType(Lcom/fasterxml/jackson/databind/type/HierarchicType;)V

    .line 1268
    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->setSuperType(Lcom/fasterxml/jackson/databind/type/HierarchicType;)V

    .line 1283
    .end local v0    # "arr$":[Ljava/lang/reflect/Type;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v6    # "sup":Lcom/fasterxml/jackson/databind/type/HierarchicType;
    .end local p1    # "current":Lcom/fasterxml/jackson/databind/type/HierarchicType;
    :goto_1
    return-object p1

    .line 1264
    .restart local v0    # "arr$":[Ljava/lang/reflect/Type;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v6    # "sup":Lcom/fasterxml/jackson/databind/type/HierarchicType;
    .restart local p1    # "current":Lcom/fasterxml/jackson/databind/type/HierarchicType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1274
    .end local v0    # "arr$":[Ljava/lang/reflect/Type;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "parent":Ljava/lang/reflect/Type;
    .end local v6    # "sup":Lcom/fasterxml/jackson/databind/type/HierarchicType;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 1275
    .restart local v3    # "parent":Ljava/lang/reflect/Type;
    if-eqz v3, :cond_2

    .line 1276
    invoke-virtual {p0, v3, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_findSuperInterfaceChain(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/HierarchicType;

    move-result-object v6

    .line 1277
    .restart local v6    # "sup":Lcom/fasterxml/jackson/databind/type/HierarchicType;
    if-eqz v6, :cond_2

    .line 1278
    invoke-virtual {v6, p1}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->setSubType(Lcom/fasterxml/jackson/databind/type/HierarchicType;)V

    .line 1279
    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->setSuperType(Lcom/fasterxml/jackson/databind/type/HierarchicType;)V

    goto :goto_1

    .line 1283
    .end local v6    # "sup":Lcom/fasterxml/jackson/databind/type/HierarchicType;
    :cond_2
    const/4 p1, 0x0

    goto :goto_1
.end method

.method protected _findPrimitive(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 259
    const-string v0, "int"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 268
    :goto_0
    return-object v0

    .line 260
    :cond_0
    const-string v0, "long"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 261
    :cond_1
    const-string v0, "float"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 262
    :cond_2
    const-string v0, "double"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 263
    :cond_3
    const-string v0, "boolean"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 264
    :cond_4
    const-string v0, "byte"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 265
    :cond_5
    const-string v0, "char"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 266
    :cond_6
    const-string v0, "short"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 267
    :cond_7
    const-string v0, "void"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 268
    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected _findSuperClassChain(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/HierarchicType;
    .locals 4
    .param p1, "currentType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/type/HierarchicType;"
        }
    .end annotation

    .prologue
    .line 1215
    .local p2, "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/type/HierarchicType;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/type/HierarchicType;-><init>(Ljava/lang/reflect/Type;)V

    .line 1216
    .local v0, "current":Lcom/fasterxml/jackson/databind/type/HierarchicType;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    .line 1217
    .local v2, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v2, p2, :cond_0

    .line 1230
    .end local v0    # "current":Lcom/fasterxml/jackson/databind/type/HierarchicType;
    :goto_0
    return-object v0

    .line 1221
    .restart local v0    # "current":Lcom/fasterxml/jackson/databind/type/HierarchicType;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1222
    .local v1, "parent":Ljava/lang/reflect/Type;
    if-eqz v1, :cond_1

    .line 1223
    invoke-virtual {p0, v1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_findSuperClassChain(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/HierarchicType;

    move-result-object v3

    .line 1224
    .local v3, "sup":Lcom/fasterxml/jackson/databind/type/HierarchicType;
    if-eqz v3, :cond_1

    .line 1225
    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->setSubType(Lcom/fasterxml/jackson/databind/type/HierarchicType;)V

    .line 1226
    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->setSuperType(Lcom/fasterxml/jackson/databind/type/HierarchicType;)V

    goto :goto_0

    .line 1230
    .end local v3    # "sup":Lcom/fasterxml/jackson/databind/type/HierarchicType;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected _findSuperInterfaceChain(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/HierarchicType;
    .locals 3
    .param p1, "currentType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/type/HierarchicType;"
        }
    .end annotation

    .prologue
    .line 1235
    .local p2, "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/type/HierarchicType;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/type/HierarchicType;-><init>(Ljava/lang/reflect/Type;)V

    .line 1236
    .local v0, "current":Lcom/fasterxml/jackson/databind/type/HierarchicType;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    .line 1237
    .local v1, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v1, p2, :cond_0

    .line 1238
    new-instance v2, Lcom/fasterxml/jackson/databind/type/HierarchicType;

    invoke-direct {v2, p1}, Lcom/fasterxml/jackson/databind/type/HierarchicType;-><init>(Ljava/lang/reflect/Type;)V

    .line 1254
    :goto_0
    return-object v2

    .line 1244
    :cond_0
    const-class v2, Ljava/util/HashMap;

    if-ne v1, v2, :cond_1

    .line 1245
    const-class v2, Ljava/util/Map;

    if-ne p2, v2, :cond_1

    .line 1246
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_hashMapSuperInterfaceChain(Lcom/fasterxml/jackson/databind/type/HierarchicType;)Lcom/fasterxml/jackson/databind/type/HierarchicType;

    move-result-object v2

    goto :goto_0

    .line 1249
    :cond_1
    const-class v2, Ljava/util/ArrayList;

    if-ne v1, v2, :cond_2

    .line 1250
    const-class v2, Ljava/util/List;

    if-ne p2, v2, :cond_2

    .line 1251
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_arrayListSuperInterfaceChain(Lcom/fasterxml/jackson/databind/type/HierarchicType;)Lcom/fasterxml/jackson/databind/type/HierarchicType;

    move-result-object v2

    goto :goto_0

    .line 1254
    :cond_2
    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_doFindSuperInterfaceChain(Lcom/fasterxml/jackson/databind/type/HierarchicType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/HierarchicType;

    move-result-object v2

    goto :goto_0
.end method

.method protected _findSuperTypeChain(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/HierarchicType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/type/HierarchicType;"
        }
    .end annotation

    .prologue
    .line 1207
    .local p1, "subtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "supertype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1208
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_findSuperInterfaceChain(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/HierarchicType;

    move-result-object v0

    .line 1210
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_findSuperClassChain(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/HierarchicType;

    move-result-object v0

    goto :goto_0
.end method

.method protected _fromArrayType(Ljava/lang/reflect/GenericArrayType;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 3
    .param p1, "type"    # Ljava/lang/reflect/GenericArrayType;
    .param p2, "context"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .prologue
    const/4 v2, 0x0

    .line 1075
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 1076
    .local v0, "compType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-static {v0, v2, v2}, Lcom/fasterxml/jackson/databind/type/ArrayType;->construct(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;

    move-result-object v1

    return-object v1
.end method

.method protected _fromClass(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 11
    .param p2, "context"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;",
            ")",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v10, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 881
    const-class v6, Ljava/lang/String;

    if-ne p1, v6, :cond_1

    sget-object v3, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_STRING:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 939
    :cond_0
    :goto_0
    return-object v3

    .line 882
    :cond_1
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v6, :cond_2

    sget-object v3, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_BOOL:Lcom/fasterxml/jackson/databind/type/SimpleType;

    goto :goto_0

    .line 883
    :cond_2
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v6, :cond_3

    sget-object v3, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_INT:Lcom/fasterxml/jackson/databind/type/SimpleType;

    goto :goto_0

    .line 884
    :cond_3
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v6, :cond_4

    sget-object v3, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_LONG:Lcom/fasterxml/jackson/databind/type/SimpleType;

    goto :goto_0

    .line 887
    :cond_4
    new-instance v0, Lcom/fasterxml/jackson/databind/type/ClassKey;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V

    .line 888
    .local v0, "key":Lcom/fasterxml/jackson/databind/type/ClassKey;
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_typeCache:Lcom/fasterxml/jackson/databind/util/LRUMap;

    invoke-virtual {v6, v0}, Lcom/fasterxml/jackson/databind/util/LRUMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/JavaType;

    .line 889
    .local v3, "result":Lcom/fasterxml/jackson/databind/JavaType;
    if-nez v3, :cond_0

    .line 901
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 902
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0, v6, v7}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v6

    invoke-static {v6, v7, v7}, Lcom/fasterxml/jackson/databind/type/ArrayType;->construct(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;

    move-result-object v3

    .line 938
    :goto_1
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_typeCache:Lcom/fasterxml/jackson/databind/util/LRUMap;

    invoke-virtual {v6, v0, v3}, Lcom/fasterxml/jackson/databind/util/LRUMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 906
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 907
    new-instance v3, Lcom/fasterxml/jackson/databind/type/SimpleType;

    .end local v3    # "result":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-direct {v3, p1}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;)V

    .restart local v3    # "result":Lcom/fasterxml/jackson/databind/JavaType;
    goto :goto_1

    .line 912
    :cond_6
    const-class v6, Ljava/util/Map;

    invoke-virtual {v6, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 913
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_mapType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    goto :goto_1

    .line 914
    :cond_7
    const-class v6, Ljava/util/Collection;

    invoke-virtual {v6, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 915
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_collectionType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    goto :goto_1

    .line 918
    :cond_8
    const-class v6, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 920
    const-class v6, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p1, v6}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 921
    .local v2, "pts":[Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v2, :cond_9

    array-length v6, v2

    if-eq v6, v9, :cond_a

    :cond_9
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    .line 922
    .local v4, "rt":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_2
    invoke-virtual {p0, p1, v4}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructReferenceType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    .line 924
    goto :goto_1

    .line 921
    .end local v4    # "rt":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_a
    aget-object v4, v2, v8

    goto :goto_2

    .line 924
    .end local v2    # "pts":[Lcom/fasterxml/jackson/databind/JavaType;
    :cond_b
    const-class v6, Ljava/util/Map$Entry;

    invoke-virtual {v6, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 925
    const-class v6, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1, v6}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 927
    .restart local v2    # "pts":[Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v2, :cond_c

    array-length v6, v2

    if-eq v6, v10, :cond_d

    .line 928
    :cond_c
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    .local v5, "vt":Lcom/fasterxml/jackson/databind/JavaType;
    move-object v1, v5

    .line 933
    .local v1, "kt":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_3
    const-class v6, Ljava/util/Map$Entry;

    new-array v7, v10, [Lcom/fasterxml/jackson/databind/JavaType;

    aput-object v1, v7, v8

    aput-object v5, v7, v9

    invoke-virtual {p0, p1, v6, v7}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSimpleType(Ljava/lang/Class;Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    .line 934
    goto :goto_1

    .line 930
    .end local v1    # "kt":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v5    # "vt":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_d
    aget-object v1, v2, v8

    .line 931
    .restart local v1    # "kt":Lcom/fasterxml/jackson/databind/JavaType;
    aget-object v5, v2, v9

    .restart local v5    # "vt":Lcom/fasterxml/jackson/databind/JavaType;
    goto :goto_3

    .line 935
    .end local v1    # "kt":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v2    # "pts":[Lcom/fasterxml/jackson/databind/JavaType;
    .end local v5    # "vt":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_e
    new-instance v3, Lcom/fasterxml/jackson/databind/type/SimpleType;

    .end local v3    # "result":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-direct {v3, p1}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;)V

    .restart local v3    # "result":Lcom/fasterxml/jackson/databind/JavaType;
    goto :goto_1
.end method

.method protected _fromParamType(Ljava/lang/reflect/ParameterizedType;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 17
    .param p1, "type"    # Ljava/lang/reflect/ParameterizedType;
    .param p2, "context"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .prologue
    .line 991
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    .line 992
    .local v10, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 993
    .local v2, "args":[Ljava/lang/reflect/Type;
    if-nez v2, :cond_1

    const/4 v7, 0x0

    .line 997
    .local v7, "paramCount":I
    :goto_0
    if-nez v7, :cond_2

    .line 998
    sget-object v8, Lcom/fasterxml/jackson/databind/type/TypeFactory;->NO_TYPES:[Lcom/fasterxml/jackson/databind/JavaType;

    .line 1007
    .local v8, "pt":[Lcom/fasterxml/jackson/databind/JavaType;
    :cond_0
    const-class v14, Ljava/util/Map;

    invoke-virtual {v14, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1009
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v10, v8}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSimpleType(Ljava/lang/Class;Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v12

    .line 1012
    .local v12, "subtype":Lcom/fasterxml/jackson/databind/JavaType;
    const-class v14, Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v6

    .line 1013
    .local v6, "mapParams":[Lcom/fasterxml/jackson/databind/JavaType;
    array-length v14, v6

    const/4 v15, 0x2

    if-eq v14, v15, :cond_3

    .line 1014
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Could not find 2 type parameters for Map class "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " (found "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    array-length v0, v6

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 993
    .end local v6    # "mapParams":[Lcom/fasterxml/jackson/databind/JavaType;
    .end local v7    # "paramCount":I
    .end local v8    # "pt":[Lcom/fasterxml/jackson/databind/JavaType;
    .end local v12    # "subtype":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_1
    array-length v7, v2

    goto :goto_0

    .line 1000
    .restart local v7    # "paramCount":I
    :cond_2
    new-array v8, v7, [Lcom/fasterxml/jackson/databind/JavaType;

    .line 1001
    .restart local v8    # "pt":[Lcom/fasterxml/jackson/databind/JavaType;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v7, :cond_0

    .line 1002
    aget-object v14, v2, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v14, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v14

    aput-object v14, v8, v4

    .line 1001
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1016
    .end local v4    # "i":I
    .restart local v6    # "mapParams":[Lcom/fasterxml/jackson/databind/JavaType;
    .restart local v12    # "subtype":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_3
    const/4 v14, 0x0

    aget-object v14, v6, v14

    const/4 v15, 0x1

    aget-object v15, v6, v15

    invoke-static {v10, v14, v15}, Lcom/fasterxml/jackson/databind/type/MapType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v14

    .line 1070
    .end local v6    # "mapParams":[Lcom/fasterxml/jackson/databind/JavaType;
    .end local v12    # "subtype":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_2
    return-object v14

    .line 1018
    :cond_4
    const-class v14, Ljava/util/Collection;

    invoke-virtual {v14, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1020
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v10, v8}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSimpleType(Ljava/lang/Class;Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v12

    .line 1021
    .restart local v12    # "subtype":Lcom/fasterxml/jackson/databind/JavaType;
    const-class v14, Ljava/util/Collection;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    .line 1022
    .local v3, "collectionParams":[Lcom/fasterxml/jackson/databind/JavaType;
    array-length v14, v3

    const/4 v15, 0x1

    if-eq v14, v15, :cond_5

    .line 1023
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Could not find 1 type parameter for Collection class "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " (found "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    array-length v0, v3

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1025
    :cond_5
    const/4 v14, 0x0

    aget-object v14, v3, v14

    invoke-static {v10, v14}, Lcom/fasterxml/jackson/databind/type/CollectionType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object v14

    goto :goto_2

    .line 1028
    .end local v3    # "collectionParams":[Lcom/fasterxml/jackson/databind/JavaType;
    .end local v12    # "subtype":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_6
    const-class v14, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v14, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 1029
    const/4 v11, 0x0

    .line 1031
    .local v11, "rt":Lcom/fasterxml/jackson/databind/JavaType;
    const-class v14, Ljava/util/concurrent/atomic/AtomicReference;

    if-ne v10, v14, :cond_9

    .line 1032
    const/4 v14, 0x1

    if-ne v7, v14, :cond_7

    .line 1033
    const/4 v14, 0x0

    aget-object v11, v8, v14

    .line 1042
    :cond_7
    :goto_3
    if-nez v11, :cond_8

    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v11

    .end local v11    # "rt":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructReferenceType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v14

    goto :goto_2

    .line 1036
    .restart local v11    # "rt":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v10, v8}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSimpleType(Ljava/lang/Class;Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v12

    .line 1037
    .restart local v12    # "subtype":Lcom/fasterxml/jackson/databind/JavaType;
    const-class v14, Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v12, v14, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v9

    .line 1038
    .local v9, "pts":[Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v9, :cond_7

    array-length v14, v9

    const/4 v15, 0x1

    if-ne v14, v15, :cond_7

    .line 1039
    const/4 v14, 0x0

    aget-object v11, v9, v14

    goto :goto_3

    .line 1044
    .end local v9    # "pts":[Lcom/fasterxml/jackson/databind/JavaType;
    .end local v11    # "rt":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v12    # "subtype":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_a
    const-class v14, Ljava/util/Map$Entry;

    invoke-virtual {v14, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 1045
    const/4 v5, 0x0

    .local v5, "kt":Lcom/fasterxml/jackson/databind/JavaType;
    const/4 v13, 0x0

    .line 1047
    .local v13, "vt":Lcom/fasterxml/jackson/databind/JavaType;
    const-class v14, Ljava/util/Map$Entry;

    if-ne v10, v14, :cond_e

    .line 1048
    const/4 v14, 0x2

    if-ne v7, v14, :cond_b

    .line 1049
    const/4 v14, 0x0

    aget-object v5, v8, v14

    .line 1050
    const/4 v14, 0x1

    aget-object v13, v8, v14

    .line 1062
    :cond_b
    :goto_4
    const-class v14, Ljava/util/Map$Entry;

    const/4 v15, 0x2

    new-array v15, v15, [Lcom/fasterxml/jackson/databind/JavaType;

    const/16 v16, 0x0

    if-nez v5, :cond_c

    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    .end local v5    # "kt":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_c
    aput-object v5, v15, v16

    const/16 v16, 0x1

    if-nez v13, :cond_d

    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v13

    .end local v13    # "vt":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_d
    aput-object v13, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v14, v15}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSimpleType(Ljava/lang/Class;Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v14

    goto/16 :goto_2

    .line 1055
    .restart local v5    # "kt":Lcom/fasterxml/jackson/databind/JavaType;
    .restart local v13    # "vt":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v10, v8}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSimpleType(Ljava/lang/Class;Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v12

    .line 1056
    .restart local v12    # "subtype":Lcom/fasterxml/jackson/databind/JavaType;
    const-class v14, Ljava/util/Map$Entry;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v12, v14, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v9

    .line 1057
    .restart local v9    # "pts":[Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v9, :cond_b

    array-length v14, v9

    const/4 v15, 0x2

    if-ne v14, v15, :cond_b

    .line 1058
    const/4 v14, 0x0

    aget-object v5, v9, v14

    .line 1059
    const/4 v14, 0x1

    aget-object v13, v9, v14

    goto :goto_4

    .line 1067
    .end local v5    # "kt":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v9    # "pts":[Lcom/fasterxml/jackson/databind/JavaType;
    .end local v12    # "subtype":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v13    # "vt":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_f
    if-nez v7, :cond_10

    .line 1068
    new-instance v14, Lcom/fasterxml/jackson/databind/type/SimpleType;

    invoke-direct {v14, v10}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;)V

    goto/16 :goto_2

    .line 1070
    :cond_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v8}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSimpleType(Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v14

    goto/16 :goto_2
.end method

.method protected _fromParameterizedClass(Ljava/lang/Class;Ljava/util/List;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "paramTypes":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/JavaType;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 948
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 949
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3, v4}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    invoke-static {v3, v4, v4}, Lcom/fasterxml/jackson/databind/type/ArrayType;->construct(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;

    move-result-object v3

    .line 976
    :goto_0
    return-object v3

    .line 951
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 952
    new-instance v3, Lcom/fasterxml/jackson/databind/type/SimpleType;

    invoke-direct {v3, p1}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    .line 954
    :cond_1
    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 957
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 958
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/JavaType;

    .line 959
    .local v1, "keyType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/JavaType;

    move-object v0, v3

    .line 961
    .local v0, "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_1
    invoke-static {p1, v1, v0}, Lcom/fasterxml/jackson/databind/type/MapType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v3

    goto :goto_0

    .line 959
    .end local v0    # "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    goto :goto_1

    .line 963
    .end local v1    # "keyType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_3
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_mapType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    goto :goto_0

    .line 965
    :cond_4
    const-class v3, Ljava/util/Collection;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 966
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v6, :cond_5

    .line 967
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/JavaType;

    invoke-static {p1, v3}, Lcom/fasterxml/jackson/databind/type/CollectionType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object v3

    goto :goto_0

    .line 969
    :cond_5
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_collectionType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    goto :goto_0

    .line 971
    :cond_6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_7

    .line 972
    new-instance v3, Lcom/fasterxml/jackson/databind/type/SimpleType;

    invoke-direct {v3, p1}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    .line 975
    :cond_7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/fasterxml/jackson/databind/JavaType;

    invoke-interface {p2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/fasterxml/jackson/databind/JavaType;

    .line 976
    .local v2, "pt":[Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {p0, p1, p1, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSimpleType(Ljava/lang/Class;Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    goto :goto_0
.end method

.method protected _fromVariable(Ljava/lang/reflect/TypeVariable;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 5
    .param p2, "context"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;",
            ")",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .local p1, "type":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v4, 0x0

    .line 1081
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1083
    .local v2, "name":Ljava/lang/String;
    if-nez p2, :cond_1

    .line 1085
    new-instance p2, Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .end local p2    # "context":Lcom/fasterxml/jackson/databind/type/TypeBindings;
    const/4 v3, 0x0

    check-cast v3, Ljava/lang/Class;

    invoke-direct {p2, p0, v3}, Lcom/fasterxml/jackson/databind/type/TypeBindings;-><init>(Lcom/fasterxml/jackson/databind/type/TypeFactory;Ljava/lang/Class;)V

    .line 1103
    .restart local p2    # "context":Lcom/fasterxml/jackson/databind/type/TypeBindings;
    :cond_0
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1118
    .local v1, "bounds":[Ljava/lang/reflect/Type;
    invoke-virtual {p2, v2}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_addPlaceholder(Ljava/lang/String;)V

    .line 1119
    aget-object v3, v1, v4

    invoke-virtual {p0, v3, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .end local v1    # "bounds":[Ljava/lang/reflect/Type;
    :goto_0
    return-object v0

    .line 1092
    :cond_1
    invoke-virtual {p2, v2, v4}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->findType(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 1093
    .local v0, "actualType":Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method protected _fromWildcard(Ljava/lang/reflect/WildcardType;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2
    .param p1, "type"    # Ljava/lang/reflect/WildcardType;
    .param p2, "context"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .prologue
    .line 1132
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized _hashMapSuperInterfaceChain(Lcom/fasterxml/jackson/databind/type/HierarchicType;)Lcom/fasterxml/jackson/databind/type/HierarchicType;
    .locals 3
    .param p1, "current"    # Lcom/fasterxml/jackson/databind/type/HierarchicType;

    .prologue
    .line 1288
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_cachedHashMapType:Lcom/fasterxml/jackson/databind/type/HierarchicType;

    if-nez v2, :cond_0

    .line 1289
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->deepCloneWithoutSubtype()Lcom/fasterxml/jackson/databind/type/HierarchicType;

    move-result-object v0

    .line 1290
    .local v0, "base":Lcom/fasterxml/jackson/databind/type/HierarchicType;
    const-class v2, Ljava/util/Map;

    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_doFindSuperInterfaceChain(Lcom/fasterxml/jackson/databind/type/HierarchicType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/HierarchicType;

    .line 1291
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->getSuperType()Lcom/fasterxml/jackson/databind/type/HierarchicType;

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_cachedHashMapType:Lcom/fasterxml/jackson/databind/type/HierarchicType;

    .line 1293
    .end local v0    # "base":Lcom/fasterxml/jackson/databind/type/HierarchicType;
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_cachedHashMapType:Lcom/fasterxml/jackson/databind/type/HierarchicType;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->deepCloneWithoutSubtype()Lcom/fasterxml/jackson/databind/type/HierarchicType;

    move-result-object v1

    .line 1294
    .local v1, "t":Lcom/fasterxml/jackson/databind/type/HierarchicType;
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->setSuperType(Lcom/fasterxml/jackson/databind/type/HierarchicType;)V

    .line 1295
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->setSubType(Lcom/fasterxml/jackson/databind/type/HierarchicType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1296
    monitor-exit p0

    return-object p1

    .line 1288
    .end local v1    # "t":Lcom/fasterxml/jackson/databind/type/HierarchicType;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected _resolveVariableViaSubTypes(Lcom/fasterxml/jackson/databind/type/HierarchicType;Ljava/lang/String;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 7
    .param p1, "leafType"    # Lcom/fasterxml/jackson/databind/type/HierarchicType;
    .param p2, "variableName"    # Ljava/lang/String;
    .param p3, "bindings"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .prologue
    .line 1170
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->isGeneric()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1171
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->getRawClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v4

    .line 1172
    .local v4, "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, v4

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1173
    aget-object v2, v4, v0

    .line 1174
    .local v2, "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {v2}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1176
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->asGeneric()Ljava/lang/reflect/ParameterizedType;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    aget-object v3, v5, v0

    .line 1177
    .local v3, "type":Ljava/lang/reflect/Type;
    instance-of v5, v3, Ljava/lang/reflect/TypeVariable;

    if-eqz v5, :cond_0

    .line 1178
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->getSubType()Lcom/fasterxml/jackson/databind/type/HierarchicType;

    move-result-object v5

    check-cast v3, Ljava/lang/reflect/TypeVariable;

    .end local v3    # "type":Ljava/lang/reflect/Type;
    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6, p3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_resolveVariableViaSubTypes(Lcom/fasterxml/jackson/databind/type/HierarchicType;Ljava/lang/String;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    .line 1185
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .end local v4    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :goto_1
    return-object v5

    .line 1181
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    .restart local v2    # "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .restart local v3    # "type":Ljava/lang/reflect/Type;
    .restart local v4    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_0
    invoke-virtual {p0, v3, p3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    goto :goto_1

    .line 1172
    .end local v3    # "type":Ljava/lang/reflect/Type;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1185
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .end local v4    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    goto :goto_1
.end method

.method protected _unknownType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2

    .prologue
    .line 1189
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    const-class v1, Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method protected classForName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 254
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected classForName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "initialize"    # Z
    .param p3, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 250
    const/4 v0, 0x1

    invoke-static {p1, v0, p3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public clearCache()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_typeCache:Lcom/fasterxml/jackson/databind/util/LRUMap;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/LRUMap;->clear()V

    .line 164
    return-void
.end method

.method public constructArrayType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/ArrayType;
    .locals 1
    .param p1, "elementType"    # Lcom/fasterxml/jackson/databind/JavaType;

    .prologue
    const/4 v0, 0x0

    .line 554
    invoke-static {p1, v0, v0}, Lcom/fasterxml/jackson/databind/type/ArrayType;->construct(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;

    move-result-object v0

    return-object v0
.end method

.method public constructArrayType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/ArrayType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/type/ArrayType;"
        }
    .end annotation

    .prologue
    .local p1, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 544
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lcom/fasterxml/jackson/databind/type/ArrayType;->construct(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;

    move-result-object v0

    return-object v0
.end method

.method public constructCollectionLikeType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;
    .locals 1
    .param p2, "elementType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/type/CollectionLikeType;"
        }
    .end annotation

    .prologue
    .line 594
    .local p1, "collectionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;

    move-result-object v0

    return-object v0
.end method

.method public constructCollectionLikeType(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/type/CollectionLikeType;"
        }
    .end annotation

    .prologue
    .line 584
    .local p1, "collectionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;

    move-result-object v0

    return-object v0
.end method

.method public constructCollectionType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionType;
    .locals 1
    .param p2, "elementType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Collection;",
            ">;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/type/CollectionType;"
        }
    .end annotation

    .prologue
    .line 574
    .local p1, "collectionClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Collection;>;"
    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/type/CollectionType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object v0

    return-object v0
.end method

.method public constructCollectionType(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/CollectionType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Collection;",
            ">;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/type/CollectionType;"
        }
    .end annotation

    .prologue
    .line 564
    .local p1, "collectionClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Collection;>;"
    .local p2, "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/type/CollectionType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object v0

    return-object v0
.end method

.method public constructFromCanonical(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "canonical"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_parser:Lcom/fasterxml/jackson/databind/type/TypeParser;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeParser;->parse(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public constructMapLikeType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapLikeType;
    .locals 1
    .param p2, "keyType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "valueType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/type/MapLikeType;"
        }
    .end annotation

    .prologue
    .line 624
    .local p1, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1, p2, p3}, Lcom/fasterxml/jackson/databind/type/MapLikeType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapLikeType;

    move-result-object v0

    return-object v0
.end method

.method public constructMapLikeType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/MapLikeType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/type/MapLikeType;"
        }
    .end annotation

    .prologue
    .line 634
    .local p1, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/databind/type/MapType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public constructMapType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;
    .locals 1
    .param p2, "keyType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "valueType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Map;",
            ">;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/type/MapType;"
        }
    .end annotation

    .prologue
    .line 604
    .local p1, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Map;>;"
    invoke-static {p1, p2, p3}, Lcom/fasterxml/jackson/databind/type/MapType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public constructMapType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/MapType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Map;",
            ">;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/type/MapType;"
        }
    .end annotation

    .prologue
    .line 614
    .local p1, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Map;>;"
    .local p2, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/databind/type/MapType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public varargs constructParametricType(Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p2, "parameterTypes"    # [Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 798
    .local p1, "parametrized":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructParametrizedType(Ljava/lang/Class;Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public varargs constructParametricType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 731
    .local p1, "parametrized":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructParametrizedType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public varargs constructParametrizedType(Ljava/lang/Class;Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 5
    .param p3, "parameterTypes"    # [Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;[",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .local p1, "parametrized":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parametersFor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 769
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 771
    array-length v1, p3

    if-eq v1, v4, :cond_0

    .line 772
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Need exactly 1 parameter type for arrays ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 774
    :cond_0
    aget-object v1, p3, v3

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructArrayType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/ArrayType;

    move-result-object v0

    .line 790
    .local v0, "resultType":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_0
    return-object v0

    .line 776
    .end local v0    # "resultType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_1
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 777
    array-length v1, p3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 778
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Need exactly 2 parameter types for Map types ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 780
    :cond_2
    aget-object v1, p3, v3

    aget-object v2, p3, v4

    invoke-virtual {p0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructMapType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v0

    .restart local v0    # "resultType":Lcom/fasterxml/jackson/databind/JavaType;
    goto :goto_0

    .line 782
    .end local v0    # "resultType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_3
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 783
    array-length v1, p3

    if-eq v1, v4, :cond_4

    .line 784
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Need exactly 1 parameter type for Collection types ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 786
    :cond_4
    aget-object v1, p3, v3

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructCollectionType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object v0

    .restart local v0    # "resultType":Lcom/fasterxml/jackson/databind/JavaType;
    goto :goto_0

    .line 788
    .end local v0    # "resultType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSimpleType(Ljava/lang/Class;Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .restart local v0    # "resultType":Lcom/fasterxml/jackson/databind/JavaType;
    goto :goto_0
.end method

.method public varargs constructParametrizedType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 718
    .local p1, "parametrized":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parametersFor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "parameterClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v1, p3

    .line 719
    .local v1, "len":I
    new-array v2, v1, [Lcom/fasterxml/jackson/databind/JavaType;

    .line 720
    .local v2, "pt":[Lcom/fasterxml/jackson/databind/JavaType;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 721
    aget-object v3, p3, v0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromClass(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    aput-object v3, v2, v0

    .line 720
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 723
    :cond_0
    invoke-virtual {p0, p1, p2, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructParametrizedType(Ljava/lang/Class;Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    return-object v3
.end method

.method public constructRawCollectionLikeType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/type/CollectionLikeType;"
        }
    .end annotation

    .prologue
    .line 835
    .local p1, "collectionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;

    move-result-object v0

    return-object v0
.end method

.method public constructRawCollectionType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/CollectionType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Collection;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/type/CollectionType;"
        }
    .end annotation

    .prologue
    .line 820
    .local p1, "collectionClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Collection;>;"
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/type/CollectionType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object v0

    return-object v0
.end method

.method public constructRawMapLikeType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/MapLikeType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/type/MapLikeType;"
        }
    .end annotation

    .prologue
    .line 865
    .local p1, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/databind/type/MapLikeType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapLikeType;

    move-result-object v0

    return-object v0
.end method

.method public constructRawMapType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/MapType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Map;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/type/MapType;"
        }
    .end annotation

    .prologue
    .line 850
    .local p1, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Map;>;"
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/databind/type/MapType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public constructReferenceType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 6
    .param p2, "refType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 672
    new-instance v0, Lcom/fasterxml/jackson/databind/type/ReferenceType;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/ReferenceType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public constructSimpleType(Ljava/lang/Class;Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 11
    .param p3, "parameterTypes"    # [Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;[",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterTarget":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 654
    invoke-virtual {p2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v10

    .line 655
    .local v10, "typeVars":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    array-length v0, v10

    array-length v1, p3

    if-eq v0, v1, :cond_0

    .line 656
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parameter type mismatch for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " (and target "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "): expected "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v3, v10

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " parameters, was given "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v3, p3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 660
    :cond_0
    array-length v0, v10

    new-array v2, v0, [Ljava/lang/String;

    .line 661
    .local v2, "names":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    array-length v9, v10

    .local v9, "len":I
    :goto_0
    if-ge v8, v9, :cond_1

    .line 662
    aget-object v0, v10, v8

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v8

    .line 661
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 664
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v3, p3

    move-object v5, v4

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;)V

    return-object v0
.end method

.method public constructSimpleType(Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p2, "parameterTypes"    # [Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 644
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSimpleType(Ljava/lang/Class;Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 5
    .param p1, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 287
    .local p2, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p2, :cond_0

    .line 315
    .end local p1    # "baseType":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_0
    return-object p1

    .line 291
    .restart local p1    # "baseType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_0
    instance-of v2, p1, Lcom/fasterxml/jackson/databind/type/SimpleType;

    if-eqz v2, :cond_5

    .line 293
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_1

    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 297
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 298
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not subtype of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 301
    :cond_2
    new-instance v2, Lcom/fasterxml/jackson/databind/type/TypeBindings;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/fasterxml/jackson/databind/type/TypeBindings;-><init>(Lcom/fasterxml/jackson/databind/type/TypeFactory;Ljava/lang/Class;)V

    invoke-virtual {p0, p2, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromClass(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    .line 303
    .local v1, "subtype":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v0

    .line 304
    .local v0, "h":Ljava/lang/Object;
    if-eqz v0, :cond_3

    .line 305
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/JavaType;->withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    .line 307
    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v0

    .line 308
    if-eqz v0, :cond_4

    .line 309
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/JavaType;->withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    :cond_4
    move-object p1, v1

    .line 311
    goto :goto_0

    .line 315
    .end local v0    # "h":Ljava/lang/Object;
    .end local v1    # "subtype":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_5
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/JavaType;->narrowBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    goto :goto_0
.end method

.method public constructType(Lcom/fasterxml/jackson/core/type/TypeReference;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/type/TypeReference",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 474
    .local p1, "typeRef":Lcom/fasterxml/jackson/core/type/TypeReference;, "Lcom/fasterxml/jackson/core/type/TypeReference<*>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/type/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 466
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "context"    # Lcom/fasterxml/jackson/databind/JavaType;

    .prologue
    .line 483
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 484
    .local v0, "b":Lcom/fasterxml/jackson/databind/type/TypeBindings;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    return-object v1

    .line 483
    .end local v0    # "b":Lcom/fasterxml/jackson/databind/type/TypeBindings;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;

    invoke-direct {v0, p0, p2}, Lcom/fasterxml/jackson/databind/type/TypeBindings;-><init>(Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/JavaType;)V

    goto :goto_0
.end method

.method public constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "bindings"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .prologue
    .line 470
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public constructType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 478
    .local p2, "context":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 479
    .local v0, "b":Lcom/fasterxml/jackson/databind/type/TypeBindings;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    return-object v1

    .line 478
    .end local v0    # "b":Lcom/fasterxml/jackson/databind/type/TypeBindings;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;

    invoke-direct {v0, p0, p2}, Lcom/fasterxml/jackson/databind/type/TypeBindings;-><init>(Lcom/fasterxml/jackson/databind/type/TypeFactory;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 6
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 216
    const/16 v4, 0x2e

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    .line 217
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_findPrimitive(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 218
    .local v2, "prim":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_0

    .line 236
    .end local v2    # "prim":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v2

    .line 223
    :cond_0
    const/4 v3, 0x0

    .line 224
    .local v3, "prob":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 225
    .local v1, "loader":Ljava/lang/ClassLoader;
    if-nez v1, :cond_1

    .line 226
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 228
    :cond_1
    if-eqz v1, :cond_2

    .line 230
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v4, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->classForName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    .line 236
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->classForName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 237
    :catch_1
    move-exception v0

    .line 238
    .restart local v0    # "e":Ljava/lang/Exception;
    if-nez v3, :cond_3

    .line 239
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    .line 242
    :cond_3
    instance-of v4, v3, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_4

    .line 243
    check-cast v3, Ljava/lang/RuntimeException;

    .end local v3    # "prob":Ljava/lang/Throwable;
    throw v3

    .line 245
    .restart local v3    # "prob":Ljava/lang/Throwable;
    :cond_4
    new-instance v4, Ljava/lang/ClassNotFoundException;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public findTypeParameters(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;
    .locals 5
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class",
            "<*>;)[",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 352
    .local p2, "expType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getParameterSource()Ljava/lang/Class;

    move-result-object v4

    if-ne p2, v4, :cond_2

    .line 354
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->containedTypeCount()I

    move-result v0

    .line 355
    .local v0, "count":I
    if-nez v0, :cond_1

    const/4 v3, 0x0

    .line 369
    .end local v0    # "count":I
    :cond_0
    :goto_0
    return-object v3

    .line 356
    .restart local v0    # "count":I
    :cond_1
    new-array v3, v0, [Lcom/fasterxml/jackson/databind/JavaType;

    .line 357
    .local v3, "result":[Lcom/fasterxml/jackson/databind/JavaType;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 358
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/JavaType;->containedType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    aput-object v4, v3, v1

    .line 357
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 368
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "result":[Lcom/fasterxml/jackson/databind/JavaType;
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    .line 369
    .local v2, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v4, Lcom/fasterxml/jackson/databind/type/TypeBindings;

    invoke-direct {v4, p0, p1}, Lcom/fasterxml/jackson/databind/type/TypeBindings;-><init>(Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/JavaType;)V

    invoke-virtual {p0, v2, p2, v4}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    goto :goto_0
.end method

.method public findTypeParameters(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)[Lcom/fasterxml/jackson/databind/JavaType;
    .locals 5
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "bindings"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;",
            ")[",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 377
    .local p2, "expType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getParameterSource()Ljava/lang/Class;

    move-result-object v4

    if-ne p2, v4, :cond_2

    .line 378
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->containedTypeCount()I

    move-result v0

    .line 379
    .local v0, "count":I
    if-nez v0, :cond_1

    const/4 v3, 0x0

    .line 387
    .end local v0    # "count":I
    :cond_0
    :goto_0
    return-object v3

    .line 380
    .restart local v0    # "count":I
    :cond_1
    new-array v3, v0, [Lcom/fasterxml/jackson/databind/JavaType;

    .line 381
    .local v3, "result":[Lcom/fasterxml/jackson/databind/JavaType;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 382
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/JavaType;->containedType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    aput-object v4, v3, v1

    .line 381
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 386
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "result":[Lcom/fasterxml/jackson/databind/JavaType;
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    .line 387
    .local v2, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v2, p2, p3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    goto :goto_0
.end method

.method public findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)[",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 391
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "expType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/type/TypeBindings;-><init>(Lcom/fasterxml/jackson/databind/type/TypeFactory;Ljava/lang/Class;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)[Lcom/fasterxml/jackson/databind/JavaType;
    .locals 15
    .param p3, "bindings"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;",
            ")[",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 397
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "expType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p0 .. p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_findSuperTypeChain(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/HierarchicType;

    move-result-object v8

    .line 399
    .local v8, "subType":Lcom/fasterxml/jackson/databind/type/HierarchicType;
    if-nez v8, :cond_0

    .line 400
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Class "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " is not a subtype of "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 403
    :cond_0
    move-object v9, v8

    .line 404
    .local v9, "superType":Lcom/fasterxml/jackson/databind/type/HierarchicType;
    :goto_0
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->getSuperType()Lcom/fasterxml/jackson/databind/type/HierarchicType;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 405
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->getSuperType()Lcom/fasterxml/jackson/databind/type/HierarchicType;

    move-result-object v9

    .line 406
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->getRawClass()Ljava/lang/Class;

    move-result-object v7

    .line 407
    .local v7, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v5, Lcom/fasterxml/jackson/databind/type/TypeBindings;

    invoke-direct {v5, p0, v7}, Lcom/fasterxml/jackson/databind/type/TypeBindings;-><init>(Lcom/fasterxml/jackson/databind/type/TypeFactory;Ljava/lang/Class;)V

    .line 408
    .local v5, "newBindings":Lcom/fasterxml/jackson/databind/type/TypeBindings;
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->isGeneric()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 409
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->asGeneric()Ljava/lang/reflect/ParameterizedType;

    move-result-object v6

    .line 410
    .local v6, "pt":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v6}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 411
    .local v1, "actualTypes":[Ljava/lang/reflect/Type;
    invoke-virtual {v7}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v11

    .line 412
    .local v11, "vars":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    array-length v3, v1

    .line 413
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 414
    aget-object v12, v11, v2

    invoke-interface {v12}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v4

    .line 415
    .local v4, "name":Ljava/lang/String;
    aget-object v12, v1, v2

    move-object/from16 v0, p3

    invoke-virtual {p0, v12, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v10

    .line 416
    .local v10, "type":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v5, v4, v10}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->addBinding(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 413
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 419
    .end local v1    # "actualTypes":[Ljava/lang/reflect/Type;
    .end local v2    # "i":I
    .end local v3    # "len":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "pt":Ljava/lang/reflect/ParameterizedType;
    .end local v10    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v11    # "vars":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_1
    move-object/from16 p3, v5

    .line 420
    goto :goto_0

    .line 423
    .end local v5    # "newBindings":Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .end local v7    # "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->isGeneric()Z

    move-result v12

    if-nez v12, :cond_3

    .line 424
    const/4 v12, 0x0

    .line 426
    :goto_2
    return-object v12

    :cond_3
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->typesAsArray()[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v12

    goto :goto_2
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public moreSpecificType(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 3
    .param p1, "type1"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "type2"    # Lcom/fasterxml/jackson/databind/JavaType;

    .prologue
    .line 441
    if-nez p1, :cond_1

    move-object p1, p2

    .line 456
    .end local p1    # "type1":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_0
    :goto_0
    return-object p1

    .line 444
    .restart local p1    # "type1":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_1
    if-eqz p2, :cond_0

    .line 447
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 448
    .local v0, "raw1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    .line 449
    .local v1, "raw2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v0, v1, :cond_0

    .line 453
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object p1, p2

    .line 454
    goto :goto_0
.end method

.method public uncheckedSimpleType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 683
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public withClassLoader(Ljava/lang/ClassLoader;)Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .locals 3
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 142
    new-instance v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_parser:Lcom/fasterxml/jackson/databind/type/TypeParser;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_modifiers:[Lcom/fasterxml/jackson/databind/type/TypeModifier;

    invoke-direct {v0, v1, v2, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;-><init>(Lcom/fasterxml/jackson/databind/type/TypeParser;[Lcom/fasterxml/jackson/databind/type/TypeModifier;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public withModifier(Lcom/fasterxml/jackson/databind/type/TypeModifier;)Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .locals 4
    .param p1, "mod"    # Lcom/fasterxml/jackson/databind/type/TypeModifier;

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 133
    new-instance v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_parser:Lcom/fasterxml/jackson/databind/type/TypeParser;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_modifiers:[Lcom/fasterxml/jackson/databind/type/TypeModifier;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_classLoader:Ljava/lang/ClassLoader;

    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;-><init>(Lcom/fasterxml/jackson/databind/type/TypeParser;[Lcom/fasterxml/jackson/databind/type/TypeModifier;Ljava/lang/ClassLoader;)V

    .line 138
    :goto_0
    return-object v0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_modifiers:[Lcom/fasterxml/jackson/databind/type/TypeModifier;

    if-nez v0, :cond_1

    .line 136
    new-instance v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_parser:Lcom/fasterxml/jackson/databind/type/TypeParser;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/fasterxml/jackson/databind/type/TypeModifier;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_classLoader:Ljava/lang/ClassLoader;

    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;-><init>(Lcom/fasterxml/jackson/databind/type/TypeParser;[Lcom/fasterxml/jackson/databind/type/TypeModifier;Ljava/lang/ClassLoader;)V

    goto :goto_0

    .line 138
    :cond_1
    new-instance v1, Lcom/fasterxml/jackson/databind/type/TypeFactory;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_parser:Lcom/fasterxml/jackson/databind/type/TypeParser;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_modifiers:[Lcom/fasterxml/jackson/databind/type/TypeModifier;

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/type/TypeModifier;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_classLoader:Ljava/lang/ClassLoader;

    invoke-direct {v1, v2, v0, v3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;-><init>(Lcom/fasterxml/jackson/databind/type/TypeParser;[Lcom/fasterxml/jackson/databind/type/TypeModifier;Ljava/lang/ClassLoader;)V

    move-object v0, v1

    goto :goto_0
.end method
