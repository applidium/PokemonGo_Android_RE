.class public Lcom/fasterxml/jackson/databind/util/EnumResolver;
.super Ljava/lang/Object;
.source "EnumResolver.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _enumClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Enum",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected final _enums:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation
.end field

.field protected final _enumsById:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Enum",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Class;[Ljava/lang/Enum;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Enum",
            "<*>;>;[",
            "Ljava/lang/Enum",
            "<*>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Enum",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    .local p2, "enums":[Ljava/lang/Enum;, "[Ljava/lang/Enum<*>;"
    .local p3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Enum<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumClass:Ljava/lang/Class;

    .line 25
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enums:[Ljava/lang/Enum;

    .line 26
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumsById:Ljava/util/HashMap;

    .line 27
    return-void
.end method

.method public static constructFor(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/util/EnumResolver;
    .locals 9
    .param p1, "ai"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Enum",
            "<*>;>;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            ")",
            "Lcom/fasterxml/jackson/databind/util/EnumResolver;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "enumCls":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Enum;

    .line 36
    .local v2, "enumValues":[Ljava/lang/Enum;, "[Ljava/lang/Enum<*>;"
    if-nez v2, :cond_0

    .line 37
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No enum constants for class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 39
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 40
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Enum<*>;>;"
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/Enum;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 41
    .local v1, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 43
    .end local v1    # "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :cond_1
    new-instance v6, Lcom/fasterxml/jackson/databind/util/EnumResolver;

    invoke-direct {v6, p0, v2, v5}, Lcom/fasterxml/jackson/databind/util/EnumResolver;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;Ljava/util/HashMap;)V

    return-object v6
.end method

.method public static constructUnsafe(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/util/EnumResolver;
    .locals 2
    .param p1, "ai"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            ")",
            "Lcom/fasterxml/jackson/databind/util/EnumResolver;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "rawEnumCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p0

    .line 93
    .local v0, "enumCls":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->constructFor(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/util/EnumResolver;

    move-result-object v1

    return-object v1
.end method

.method public static constructUnsafeUsingMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/util/EnumResolver;
    .locals 2
    .param p1, "accessor"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/fasterxml/jackson/databind/util/EnumResolver;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "rawEnumCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p0

    .line 117
    .local v0, "enumCls":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->constructUsingMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/util/EnumResolver;

    move-result-object v1

    return-object v1
.end method

.method public static constructUnsafeUsingToString(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/util/EnumResolver;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/util/EnumResolver;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "rawEnumCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p0

    .line 105
    .local v0, "enumCls":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->constructUsingToString(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/util/EnumResolver;

    move-result-object v1

    return-object v1
.end method

.method public static constructUsingMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/util/EnumResolver;
    .locals 9
    .param p1, "accessor"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Enum",
            "<*>;>;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/fasterxml/jackson/databind/util/EnumResolver;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "enumCls":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Enum;

    .line 66
    .local v2, "enumValues":[Ljava/lang/Enum;, "[Ljava/lang/Enum<*>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 68
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Enum<*>;>;"
    array-length v3, v2

    .local v3, "i":I
    :cond_0
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_1

    .line 69
    aget-object v1, v2, v3

    .line 71
    .local v1, "en":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    const/4 v6, 0x0

    :try_start_0
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 72
    .local v5, "o":Ljava/lang/Object;
    if-eqz v5, :cond_0

    .line 73
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    .end local v5    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to access @JsonValue of Enum value "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 79
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "en":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :cond_1
    new-instance v6, Lcom/fasterxml/jackson/databind/util/EnumResolver;

    invoke-direct {v6, p0, v2, v4}, Lcom/fasterxml/jackson/databind/util/EnumResolver;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;Ljava/util/HashMap;)V

    return-object v6
.end method

.method public static constructUsingToString(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/util/EnumResolver;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Enum",
            "<*>;>;)",
            "Lcom/fasterxml/jackson/databind/util/EnumResolver;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "enumCls":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Enum;

    .line 53
    .local v1, "enumValues":[Ljava/lang/Enum;, "[Ljava/lang/Enum<*>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 55
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Enum<*>;>;"
    array-length v2, v1

    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    .line 56
    aget-object v0, v1, v2

    .line 57
    .local v0, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 59
    .end local v0    # "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :cond_0
    new-instance v4, Lcom/fasterxml/jackson/databind/util/EnumResolver;

    invoke-direct {v4, p0, v1, v3}, Lcom/fasterxml/jackson/databind/util/EnumResolver;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;Ljava/util/HashMap;)V

    return-object v4
.end method


# virtual methods
.method public constructLookup()Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumsById:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->construct(Ljava/util/Map;)Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;

    move-result-object v0

    return-object v0
.end method

.method public findEnum(Ljava/lang/String;)Ljava/lang/Enum;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumsById:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    return-object v0
.end method

.method public getEnum(I)Ljava/lang/Enum;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 127
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enums:[Ljava/lang/Enum;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 128
    :cond_0
    const/4 v0, 0x0

    .line 130
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enums:[Ljava/lang/Enum;

    aget-object v0, v0, p1

    goto :goto_0
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
    .line 145
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getEnums()Ljava/util/List;
    .locals 6
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
    .line 138
    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enums:[Ljava/lang/Enum;

    array-length v5, v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 139
    .local v2, "enums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Enum<*>;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enums:[Ljava/lang/Enum;

    .local v0, "arr$":[Ljava/lang/Enum;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 140
    .local v1, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 142
    .end local v1    # "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :cond_0
    return-object v2
.end method

.method public getRawEnums()[Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enums:[Ljava/lang/Enum;

    return-object v0
.end method

.method public lastValidIndex()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enums:[Ljava/lang/Enum;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
