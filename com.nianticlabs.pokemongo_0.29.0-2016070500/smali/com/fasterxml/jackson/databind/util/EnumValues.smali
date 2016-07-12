.class public final Lcom/fasterxml/jackson/databind/util/EnumValues;
.super Ljava/lang/Object;
.source "EnumValues.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient _asMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<*",
            "Lcom/fasterxml/jackson/core/SerializableString;",
            ">;"
        }
    .end annotation
.end field

.field private final _enumClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Enum",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final _textual:[Lcom/fasterxml/jackson/core/SerializableString;

.field private final _values:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;[Lcom/fasterxml/jackson/core/SerializableString;)V
    .locals 1
    .param p2, "textual"    # [Lcom/fasterxml/jackson/core/SerializableString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Enum",
            "<*>;>;[",
            "Lcom/fasterxml/jackson/core/SerializableString;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/EnumValues;->_enumClass:Ljava/lang/Class;

    .line 28
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/EnumValues;->_values:[Ljava/lang/Enum;

    .line 29
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/util/EnumValues;->_textual:[Lcom/fasterxml/jackson/core/SerializableString;

    .line 30
    return-void
.end method

.method public static construct(Lcom/fasterxml/jackson/databind/SerializationConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/util/EnumValues;
    .locals 1
    .param p0, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Enum",
            "<*>;>;)",
            "Lcom/fasterxml/jackson/databind/util/EnumValues;"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_ENUMS_USING_TO_STRING:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-static {p0, p1}, Lcom/fasterxml/jackson/databind/util/EnumValues;->constructFromToString(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/util/EnumValues;

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/fasterxml/jackson/databind/util/EnumValues;->constructFromName(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/util/EnumValues;

    move-result-object v0

    goto :goto_0
.end method

.method public static constructFromName(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/util/EnumValues;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Enum",
            "<*>;>;)",
            "Lcom/fasterxml/jackson/databind/util/EnumValues;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findEnumType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 47
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Enum<*>;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Enum;

    .line 48
    .local v7, "values":[Ljava/lang/Enum;, "[Ljava/lang/Enum<*>;"
    if-eqz v7, :cond_1

    .line 49
    array-length v8, v7

    new-array v5, v8, [Lcom/fasterxml/jackson/core/SerializableString;

    .line 50
    .local v5, "textual":[Lcom/fasterxml/jackson/core/SerializableString;
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/Enum;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 51
    .local v2, "en":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v6

    .line 52
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-virtual {p0, v6}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->compileString(Ljava/lang/String;)Lcom/fasterxml/jackson/core/SerializableString;

    move-result-object v9

    aput-object v9, v5, v8

    .line 50
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 54
    .end local v2    # "en":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    .end local v6    # "value":Ljava/lang/String;
    :cond_0
    new-instance v8, Lcom/fasterxml/jackson/databind/util/EnumValues;

    invoke-direct {v8, p1, v5}, Lcom/fasterxml/jackson/databind/util/EnumValues;-><init>(Ljava/lang/Class;[Lcom/fasterxml/jackson/core/SerializableString;)V

    return-object v8

    .line 56
    .end local v0    # "arr$":[Ljava/lang/Enum;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "textual":[Lcom/fasterxml/jackson/core/SerializableString;
    :cond_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can not determine enum constants for Class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public static constructFromToString(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/util/EnumValues;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Enum",
            "<*>;>;)",
            "Lcom/fasterxml/jackson/databind/util/EnumValues;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findEnumType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 62
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Enum<*>;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Enum;

    .line 63
    .local v6, "values":[Ljava/lang/Enum;, "[Ljava/lang/Enum<*>;"
    if-eqz v6, :cond_1

    .line 64
    array-length v7, v6

    new-array v5, v7, [Lcom/fasterxml/jackson/core/SerializableString;

    .line 65
    .local v5, "textual":[Lcom/fasterxml/jackson/core/SerializableString;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/Enum;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 66
    .local v2, "en":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->compileString(Ljava/lang/String;)Lcom/fasterxml/jackson/core/SerializableString;

    move-result-object v8

    aput-object v8, v5, v7

    .line 65
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    .end local v2    # "en":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :cond_0
    new-instance v7, Lcom/fasterxml/jackson/databind/util/EnumValues;

    invoke-direct {v7, p1, v5}, Lcom/fasterxml/jackson/databind/util/EnumValues;-><init>(Ljava/lang/Class;[Lcom/fasterxml/jackson/core/SerializableString;)V

    return-object v7

    .line 70
    .end local v0    # "arr$":[Ljava/lang/Enum;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "textual":[Lcom/fasterxml/jackson/core/SerializableString;
    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can not determine enum constants for Class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method


# virtual methods
.method public enums()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Enum",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/EnumValues;->_values:[Ljava/lang/Enum;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnumClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Enum",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/EnumValues;->_enumClass:Ljava/lang/Class;

    return-object v0
.end method

.method public internalMap()Ljava/util/EnumMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap",
            "<*",
            "Lcom/fasterxml/jackson/core/SerializableString;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/util/EnumValues;->_asMap:Ljava/util/EnumMap;

    .line 96
    .local v5, "result":Ljava/util/EnumMap;, "Ljava/util/EnumMap<*Lcom/fasterxml/jackson/core/SerializableString;>;"
    if-nez v5, :cond_1

    .line 98
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 99
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Enum<*>;Lcom/fasterxml/jackson/core/SerializableString;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/EnumValues;->_values:[Ljava/lang/Enum;

    .local v0, "arr$":[Ljava/lang/Enum;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 100
    .local v1, "en":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/util/EnumValues;->_textual:[Lcom/fasterxml/jackson/core/SerializableString;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget-object v6, v6, v7

    invoke-interface {v4, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    .end local v1    # "en":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :cond_0
    new-instance v5, Ljava/util/EnumMap;

    .end local v5    # "result":Ljava/util/EnumMap;, "Ljava/util/EnumMap<*Lcom/fasterxml/jackson/core/SerializableString;>;"
    invoke-direct {v5, v4}, Ljava/util/EnumMap;-><init>(Ljava/util/Map;)V

    .line 104
    .end local v0    # "arr$":[Ljava/lang/Enum;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Enum<*>;Lcom/fasterxml/jackson/core/SerializableString;>;"
    .restart local v5    # "result":Ljava/util/EnumMap;, "Ljava/util/EnumMap<*Lcom/fasterxml/jackson/core/SerializableString;>;"
    :cond_1
    return-object v5
.end method

.method public serializedValueFor(Ljava/lang/Enum;)Lcom/fasterxml/jackson/core/SerializableString;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)",
            "Lcom/fasterxml/jackson/core/SerializableString;"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "key":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/EnumValues;->_textual:[Lcom/fasterxml/jackson/core/SerializableString;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/fasterxml/jackson/core/SerializableString;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/EnumValues;->_textual:[Lcom/fasterxml/jackson/core/SerializableString;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
