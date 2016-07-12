.class public Lcom/fasterxml/jackson/databind/util/LRUMap;
.super Ljava/lang/Object;
.source "LRUMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected transient _jdkSerializeMaxEntries:I

.field protected final transient _map:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field protected final transient _maxEntries:I


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "initialEntries"    # I
    .param p2, "maxEntries"    # I

    .prologue
    .line 33
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/LRUMap;, "Lcom/fasterxml/jackson/databind/util/LRUMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x3f4ccccd    # 0.8f

    const/4 v2, 0x4

    invoke-direct {v0, p1, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    iput p2, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_maxEntries:I

    .line 37
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/LRUMap;, "Lcom/fasterxml/jackson/databind/util/LRUMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_jdkSerializeMaxEntries:I

    .line 89
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/LRUMap;, "Lcom/fasterxml/jackson/databind/util/LRUMap<TK;TV;>;"
    iget v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_jdkSerializeMaxEntries:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 93
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 70
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/LRUMap;, "Lcom/fasterxml/jackson/databind/util/LRUMap<TK;TV;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/LRUMap;, "Lcom/fasterxml/jackson/databind/util/LRUMap<TK;TV;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/LRUMap;, "Lcom/fasterxml/jackson/databind/util/LRUMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_maxEntries:I

    if-lt v0, v1, :cond_1

    .line 42
    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_maxEntries:I

    if-lt v0, v1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/LRUMap;->clear()V

    .line 46
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/LRUMap;, "Lcom/fasterxml/jackson/databind/util/LRUMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_maxEntries:I

    if-lt v0, v1, :cond_1

    .line 58
    monitor-enter p0

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_maxEntries:I

    if-lt v0, v1, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/LRUMap;->clear()V

    .line 62
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 96
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/LRUMap;, "Lcom/fasterxml/jackson/databind/util/LRUMap<TK;TV;>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/util/LRUMap;

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_jdkSerializeMaxEntries:I

    iget v2, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_jdkSerializeMaxEntries:I

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/util/LRUMap;-><init>(II)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 71
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/LRUMap;, "Lcom/fasterxml/jackson/databind/util/LRUMap<TK;TV;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method
