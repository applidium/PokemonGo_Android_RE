.class final Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;
.super Lrx/Subscriber;
.source "BlockingOperatorLatest.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/BlockingOperatorLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LatestObserverIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<",
        "Lrx/Notification",
        "<+TT;>;>;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final REFERENCE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;",
            "Lrx/Notification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field iNotif:Lrx/Notification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Notification",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final notify:Ljava/util/concurrent/Semaphore;

.field volatile value:Lrx/Notification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Notification",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const-class v0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;

    const-class v1, Lrx/Notification;

    const-string v2, "value"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->REFERENCE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;, "Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator<TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 60
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->notify:Ljava/util/concurrent/Semaphore;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .prologue
    .line 91
    .local p0, "this":Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;, "Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    invoke-virtual {v2}, Lrx/Notification;->isOnError()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    invoke-virtual {v2}, Lrx/Notification;->getThrowable()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v2}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 94
    :cond_0
    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    invoke-virtual {v2}, Lrx/Notification;->isOnCompleted()Z

    move-result v2

    if-nez v2, :cond_2

    .line 95
    :cond_1
    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    if-nez v2, :cond_2

    .line 97
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->notify:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    sget-object v2, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->REFERENCE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Notification;

    .line 107
    .local v1, "n":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    iput-object v1, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    .line 108
    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    invoke-virtual {v2}, Lrx/Notification;->isOnError()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 109
    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    invoke-virtual {v2}, Lrx/Notification;->getThrowable()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v2}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 98
    .end local v1    # "n":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    :catch_0
    move-exception v0

    .line 99
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->unsubscribe()V

    .line 100
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 101
    invoke-static {v0}, Lrx/Notification;->createOnError(Ljava/lang/Throwable;)Lrx/Notification;

    move-result-object v2

    iput-object v2, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    .line 102
    invoke-static {v0}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 113
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_2
    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    invoke-virtual {v2}, Lrx/Notification;->isOnCompleted()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;, "Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    invoke-virtual {v1}, Lrx/Notification;->isOnNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    invoke-virtual {v1}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 121
    .local v0, "v":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    .line 122
    return-object v0

    .line 125
    .end local v0    # "v":Ljava/lang/Object;, "TT;"
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 84
    .local p0, "this":Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;, "Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator<TT;>;"
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 79
    .local p0, "this":Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;, "Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator<TT;>;"
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;, "Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator<TT;>;"
    check-cast p1, Lrx/Notification;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->onNext(Lrx/Notification;)V

    return-void
.end method

.method public onNext(Lrx/Notification;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Notification",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;, "Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator<TT;>;"
    .local p1, "args":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    sget-object v1, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->REFERENCE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 71
    .local v0, "wasntAvailable":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 72
    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->notify:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 74
    :cond_0
    return-void

    .line 70
    .end local v0    # "wasntAvailable":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 130
    .local p0, "this":Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;, "Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read-only iterator."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
