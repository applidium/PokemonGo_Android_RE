.class public Lrx/internal/util/SynchronizedQueue;
.super Ljava/lang/Object;
.source "SynchronizedQueue.java"

# interfaces
.implements Ljava/util/Queue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Queue",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final list:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lrx/internal/util/SynchronizedQueue;->size:I

    .line 35
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 37
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    .line 38
    iput p1, p0, Lrx/internal/util/SynchronizedQueue;->size:I

    .line 39
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
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

.method public declared-synchronized addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z
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

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 93
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 141
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Lrx/internal/util/SynchronizedQueue;

    iget v1, p0, Lrx/internal/util/SynchronizedQueue;->size:I

    invoke-direct {v0, v1}, Lrx/internal/util/SynchronizedQueue;-><init>(I)V

    .line 142
    .local v0, "q":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    iget-object v1, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Lrx/internal/util/SynchronizedQueue;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit p0

    return-object v0

    .line 141
    .end local v0    # "q":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 48
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z
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

.method public declared-synchronized containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->containsAll(Ljava/util/Collection;)Z
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

.method public declared-synchronized element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->element()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 103
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->equals(Ljava/lang/Object;)Z
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

.method public declared-synchronized hashCode()I
    .locals 1

    .prologue
    .line 108
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->hashCode()I
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

.method public declared-synchronized isEmpty()Z
    .locals 1

    .prologue
    .line 43
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
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

.method public declared-synchronized iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized offer(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lrx/internal/util/SynchronizedQueue;->size:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lrx/internal/util/SynchronizedQueue;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v0, v1, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 136
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 68
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
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

.method public declared-synchronized removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->removeAll(Ljava/util/Collection;)Z
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

.method public declared-synchronized retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->retainAll(Ljava/util/Collection;)Z
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

.method public declared-synchronized size()I
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
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

.method public declared-synchronized toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 148
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->toArray()[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">([TR;)[TR;"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TR;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
