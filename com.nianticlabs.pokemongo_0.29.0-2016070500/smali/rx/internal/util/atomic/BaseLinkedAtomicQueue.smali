.class abstract Lrx/internal/util/atomic/BaseLinkedAtomicQueue;
.super Ljava/util/AbstractQueue;
.source "BaseLinkedAtomicQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final consumerNode:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/internal/util/atomic/LinkedQueueNode",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private final producerNode:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/internal/util/atomic/LinkedQueueNode",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    .local p0, "this":Lrx/internal/util/atomic/BaseLinkedAtomicQueue;, "Lrx/internal/util/atomic/BaseLinkedAtomicQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/internal/util/atomic/BaseLinkedAtomicQueue;->producerNode:Ljava/util/concurrent/atomic/AtomicReference;

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/internal/util/atomic/BaseLinkedAtomicQueue;->consumerNode:Ljava/util/concurrent/atomic/AtomicReference;

    .line 29
    return-void
.end method


# virtual methods
.method public final isEmpty()Z
    .locals 2

    .prologue
    .line 91
    .local p0, "this":Lrx/internal/util/atomic/BaseLinkedAtomicQueue;, "Lrx/internal/util/atomic/BaseLinkedAtomicQueue<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/atomic/BaseLinkedAtomicQueue;->lvConsumerNode()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v0

    invoke-virtual {p0}, Lrx/internal/util/atomic/BaseLinkedAtomicQueue;->lvProducerNode()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lrx/internal/util/atomic/BaseLinkedAtomicQueue;, "Lrx/internal/util/atomic/BaseLinkedAtomicQueue<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected final lpConsumerNode()Lrx/internal/util/atomic/LinkedQueueNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/util/atomic/LinkedQueueNode",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lrx/internal/util/atomic/BaseLinkedAtomicQueue;, "Lrx/internal/util/atomic/BaseLinkedAtomicQueue<TE;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/BaseLinkedAtomicQueue;->consumerNode:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/util/atomic/LinkedQueueNode;

    return-object v0
.end method

.method protected final lpProducerNode()Lrx/internal/util/atomic/LinkedQueueNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/util/atomic/LinkedQueueNode",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lrx/internal/util/atomic/BaseLinkedAtomicQueue;, "Lrx/internal/util/atomic/BaseLinkedAtomicQueue<TE;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/BaseLinkedAtomicQueue;->producerNode:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/util/atomic/LinkedQueueNode;

    return-object v0
.end method

.method protected final lvConsumerNode()Lrx/internal/util/atomic/LinkedQueueNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/util/atomic/LinkedQueueNode",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lrx/internal/util/atomic/BaseLinkedAtomicQueue;, "Lrx/internal/util/atomic/BaseLinkedAtomicQueue<TE;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/BaseLinkedAtomicQueue;->consumerNode:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/util/atomic/LinkedQueueNode;

    return-object v0
.end method

.method protected final lvProducerNode()Lrx/internal/util/atomic/LinkedQueueNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/util/atomic/LinkedQueueNode",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lrx/internal/util/atomic/BaseLinkedAtomicQueue;, "Lrx/internal/util/atomic/BaseLinkedAtomicQueue<TE;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/BaseLinkedAtomicQueue;->producerNode:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/util/atomic/LinkedQueueNode;

    return-object v0
.end method

.method public final size()I
    .locals 5

    .prologue
    .line 67
    .local p0, "this":Lrx/internal/util/atomic/BaseLinkedAtomicQueue;, "Lrx/internal/util/atomic/BaseLinkedAtomicQueue<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/atomic/BaseLinkedAtomicQueue;->lvConsumerNode()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v0

    .line 68
    .local v0, "chaserNode":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/atomic/BaseLinkedAtomicQueue;->lvProducerNode()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v2

    .line 69
    .local v2, "producerNode":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    const/4 v3, 0x0

    .line 71
    .local v3, "size":I
    :goto_0
    if-eq v0, v2, :cond_1

    const v4, 0x7fffffff

    if-ge v3, v4, :cond_1

    .line 73
    :cond_0
    invoke-virtual {v0}, Lrx/internal/util/atomic/LinkedQueueNode;->lvNext()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v1

    .local v1, "next":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    if-eqz v1, :cond_0

    .line 74
    move-object v0, v1

    .line 75
    add-int/lit8 v3, v3, 0x1

    .line 76
    goto :goto_0

    .line 77
    .end local v1    # "next":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    :cond_1
    return v3
.end method

.method protected final spConsumerNode(Lrx/internal/util/atomic/LinkedQueueNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/util/atomic/LinkedQueueNode",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lrx/internal/util/atomic/BaseLinkedAtomicQueue;, "Lrx/internal/util/atomic/BaseLinkedAtomicQueue<TE;>;"
    .local p1, "node":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/BaseLinkedAtomicQueue;->consumerNode:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method protected final spProducerNode(Lrx/internal/util/atomic/LinkedQueueNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/util/atomic/LinkedQueueNode",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lrx/internal/util/atomic/BaseLinkedAtomicQueue;, "Lrx/internal/util/atomic/BaseLinkedAtomicQueue<TE;>;"
    .local p1, "node":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/BaseLinkedAtomicQueue;->producerNode:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method protected final xchgProducerNode(Lrx/internal/util/atomic/LinkedQueueNode;)Lrx/internal/util/atomic/LinkedQueueNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/util/atomic/LinkedQueueNode",
            "<TE;>;)",
            "Lrx/internal/util/atomic/LinkedQueueNode",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lrx/internal/util/atomic/BaseLinkedAtomicQueue;, "Lrx/internal/util/atomic/BaseLinkedAtomicQueue<TE;>;"
    .local p1, "node":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/BaseLinkedAtomicQueue;->producerNode:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/util/atomic/LinkedQueueNode;

    return-object v0
.end method
