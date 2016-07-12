.class public final Lcom/fasterxml/jackson/databind/ser/SerializerCache;
.super Ljava/lang/Object;
.source "SerializerCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;
    }
.end annotation


# instance fields
.field private final _readOnlyMap:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;",
            ">;"
        }
    .end annotation
.end field

.field private final _sharedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/fasterxml/jackson/databind/util/TypeKey;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->_readOnlyMap:Ljava/util/concurrent/atomic/AtomicReference;

    .line 41
    return-void
.end method

.method private final declared-synchronized _makeReadOnlyLookupMap()Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;
    .locals 2

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->_readOnlyMap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;

    .line 60
    .local v0, "m":Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;
    if-nez v0, :cond_0

    .line 61
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->from(Ljava/util/HashMap;)Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->_readOnlyMap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_0
    monitor-exit p0

    return-object v0

    .line 59
    .end local v0    # "m":Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public addAndResolveNonTypedSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 3
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 165
    .local p2, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    monitor-enter p0

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    new-instance v1, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Z)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->_readOnlyMap:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 176
    :cond_0
    instance-of v0, p2, Lcom/fasterxml/jackson/databind/ser/ResolvableSerializer;

    if-eqz v0, :cond_1

    .line 177
    check-cast p2, Lcom/fasterxml/jackson/databind/ser/ResolvableSerializer;

    .end local p2    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    invoke-interface {p2, p3}, Lcom/fasterxml/jackson/databind/ser/ResolvableSerializer;->resolve(Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 179
    :cond_1
    monitor-exit p0

    .line 180
    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addAndResolveNonTypedSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 3
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    monitor-enter p0

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    new-instance v1, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;-><init>(Ljava/lang/Class;Z)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->_readOnlyMap:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 155
    :cond_0
    instance-of v0, p2, Lcom/fasterxml/jackson/databind/ser/ResolvableSerializer;

    if-eqz v0, :cond_1

    .line 156
    check-cast p2, Lcom/fasterxml/jackson/databind/ser/ResolvableSerializer;

    .end local p2    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    invoke-interface {p2, p3}, Lcom/fasterxml/jackson/databind/ser/ResolvableSerializer;->resolve(Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 158
    :cond_1
    monitor-exit p0

    .line 159
    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addTypedSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
    .locals 3
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p2, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    monitor-enter p0

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    new-instance v1, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Z)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->_readOnlyMap:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 127
    :cond_0
    monitor-exit p0

    .line 128
    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addTypedSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    monitor-enter p0

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    new-instance v1, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;-><init>(Ljava/lang/Class;Z)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->_readOnlyMap:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 137
    :cond_0
    monitor-exit p0

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getReadOnlyLookupMap()Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;
    .locals 2

    .prologue
    .line 49
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->_readOnlyMap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;

    .line 50
    .local v0, "m":Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;
    if-eqz v0, :cond_0

    .line 53
    .end local v0    # "m":Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;
    :goto_0
    return-object v0

    .restart local v0    # "m":Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;
    :cond_0
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->_makeReadOnlyLookupMap()Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized size()I
    .locals 1

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public typedValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 3
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
    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    new-instance v1, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Z)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonSerializer;

    monitor-exit p0

    return-object v0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public typedValueSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 3
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
    .line 104
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    new-instance v1, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;-><init>(Ljava/lang/Class;Z)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonSerializer;

    monitor-exit p0

    return-object v0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public untypedValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 3
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
    .line 90
    monitor-enter p0

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    new-instance v1, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Z)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonSerializer;

    monitor-exit p0

    return-object v0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public untypedValueSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 3
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
    .line 83
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    new-instance v1, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;-><init>(Ljava/lang/Class;Z)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonSerializer;

    monitor-exit p0

    return-object v0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
