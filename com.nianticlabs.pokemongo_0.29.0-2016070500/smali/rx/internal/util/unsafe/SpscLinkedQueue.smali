.class public final Lrx/internal/util/unsafe/SpscLinkedQueue;
.super Lrx/internal/util/unsafe/BaseLinkedQueue;
.source "SpscLinkedQueue.java"


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
    .locals 2

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/util/unsafe/SpscLinkedQueue;, "Lrx/internal/util/unsafe/SpscLinkedQueue<TE;>;"
    invoke-direct {p0}, Lrx/internal/util/unsafe/BaseLinkedQueue;-><init>()V

    .line 42
    new-instance v0, Lrx/internal/util/atomic/LinkedQueueNode;

    invoke-direct {v0}, Lrx/internal/util/atomic/LinkedQueueNode;-><init>()V

    invoke-virtual {p0, v0}, Lrx/internal/util/unsafe/SpscLinkedQueue;->spProducerNode(Lrx/internal/util/atomic/LinkedQueueNode;)V

    .line 43
    iget-object v0, p0, Lrx/internal/util/unsafe/SpscLinkedQueue;->producerNode:Lrx/internal/util/atomic/LinkedQueueNode;

    invoke-virtual {p0, v0}, Lrx/internal/util/unsafe/SpscLinkedQueue;->spConsumerNode(Lrx/internal/util/atomic/LinkedQueueNode;)V

    .line 44
    iget-object v0, p0, Lrx/internal/util/unsafe/SpscLinkedQueue;->consumerNode:Lrx/internal/util/atomic/LinkedQueueNode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lrx/internal/util/atomic/LinkedQueueNode;->soNext(Lrx/internal/util/atomic/LinkedQueueNode;)V

    .line 45
    return-void
.end method


# virtual methods
.method public offer(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lrx/internal/util/unsafe/SpscLinkedQueue;, "Lrx/internal/util/unsafe/SpscLinkedQueue<TE;>;"
    .local p1, "nextValue":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 65
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "null elements not allowed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    :cond_0
    new-instance v0, Lrx/internal/util/atomic/LinkedQueueNode;

    invoke-direct {v0, p1}, Lrx/internal/util/atomic/LinkedQueueNode;-><init>(Ljava/lang/Object;)V

    .line 68
    .local v0, "nextNode":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    iget-object v1, p0, Lrx/internal/util/unsafe/SpscLinkedQueue;->producerNode:Lrx/internal/util/atomic/LinkedQueueNode;

    invoke-virtual {v1, v0}, Lrx/internal/util/atomic/LinkedQueueNode;->soNext(Lrx/internal/util/atomic/LinkedQueueNode;)V

    .line 69
    iput-object v0, p0, Lrx/internal/util/unsafe/SpscLinkedQueue;->producerNode:Lrx/internal/util/atomic/LinkedQueueNode;

    .line 70
    const/4 v1, 0x1

    return v1
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lrx/internal/util/unsafe/SpscLinkedQueue;, "Lrx/internal/util/unsafe/SpscLinkedQueue<TE;>;"
    iget-object v1, p0, Lrx/internal/util/unsafe/SpscLinkedQueue;->consumerNode:Lrx/internal/util/atomic/LinkedQueueNode;

    invoke-virtual {v1}, Lrx/internal/util/atomic/LinkedQueueNode;->lvNext()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v0

    .line 102
    .local v0, "nextNode":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Lrx/internal/util/atomic/LinkedQueueNode;->lpValue()Ljava/lang/Object;

    move-result-object v1

    .line 105
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lrx/internal/util/unsafe/SpscLinkedQueue;, "Lrx/internal/util/unsafe/SpscLinkedQueue<TE;>;"
    iget-object v2, p0, Lrx/internal/util/unsafe/SpscLinkedQueue;->consumerNode:Lrx/internal/util/atomic/LinkedQueueNode;

    invoke-virtual {v2}, Lrx/internal/util/atomic/LinkedQueueNode;->lvNext()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v0

    .line 90
    .local v0, "nextNode":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Lrx/internal/util/atomic/LinkedQueueNode;->getAndNullValue()Ljava/lang/Object;

    move-result-object v1

    .line 93
    .local v1, "nextValue":Ljava/lang/Object;, "TE;"
    iput-object v0, p0, Lrx/internal/util/unsafe/SpscLinkedQueue;->consumerNode:Lrx/internal/util/atomic/LinkedQueueNode;

    .line 96
    .end local v1    # "nextValue":Ljava/lang/Object;, "TE;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
