.class public final Lrx/internal/util/atomic/SpscLinkedAtomicQueue;
.super Lrx/internal/util/atomic/BaseLinkedAtomicQueue;
.source "SpscLinkedAtomicQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/atomic/BaseLinkedAtomicQueue",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    .local p0, "this":Lrx/internal/util/atomic/SpscLinkedAtomicQueue;, "Lrx/internal/util/atomic/SpscLinkedAtomicQueue<TE;>;"
    invoke-direct {p0}, Lrx/internal/util/atomic/BaseLinkedAtomicQueue;-><init>()V

    .line 38
    new-instance v0, Lrx/internal/util/atomic/LinkedQueueNode;

    invoke-direct {v0}, Lrx/internal/util/atomic/LinkedQueueNode;-><init>()V

    .line 39
    .local v0, "node":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    invoke-virtual {p0, v0}, Lrx/internal/util/atomic/SpscLinkedAtomicQueue;->spProducerNode(Lrx/internal/util/atomic/LinkedQueueNode;)V

    .line 40
    invoke-virtual {p0, v0}, Lrx/internal/util/atomic/SpscLinkedAtomicQueue;->spConsumerNode(Lrx/internal/util/atomic/LinkedQueueNode;)V

    .line 41
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lrx/internal/util/atomic/LinkedQueueNode;->soNext(Lrx/internal/util/atomic/LinkedQueueNode;)V

    .line 42
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
    .line 61
    .local p0, "this":Lrx/internal/util/atomic/SpscLinkedAtomicQueue;, "Lrx/internal/util/atomic/SpscLinkedAtomicQueue<TE;>;"
    .local p1, "nextValue":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 62
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "null elements not allowed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_0
    new-instance v0, Lrx/internal/util/atomic/LinkedQueueNode;

    invoke-direct {v0, p1}, Lrx/internal/util/atomic/LinkedQueueNode;-><init>(Ljava/lang/Object;)V

    .line 65
    .local v0, "nextNode":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/atomic/SpscLinkedAtomicQueue;->lpProducerNode()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v1

    invoke-virtual {v1, v0}, Lrx/internal/util/atomic/LinkedQueueNode;->soNext(Lrx/internal/util/atomic/LinkedQueueNode;)V

    .line 66
    invoke-virtual {p0, v0}, Lrx/internal/util/atomic/SpscLinkedAtomicQueue;->spProducerNode(Lrx/internal/util/atomic/LinkedQueueNode;)V

    .line 67
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
    .line 98
    .local p0, "this":Lrx/internal/util/atomic/SpscLinkedAtomicQueue;, "Lrx/internal/util/atomic/SpscLinkedAtomicQueue<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/atomic/SpscLinkedAtomicQueue;->lpConsumerNode()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v1

    invoke-virtual {v1}, Lrx/internal/util/atomic/LinkedQueueNode;->lvNext()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v0

    .line 99
    .local v0, "nextNode":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lrx/internal/util/atomic/LinkedQueueNode;->lpValue()Ljava/lang/Object;

    move-result-object v1

    .line 102
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
    .line 86
    .local p0, "this":Lrx/internal/util/atomic/SpscLinkedAtomicQueue;, "Lrx/internal/util/atomic/SpscLinkedAtomicQueue<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/atomic/SpscLinkedAtomicQueue;->lpConsumerNode()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v2

    invoke-virtual {v2}, Lrx/internal/util/atomic/LinkedQueueNode;->lvNext()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v0

    .line 87
    .local v0, "nextNode":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Lrx/internal/util/atomic/LinkedQueueNode;->getAndNullValue()Ljava/lang/Object;

    move-result-object v1

    .line 90
    .local v1, "nextValue":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0}, Lrx/internal/util/atomic/SpscLinkedAtomicQueue;->spConsumerNode(Lrx/internal/util/atomic/LinkedQueueNode;)V

    .line 93
    .end local v1    # "nextValue":Ljava/lang/Object;, "TE;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
