.class public final Lrx/internal/operators/BlockingOperatorToFuture;
.super Ljava/lang/Object;
.source "BlockingOperatorToFuture.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toFuture(Lrx/Observable;)Ljava/util/concurrent/Future;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "that":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 54
    .local v1, "finished":Ljava/util/concurrent/CountDownLatch;
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 55
    .local v3, "value":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TT;>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 57
    .local v0, "error":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    invoke-virtual {p0}, Lrx/Observable;->single()Lrx/Observable;

    move-result-object v4

    new-instance v5, Lrx/internal/operators/BlockingOperatorToFuture$1;

    invoke-direct {v5, v1, v0, v3}, Lrx/internal/operators/BlockingOperatorToFuture$1;-><init>(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v4, v5}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v2

    .line 77
    .local v2, "s":Lrx/Subscription;
    new-instance v4, Lrx/internal/operators/BlockingOperatorToFuture$2;

    invoke-direct {v4, v1, v2, v0, v3}, Lrx/internal/operators/BlockingOperatorToFuture$2;-><init>(Ljava/util/concurrent/CountDownLatch;Lrx/Subscription;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-object v4
.end method
