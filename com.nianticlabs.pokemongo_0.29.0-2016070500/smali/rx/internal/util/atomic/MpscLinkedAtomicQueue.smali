.class public final Lrx/internal/util/atomic/MpscLinkedAtomicQueue;
.super Lrx/internal/util/atomic/BaseLinkedAtomicQueue;
.source "MpscLinkedAtomicQueue.java"


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
    .locals 1

    .prologue
    .line 37
    .local p0, "this":Lrx/internal/util/atomic/MpscLinkedAtomicQueue;, "Lrx/internal/util/atomic/MpscLinkedAtomicQueue<TE;>;"
    invoke-direct {p0}, Lrx/internal/util/atomic/BaseLinkedAtomicQueue;-><init>()V

    .line 38
    new-instance v0, Lrx/internal/util/atomic/LinkedQueueNode;

    invoke-direct {v0}, Lrx/internal/util/atomic/LinkedQueueNode;-><init>()V

    .line 39
    .local v0, "node":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    invoke-virtual {p0, v0}, Lrx/internal/util/atomic/MpscLinkedAtomicQueue;->spConsumerNode(Lrx/internal/util/atomic/LinkedQueueNode;)V

    .line 40
    invoke-virtual {p0, v0}, Lrx/internal/util/atomic/MpscLinkedAtomicQueue;->xchgProducerNode(Lrx/internal/util/atomic/LinkedQueueNode;)Lrx/internal/util/atomic/LinkedQueueNode;

    .line 41
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
    .line 60
    .local p0, "this":Lrx/internal/util/atomic/MpscLinkedAtomicQueue;, "Lrx/internal/util/atomic/MpscLinkedAtomicQueue<TE;>;"
    .local p1, "nextValue":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 61
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "null elements not allowed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    :cond_0
    new-instance v0, Lrx/internal/util/atomic/LinkedQueueNode;

    invoke-direct {v0, p1}, Lrx/internal/util/atomic/LinkedQueueNode;-><init>(Ljava/lang/Object;)V

    .line 64
    .local v0, "nextNode":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    invoke-virtual {p0, v0}, Lrx/internal/util/atomic/MpscLinkedAtomicQueue;->xchgProducerNode(Lrx/internal/util/atomic/LinkedQueueNode;)Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v1

    .line 67
    .local v1, "prevProducerNode":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    invoke-virtual {v1, v0}, Lrx/internal/util/atomic/LinkedQueueNode;->soNext(Lrx/internal/util/atomic/LinkedQueueNode;)V

    .line 68
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
    .line 112
    .local p0, "this":Lrx/internal/util/atomic/MpscLinkedAtomicQueue;, "Lrx/internal/util/atomic/MpscLinkedAtomicQueue<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/atomic/MpscLinkedAtomicQueue;->lpConsumerNode()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v0

    .line 113
    .local v0, "currConsumerNode":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    invoke-virtual {v0}, Lrx/internal/util/atomic/LinkedQueueNode;->lvNext()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v1

    .line 114
    .local v1, "nextNode":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {v1}, Lrx/internal/util/atomic/LinkedQueueNode;->lpValue()Ljava/lang/Object;

    move-result-object v2

    .line 123
    :goto_0
    return-object v2

    .line 117
    :cond_0
    invoke-virtual {p0}, Lrx/internal/util/atomic/MpscLinkedAtomicQueue;->lvProducerNode()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v2

    if-eq v0, v2, :cond_2

    .line 119
    :cond_1
    invoke-virtual {v0}, Lrx/internal/util/atomic/LinkedQueueNode;->lvNext()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 121
    invoke-virtual {v1}, Lrx/internal/util/atomic/LinkedQueueNode;->lpValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 123
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
    .line 89
    .local p0, "this":Lrx/internal/util/atomic/MpscLinkedAtomicQueue;, "Lrx/internal/util/atomic/MpscLinkedAtomicQueue<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/atomic/MpscLinkedAtomicQueue;->lpConsumerNode()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v0

    .line 90
    .local v0, "currConsumerNode":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    invoke-virtual {v0}, Lrx/internal/util/atomic/LinkedQueueNode;->lvNext()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v1

    .line 91
    .local v1, "nextNode":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {v1}, Lrx/internal/util/atomic/LinkedQueueNode;->getAndNullValue()Ljava/lang/Object;

    move-result-object v2

    .line 94
    .local v2, "nextValue":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v1}, Lrx/internal/util/atomic/MpscLinkedAtomicQueue;->spConsumerNode(Lrx/internal/util/atomic/LinkedQueueNode;)V

    .line 107
    .end local v2    # "nextValue":Ljava/lang/Object;, "TE;"
    :goto_0
    return-object v2

    .line 97
    :cond_0
    invoke-virtual {p0}, Lrx/internal/util/atomic/MpscLinkedAtomicQueue;->lvProducerNode()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v3

    if-eq v0, v3, :cond_2

    .line 99
    :cond_1
    invoke-virtual {v0}, Lrx/internal/util/atomic/LinkedQueueNode;->lvNext()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 103
    invoke-virtual {v1}, Lrx/internal/util/atomic/LinkedQueueNode;->getAndNullValue()Ljava/lang/Object;

    move-result-object v2

    .line 104
    .restart local v2    # "nextValue":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v1}, Lrx/internal/util/atomic/MpscLinkedAtomicQueue;->spConsumerNode(Lrx/internal/util/atomic/LinkedQueueNode;)V

    goto :goto_0

    .line 107
    .end local v2    # "nextValue":Ljava/lang/Object;, "TE;"
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
