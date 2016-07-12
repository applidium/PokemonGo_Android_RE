.class final Lrx/internal/operators/BlockingOperatorToFuture$2;
.super Ljava/lang/Object;
.source "BlockingOperatorToFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/BlockingOperatorToFuture;->toFuture(Lrx/Observable;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private volatile cancelled:Z

.field final synthetic val$error:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$finished:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$s:Lrx/Subscription;

.field final synthetic val$value:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountDownLatch;Lrx/Subscription;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1

    .prologue
    .line 77
    iput-object p1, p0, Lrx/internal/operators/BlockingOperatorToFuture$2;->val$finished:Ljava/util/concurrent/CountDownLatch;

    iput-object p2, p0, Lrx/internal/operators/BlockingOperatorToFuture$2;->val$s:Lrx/Subscription;

    iput-object p3, p0, Lrx/internal/operators/BlockingOperatorToFuture$2;->val$error:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lrx/internal/operators/BlockingOperatorToFuture$2;->val$value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/BlockingOperatorToFuture$2;->cancelled:Z

    return-void
.end method

.method private getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorToFuture$2;->val$error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    const-string v2, "Observable onError"

    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorToFuture$2;->val$error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v1, v2, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 123
    :cond_0
    iget-boolean v0, p0, Lrx/internal/operators/BlockingOperatorToFuture$2;->cancelled:Z

    if-eqz v0, :cond_1

    .line 125
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Subscription unsubscribed"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorToFuture$2;->val$value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 6
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    const/4 v0, 0x1

    .line 83
    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorToFuture$2;->val$finished:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 84
    iput-boolean v0, p0, Lrx/internal/operators/BlockingOperatorToFuture$2;->cancelled:Z

    .line 85
    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorToFuture$2;->val$s:Lrx/Subscription;

    invoke-interface {v1}, Lrx/Subscription;->unsubscribe()V

    .line 87
    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorToFuture$2;->val$finished:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorToFuture$2;->val$finished:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 108
    invoke-direct {p0}, Lrx/internal/operators/BlockingOperatorToFuture$2;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorToFuture$2;->val$finished:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0}, Lrx/internal/operators/BlockingOperatorToFuture$2;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 116
    :cond_0
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timed out after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms waiting for underlying Observable."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lrx/internal/operators/BlockingOperatorToFuture$2;->cancelled:Z

    return v0
.end method

.method public isDone()Z
    .locals 4

    .prologue
    .line 102
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorToFuture$2;->val$finished:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
