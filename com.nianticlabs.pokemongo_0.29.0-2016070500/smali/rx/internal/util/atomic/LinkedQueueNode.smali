.class public final Lrx/internal/util/atomic/LinkedQueueNode;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "LinkedQueueNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lrx/internal/util/atomic/LinkedQueueNode",
        "<TE;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x215dab4a52b27c94L


# instance fields
.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    .local p0, "this":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    .local p1, "val":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Lrx/internal/util/atomic/LinkedQueueNode;->spValue(Ljava/lang/Object;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getAndNullValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/atomic/LinkedQueueNode;->lpValue()Ljava/lang/Object;

    move-result-object v0

    .line 38
    .local v0, "temp":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lrx/internal/util/atomic/LinkedQueueNode;->spValue(Ljava/lang/Object;)V

    .line 39
    return-object v0
.end method

.method public lpValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/LinkedQueueNode;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public lvNext()Lrx/internal/util/atomic/LinkedQueueNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/util/atomic/LinkedQueueNode",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/atomic/LinkedQueueNode;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/util/atomic/LinkedQueueNode;

    return-object v0
.end method

.method public soNext(Lrx/internal/util/atomic/LinkedQueueNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/util/atomic/LinkedQueueNode",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    .local p1, "n":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    invoke-virtual {p0, p1}, Lrx/internal/util/atomic/LinkedQueueNode;->lazySet(Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public spValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TE;"
    iput-object p1, p0, Lrx/internal/util/atomic/LinkedQueueNode;->value:Ljava/lang/Object;

    .line 48
    return-void
.end method
