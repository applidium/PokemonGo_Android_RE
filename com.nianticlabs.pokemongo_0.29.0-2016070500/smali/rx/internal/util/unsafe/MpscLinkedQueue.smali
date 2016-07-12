.class public final Lrx/internal/util/unsafe/MpscLinkedQueue;
.super Lrx/internal/util/unsafe/BaseLinkedQueue;
.source "MpscLinkedQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/BaseLinkedQueue",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    .local p0, "this":Lrx/internal/util/unsafe/MpscLinkedQueue;, "Lrx/internal/util/unsafe/MpscLinkedQueue<TE;>;"
    invoke-direct {p0}, Lrx/internal/util/unsafe/BaseLinkedQueue;-><init>()V

    .line 40
    new-instance v0, Lrx/internal/util/atomic/LinkedQueueNode;

    invoke-direct {v0}, Lrx/internal/util/atomic/LinkedQueueNode;-><init>()V

    iput-object v0, p0, Lrx/internal/util/unsafe/MpscLinkedQueue;->consumerNode:Lrx/internal/util/atomic/LinkedQueueNode;

    .line 41
    iget-object v0, p0, Lrx/internal/util/unsafe/MpscLinkedQueue;->consumerNode:Lrx/internal/util/atomic/LinkedQueueNode;

    invoke-virtual {p0, v0}, Lrx/internal/util/unsafe/MpscLinkedQueue;->xchgProducerNode(Lrx/internal/util/atomic/LinkedQueueNode;)Lrx/internal/util/atomic/LinkedQueueNode;

    .line 42
    return-void
.end method


# virtual methods
.method public final offer(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lrx/internal/util/unsafe/MpscLinkedQueue;, "Lrx/internal/util/unsafe/MpscLinkedQueue<TE;>;"
    .local p1, "nextValue":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 72
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "null elements not allowed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    :cond_0
    new-instance v0, Lrx/internal/util/atomic/LinkedQueueNode;

    invoke-direct {v0, p1}, Lrx/internal/util/atomic/LinkedQueueNode;-><init>(Ljava/lang/Object;)V

    .line 75
    .local v0, "nextNode":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    invoke-virtual {p0, v0}, Lrx/internal/util/unsafe/MpscLinkedQueue;->xchgProducerNode(Lrx/internal/util/atomic/LinkedQueueNode;)Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v1

    .line 78
    .local v1, "prevProducerNode":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    invoke-virtual {v1, v0}, Lrx/internal/util/atomic/LinkedQueueNode;->soNext(Lrx/internal/util/atomic/LinkedQueueNode;)V

    .line 79
    const/4 v2, 0x1

    return v2
.end method

.method public final peek()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lrx/internal/util/unsafe/MpscLinkedQueue;, "Lrx/internal/util/unsafe/MpscLinkedQueue<TE;>;"
    iget-object v0, p0, Lrx/internal/util/unsafe/MpscLinkedQueue;->consumerNode:Lrx/internal/util/atomic/LinkedQueueNode;

    .line 124
    .local v0, "currConsumerNode":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    invoke-virtual {v0}, Lrx/internal/util/atomic/LinkedQueueNode;->lvNext()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v1

    .line 125
    .local v1, "nextNode":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {v1}, Lrx/internal/util/atomic/LinkedQueueNode;->lpValue()Ljava/lang/Object;

    move-result-object v2

    .line 134
    :goto_0
    return-object v2

    .line 128
    :cond_0
    invoke-virtual {p0}, Lrx/internal/util/unsafe/MpscLinkedQueue;->lvProducerNode()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v2

    if-eq v0, v2, :cond_2

    .line 130
    :cond_1
    invoke-virtual {v0}, Lrx/internal/util/atomic/LinkedQueueNode;->lvNext()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 132
    invoke-virtual {v1}, Lrx/internal/util/atomic/LinkedQueueNode;->lpValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 134
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final poll()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lrx/internal/util/unsafe/MpscLinkedQueue;, "Lrx/internal/util/unsafe/MpscLinkedQueue<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/unsafe/MpscLinkedQueue;->lpConsumerNode()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v0

    .line 101
    .local v0, "currConsumerNode":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    invoke-virtual {v0}, Lrx/internal/util/atomic/LinkedQueueNode;->lvNext()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v1

    .line 102
    .local v1, "nextNode":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {v1}, Lrx/internal/util/atomic/LinkedQueueNode;->getAndNullValue()Ljava/lang/Object;

    move-result-object v2

    .line 105
    .local v2, "nextValue":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v1}, Lrx/internal/util/unsafe/MpscLinkedQueue;->spConsumerNode(Lrx/internal/util/atomic/LinkedQueueNode;)V

    .line 118
    .end local v2    # "nextValue":Ljava/lang/Object;, "TE;"
    :goto_0
    return-object v2

    .line 108
    :cond_0
    invoke-virtual {p0}, Lrx/internal/util/unsafe/MpscLinkedQueue;->lvProducerNode()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v3

    if-eq v0, v3, :cond_2

    .line 110
    :cond_1
    invoke-virtual {v0}, Lrx/internal/util/atomic/LinkedQueueNode;->lvNext()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 114
    invoke-virtual {v1}, Lrx/internal/util/atomic/LinkedQueueNode;->getAndNullValue()Ljava/lang/Object;

    move-result-object v2

    .line 115
    .restart local v2    # "nextValue":Ljava/lang/Object;, "TE;"
    iput-object v1, p0, Lrx/internal/util/unsafe/MpscLinkedQueue;->consumerNode:Lrx/internal/util/atomic/LinkedQueueNode;

    goto :goto_0

    .line 118
    .end local v2    # "nextValue":Ljava/lang/Object;, "TE;"
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected final xchgProducerNode(Lrx/internal/util/atomic/LinkedQueueNode;)Lrx/internal/util/atomic/LinkedQueueNode;
    .locals 6
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
    .line 48
    .local p0, "this":Lrx/internal/util/unsafe/MpscLinkedQueue;, "Lrx/internal/util/unsafe/MpscLinkedQueue<TE;>;"
    .local p1, "newVal":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    :cond_0
    iget-object v4, p0, Lrx/internal/util/unsafe/MpscLinkedQueue;->producerNode:Lrx/internal/util/atomic/LinkedQueueNode;

    .line 49
    .local v4, "oldVal":Lrx/internal/util/atomic/LinkedQueueNode;
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/internal/util/unsafe/MpscLinkedQueue;->P_NODE_OFFSET:J

    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    check-cast v4, Lrx/internal/util/atomic/LinkedQueueNode;

    .end local v4    # "oldVal":Lrx/internal/util/atomic/LinkedQueueNode;
    return-object v4
.end method
