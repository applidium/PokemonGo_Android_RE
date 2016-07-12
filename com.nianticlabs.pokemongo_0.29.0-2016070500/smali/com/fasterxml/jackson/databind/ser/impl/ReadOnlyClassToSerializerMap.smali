.class public final Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;
.super Ljava/lang/Object;
.source "ReadOnlyClassToSerializerMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;
    }
.end annotation


# instance fields
.field private final _buckets:[Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;

.field private final _mask:I

.field private final _size:I


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/fasterxml/jackson/databind/util/TypeKey;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "serializers":Ljava/util/Map;, "Ljava/util/Map<Lcom/fasterxml/jackson/databind/util/TypeKey;Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v6

    invoke-static {v6}, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->findSize(I)I

    move-result v5

    .line 29
    .local v5, "size":I
    iput v5, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_size:I

    .line 30
    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_mask:I

    .line 31
    new-array v0, v5, [Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;

    .line 32
    .local v0, "buckets":[Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 33
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/fasterxml/jackson/databind/util/TypeKey;Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/util/TypeKey;

    .line 34
    .local v4, "key":Lcom/fasterxml/jackson/databind/util/TypeKey;
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/util/TypeKey;->hashCode()I

    move-result v6

    iget v7, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_mask:I

    and-int v3, v6, v7

    .line 35
    .local v3, "index":I
    new-instance v7, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;

    aget-object v8, v0, v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fasterxml/jackson/databind/JsonSerializer;

    invoke-direct {v7, v8, v4, v6}, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;-><init>(Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;Lcom/fasterxml/jackson/databind/util/TypeKey;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    aput-object v7, v0, v3

    goto :goto_0

    .line 37
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/fasterxml/jackson/databind/util/TypeKey;Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;>;"
    .end local v3    # "index":I
    .end local v4    # "key":Lcom/fasterxml/jackson/databind/util/TypeKey;
    :cond_0
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_buckets:[Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;

    .line 38
    return-void
.end method

.method private static final findSize(I)I
    .locals 3
    .param p0, "size"    # I

    .prologue
    .line 43
    const/16 v2, 0x40

    if-gt p0, v2, :cond_0

    add-int v0, p0, p0

    .line 44
    .local v0, "needed":I
    :goto_0
    const/16 v1, 0x8

    .line 45
    .local v1, "result":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 46
    add-int/2addr v1, v1

    goto :goto_1

    .line 43
    .end local v0    # "needed":I
    .end local v1    # "result":I
    :cond_0
    shr-int/lit8 v2, p0, 0x2

    add-int v0, p0, v2

    goto :goto_0

    .line 48
    .restart local v0    # "needed":I
    .restart local v1    # "result":I
    :cond_1
    return v1
.end method

.method public static from(Ljava/util/HashMap;)Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/fasterxml/jackson/databind/util/TypeKey;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "src":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/fasterxml/jackson/databind/util/TypeKey;Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public size()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_size:I

    return v0
.end method

.method public typedValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 5
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 68
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_buckets:[Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/TypeKey;->typedHash(Lcom/fasterxml/jackson/databind/JavaType;)I

    move-result v3

    iget v4, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_mask:I

    and-int/2addr v3, v4

    aget-object v0, v2, v3

    .line 69
    .local v0, "bucket":Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;
    if-nez v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-object v1

    .line 72
    :cond_1
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;->matchesTyped(Lcom/fasterxml/jackson/databind/JavaType;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 73
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;->value:Lcom/fasterxml/jackson/databind/JsonSerializer;

    goto :goto_0

    .line 75
    :cond_2
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;->next:Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;->matchesTyped(Lcom/fasterxml/jackson/databind/JavaType;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 77
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;->value:Lcom/fasterxml/jackson/databind/JsonSerializer;

    goto :goto_0
.end method

.method public typedValueSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 85
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_buckets:[Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/TypeKey;->typedHash(Ljava/lang/Class;)I

    move-result v3

    iget v4, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_mask:I

    and-int/2addr v3, v4

    aget-object v0, v2, v3

    .line 86
    .local v0, "bucket":Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;
    if-nez v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-object v1

    .line 89
    :cond_1
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;->matchesTyped(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 90
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;->value:Lcom/fasterxml/jackson/databind/JsonSerializer;

    goto :goto_0

    .line 92
    :cond_2
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;->next:Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;->matchesTyped(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;->value:Lcom/fasterxml/jackson/databind/JsonSerializer;

    goto :goto_0
.end method

.method public untypedValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 5
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 102
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_buckets:[Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/TypeKey;->untypedHash(Lcom/fasterxml/jackson/databind/JavaType;)I

    move-result v3

    iget v4, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_mask:I

    and-int/2addr v3, v4

    aget-object v0, v2, v3

    .line 103
    .local v0, "bucket":Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;
    if-nez v0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-object v1

    .line 106
    :cond_1
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;->matchesUntyped(Lcom/fasterxml/jackson/databind/JavaType;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 107
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;->value:Lcom/fasterxml/jackson/databind/JsonSerializer;

    goto :goto_0

    .line 109
    :cond_2
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;->next:Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;->matchesUntyped(Lcom/fasterxml/jackson/databind/JavaType;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;->value:Lcom/fasterxml/jackson/databind/JsonSerializer;

    goto :goto_0
.end method

.method public untypedValueSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 119
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_buckets:[Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/TypeKey;->untypedHash(Ljava/lang/Class;)I

    move-result v3

    iget v4, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_mask:I

    and-int/2addr v3, v4

    aget-object v0, v2, v3

    .line 120
    .local v0, "bucket":Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;
    if-nez v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-object v1

    .line 123
    :cond_1
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;->matchesUntyped(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;->value:Lcom/fasterxml/jackson/databind/JsonSerializer;

    goto :goto_0

    .line 126
    :cond_2
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;->next:Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;->matchesUntyped(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 128
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;->value:Lcom/fasterxml/jackson/databind/JsonSerializer;

    goto :goto_0
.end method
