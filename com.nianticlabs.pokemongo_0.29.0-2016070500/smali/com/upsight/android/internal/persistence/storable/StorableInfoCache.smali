.class public final Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;
.super Ljava/lang/Object;
.source "StorableInfoCache.java"


# instance fields
.field private final mAccessorMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;",
            ">;"
        }
    .end annotation
.end field

.field private final mInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/upsight/android/internal/persistence/storable/StorableInfo",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field private final mSerializerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/upsight/android/persistence/UpsightStorableSerializer",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 1
    .param p1, "objectMapper"    # Lcom/fasterxml/jackson/databind/ObjectMapper;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;->mSerializerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;->mInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;->mAccessorMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    iput-object p1, p0, Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;->mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 40
    return-void
.end method

.method private resolveIdentifierAccessor(Ljava/lang/Class;)Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/upsight/android/UpsightException;
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v8, p0, Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;->mAccessorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;

    .line 67
    .local v0, "accessor":Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 97
    .end local v0    # "accessor":Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;
    .local v1, "accessor":Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;
    :goto_0
    return-object v1

    .line 71
    .end local v1    # "accessor":Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;
    .restart local v0    # "accessor":Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;
    :cond_0
    move-object v4, p1

    .line 72
    .local v4, "candidate":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-nez v0, :cond_4

    if-eqz v4, :cond_4

    .line 73
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .local v3, "arr$":[Ljava/lang/reflect/Field;
    array-length v7, v3

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_2
    if-ge v6, v7, :cond_2

    aget-object v5, v3, v6

    .line 74
    .local v5, "field":Ljava/lang/reflect/Field;
    const-class v8, Lcom/upsight/android/persistence/annotation/UpsightStorableIdentifier;

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/persistence/annotation/UpsightStorableIdentifier;

    .line 76
    .local v2, "annotation":Lcom/upsight/android/persistence/annotation/UpsightStorableIdentifier;
    if-nez v2, :cond_1

    .line 73
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 80
    :cond_1
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 81
    new-instance v0, Lcom/upsight/android/internal/persistence/storable/StorableFieldIdentifierAccessor;

    .end local v0    # "accessor":Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;
    invoke-direct {v0, v5}, Lcom/upsight/android/internal/persistence/storable/StorableFieldIdentifierAccessor;-><init>(Ljava/lang/reflect/Field;)V

    .line 89
    .end local v2    # "annotation":Lcom/upsight/android/persistence/annotation/UpsightStorableIdentifier;
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .restart local v0    # "accessor":Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_1

    .line 84
    .restart local v2    # "annotation":Lcom/upsight/android/persistence/annotation/UpsightStorableIdentifier;
    .restart local v5    # "field":Ljava/lang/reflect/Field;
    :cond_3
    new-instance v8, Lcom/upsight/android/UpsightException;

    const-string v9, "Field annotated with @%s must be of type String."

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-class v12, Lcom/upsight/android/persistence/annotation/UpsightStorableIdentifier;

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-direct {v8, v9, v10}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v8

    .line 92
    .end local v2    # "annotation":Lcom/upsight/android/persistence/annotation/UpsightStorableIdentifier;
    .end local v3    # "arr$":[Ljava/lang/reflect/Field;
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_4
    if-nez v0, :cond_5

    .line 93
    new-instance v0, Lcom/upsight/android/internal/persistence/storable/StorableIdentifierNoopAccessor;

    .end local v0    # "accessor":Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;
    invoke-direct {v0}, Lcom/upsight/android/internal/persistence/storable/StorableIdentifierNoopAccessor;-><init>()V

    .line 95
    .restart local v0    # "accessor":Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;
    :cond_5
    iget-object v8, p0, Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;->mAccessorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 97
    .end local v0    # "accessor":Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;
    .restart local v1    # "accessor":Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;
    goto :goto_0
.end method

.method private resolveSerializer(Ljava/lang/Class;)Lcom/upsight/android/persistence/UpsightStorableSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/upsight/android/persistence/UpsightStorableSerializer",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v1, p0, Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;->mSerializerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/persistence/UpsightStorableSerializer;

    .line 102
    .local v0, "serializer":Lcom/upsight/android/persistence/UpsightStorableSerializer;, "Lcom/upsight/android/persistence/UpsightStorableSerializer<TT;>;"
    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/upsight/android/internal/persistence/storable/DefaultJsonSerializer;

    .end local v0    # "serializer":Lcom/upsight/android/persistence/UpsightStorableSerializer;, "Lcom/upsight/android/persistence/UpsightStorableSerializer<TT;>;"
    iget-object v1, p0, Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;->mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0, v1, p1}, Lcom/upsight/android/internal/persistence/storable/DefaultJsonSerializer;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Ljava/lang/Class;)V

    .line 104
    .restart local v0    # "serializer":Lcom/upsight/android/persistence/UpsightStorableSerializer;, "Lcom/upsight/android/persistence/UpsightStorableSerializer<TT;>;"
    iget-object v1, p0, Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;->mSerializerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_0
    return-object v0
.end method

.method private resolveType(Ljava/lang/Class;)Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/upsight/android/UpsightException;
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 110
    const/4 v0, 0x0

    .line 112
    .local v0, "accessor":Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;, "Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor<TT;>;"
    const-class v6, Lcom/upsight/android/persistence/annotation/UpsightStorableType;

    invoke-virtual {p1, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/persistence/annotation/UpsightStorableType;

    .line 113
    .local v1, "annotation":Lcom/upsight/android/persistence/annotation/UpsightStorableType;
    if-eqz v1, :cond_1

    .line 114
    invoke-interface {v1}, Lcom/upsight/android/persistence/annotation/UpsightStorableType;->value()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 115
    new-instance v6, Lcom/upsight/android/UpsightException;

    const-string v7, "Class annotated with @%s must define non empty value."

    new-array v8, v8, [Ljava/lang/Object;

    const-class v9, Lcom/upsight/android/persistence/annotation/UpsightStorableType;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-direct {v6, v7, v8}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6

    .line 118
    :cond_0
    new-instance v0, Lcom/upsight/android/internal/persistence/storable/StorableStaticTypeAccessor;

    .end local v0    # "accessor":Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;, "Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor<TT;>;"
    invoke-interface {v1}, Lcom/upsight/android/persistence/annotation/UpsightStorableType;->value()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/upsight/android/internal/persistence/storable/StorableStaticTypeAccessor;-><init>(Ljava/lang/String;)V

    .line 121
    .restart local v0    # "accessor":Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;, "Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor<TT;>;"
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/reflect/Method;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_8

    aget-object v5, v2, v3

    .line 122
    .local v5, "method":Ljava/lang/reflect/Method;
    const-class v6, Lcom/upsight/android/persistence/annotation/UpsightStorableType;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    .end local v1    # "annotation":Lcom/upsight/android/persistence/annotation/UpsightStorableType;
    check-cast v1, Lcom/upsight/android/persistence/annotation/UpsightStorableType;

    .line 123
    .restart local v1    # "annotation":Lcom/upsight/android/persistence/annotation/UpsightStorableType;
    if-eqz v1, :cond_7

    .line 124
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 125
    new-instance v6, Lcom/upsight/android/UpsightException;

    const-string v7, "Method annotated with @%s must return empty."

    new-array v8, v8, [Ljava/lang/Object;

    const-class v9, Lcom/upsight/android/persistence/annotation/UpsightStorableType;

    aput-object v9, v8, v10

    invoke-direct {v6, v7, v8}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6

    .line 129
    :cond_2
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-lez v6, :cond_3

    .line 130
    new-instance v6, Lcom/upsight/android/UpsightException;

    const-string v7, "Method annotated with @%s must have no parameters."

    new-array v8, v8, [Ljava/lang/Object;

    const-class v9, Lcom/upsight/android/persistence/annotation/UpsightStorableType;

    aput-object v9, v8, v10

    invoke-direct {v6, v7, v8}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6

    .line 134
    :cond_3
    if-eqz v0, :cond_4

    .line 135
    new-instance v6, Lcom/upsight/android/UpsightException;

    const-string v7, "@%s can only be defined once in class."

    new-array v8, v8, [Ljava/lang/Object;

    const-class v9, Lcom/upsight/android/persistence/annotation/UpsightStorableType;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-direct {v6, v7, v8}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6

    .line 139
    :cond_4
    invoke-interface {v1}, Lcom/upsight/android/persistence/annotation/UpsightStorableType;->value()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 140
    new-instance v6, Lcom/upsight/android/UpsightException;

    const-string v7, "Method annotated with @%s should not define type in annotation but return it."

    new-array v8, v8, [Ljava/lang/Object;

    const-class v9, Lcom/upsight/android/persistence/annotation/UpsightStorableType;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-direct {v6, v7, v8}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6

    .line 145
    :cond_5
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-nez v6, :cond_6

    .line 146
    new-instance v6, Lcom/upsight/android/UpsightException;

    const-string v7, "Method annotated with @%s must be public."

    new-array v8, v8, [Ljava/lang/Object;

    const-class v9, Lcom/upsight/android/persistence/annotation/UpsightStorableType;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-direct {v6, v7, v8}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6

    .line 150
    :cond_6
    new-instance v0, Lcom/upsight/android/internal/persistence/storable/StorableMethodTypeAccessor;

    .end local v0    # "accessor":Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;, "Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor<TT;>;"
    invoke-direct {v0, v5}, Lcom/upsight/android/internal/persistence/storable/StorableMethodTypeAccessor;-><init>(Ljava/lang/reflect/Method;)V

    .line 121
    .restart local v0    # "accessor":Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;, "Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor<TT;>;"
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 154
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :cond_8
    if-nez v0, :cond_9

    .line 155
    new-instance v6, Lcom/upsight/android/UpsightException;

    const-string v7, "Class must either be annotated or have method annotated with %s."

    new-array v8, v8, [Ljava/lang/Object;

    const-class v9, Lcom/upsight/android/persistence/annotation/UpsightStorableType;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-direct {v6, v7, v8}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6

    .line 159
    :cond_9
    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Lcom/upsight/android/internal/persistence/storable/StorableInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/upsight/android/internal/persistence/storable/StorableInfo",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/upsight/android/UpsightException;
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    .line 48
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Class can not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 51
    :cond_0
    iget-object v4, p0, Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;->mInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/internal/persistence/storable/StorableInfo;

    .line 52
    .local v1, "info":Lcom/upsight/android/internal/persistence/storable/StorableInfo;, "Lcom/upsight/android/internal/persistence/storable/StorableInfo<TT;>;"
    if-nez v1, :cond_1

    .line 53
    invoke-direct {p0, p1}, Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;->resolveSerializer(Ljava/lang/Class;)Lcom/upsight/android/persistence/UpsightStorableSerializer;

    move-result-object v2

    .line 54
    .local v2, "serializer":Lcom/upsight/android/persistence/UpsightStorableSerializer;, "Lcom/upsight/android/persistence/UpsightStorableSerializer<TT;>;"
    invoke-direct {p0, p1}, Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;->resolveType(Ljava/lang/Class;)Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;

    move-result-object v3

    .line 55
    .local v3, "typeAccessor":Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;, "Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor<TT;>;"
    invoke-direct {p0, p1}, Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;->resolveIdentifierAccessor(Ljava/lang/Class;)Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;

    move-result-object v0

    .line 56
    .local v0, "identifierAccessor":Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;
    new-instance v1, Lcom/upsight/android/internal/persistence/storable/StorableInfo;

    .end local v1    # "info":Lcom/upsight/android/internal/persistence/storable/StorableInfo;, "Lcom/upsight/android/internal/persistence/storable/StorableInfo<TT;>;"
    invoke-direct {v1, v3, v2, v0}, Lcom/upsight/android/internal/persistence/storable/StorableInfo;-><init>(Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;Lcom/upsight/android/persistence/UpsightStorableSerializer;Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;)V

    .line 57
    .restart local v1    # "info":Lcom/upsight/android/internal/persistence/storable/StorableInfo;, "Lcom/upsight/android/internal/persistence/storable/StorableInfo<TT;>;"
    invoke-interface {v3}, Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;->isDynamic()Z

    move-result v4

    if-nez v4, :cond_1

    .line 58
    iget-object v4, p0, Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;->mInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .end local v0    # "identifierAccessor":Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;
    .end local v2    # "serializer":Lcom/upsight/android/persistence/UpsightStorableSerializer;, "Lcom/upsight/android/persistence/UpsightStorableSerializer<TT;>;"
    .end local v3    # "typeAccessor":Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;, "Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor<TT;>;"
    :cond_1
    return-object v1
.end method

.method public setSerializer(Ljava/lang/Class;Lcom/upsight/android/persistence/UpsightStorableSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/upsight/android/persistence/UpsightStorableSerializer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "serializer":Lcom/upsight/android/persistence/UpsightStorableSerializer;, "Lcom/upsight/android/persistence/UpsightStorableSerializer<TT;>;"
    iget-object v0, p0, Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;->mSerializerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method
