.class final Lrx/internal/operators/BlockingOperatorNext$NextIterator;
.super Ljava/lang/Object;
.source "BlockingOperatorNext.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/BlockingOperatorNext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NextIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private error:Ljava/lang/Throwable;

.field private hasNext:Z

.field private isNextConsumed:Z

.field private final items:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final observer:Lrx/internal/operators/BlockingOperatorNext$NextObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/BlockingOperatorNext$NextObserver",
            "<TT;>;"
        }
    .end annotation
.end field

.field private started:Z


# direct methods
.method private constructor <init>(Lrx/Observable;Lrx/internal/operators/BlockingOperatorNext$NextObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/internal/operators/BlockingOperatorNext$NextObserver",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/BlockingOperatorNext$NextIterator;, "Lrx/internal/operators/BlockingOperatorNext$NextIterator<TT;>;"
    .local p1, "items":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "observer":Lrx/internal/operators/BlockingOperatorNext$NextObserver;, "Lrx/internal/operators/BlockingOperatorNext$NextObserver<TT;>;"
    const/4 v0, 0x1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->hasNext:Z

    .line 65
    iput-boolean v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->isNextConsumed:Z

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->error:Ljava/lang/Throwable;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->started:Z

    .line 70
    iput-object p1, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->items:Lrx/Observable;

    .line 71
    iput-object p2, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->observer:Lrx/internal/operators/BlockingOperatorNext$NextObserver;

    .line 72
    return-void
.end method

.method synthetic constructor <init>(Lrx/Observable;Lrx/internal/operators/BlockingOperatorNext$NextObserver;Lrx/internal/operators/BlockingOperatorNext$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/Observable;
    .param p2, "x1"    # Lrx/internal/operators/BlockingOperatorNext$NextObserver;
    .param p3, "x2"    # Lrx/internal/operators/BlockingOperatorNext$1;

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/operators/BlockingOperatorNext$NextIterator;, "Lrx/internal/operators/BlockingOperatorNext$NextIterator<TT;>;"
    invoke-direct {p0, p1, p2}, Lrx/internal/operators/BlockingOperatorNext$NextIterator;-><init>(Lrx/Observable;Lrx/internal/operators/BlockingOperatorNext$NextObserver;)V

    return-void
.end method

.method private moveToNext()Z
    .locals 6

    .prologue
    .local p0, "this":Lrx/internal/operators/BlockingOperatorNext$NextIterator;, "Lrx/internal/operators/BlockingOperatorNext$NextIterator<TT;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 95
    :try_start_0
    iget-boolean v4, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->started:Z

    if-nez v4, :cond_0

    .line 96
    const/4 v4, 0x1

    iput-boolean v4, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->started:Z

    .line 98
    iget-object v4, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->observer:Lrx/internal/operators/BlockingOperatorNext$NextObserver;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->setWaiting(I)V

    .line 99
    iget-object v4, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->items:Lrx/Observable;

    invoke-virtual {v4}, Lrx/Observable;->materialize()Lrx/Observable;

    move-result-object v4

    iget-object v5, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->observer:Lrx/internal/operators/BlockingOperatorNext$NextObserver;

    invoke-virtual {v4, v5}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 102
    :cond_0
    iget-object v4, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->observer:Lrx/internal/operators/BlockingOperatorNext$NextObserver;

    invoke-virtual {v4}, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->takeNext()Lrx/Notification;

    move-result-object v1

    .line 103
    .local v1, "nextNotification":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    invoke-virtual {v1}, Lrx/Notification;->isOnNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 104
    const/4 v3, 0x0

    iput-boolean v3, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->isNextConsumed:Z

    .line 105
    invoke-virtual {v1}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->next:Ljava/lang/Object;

    .line 112
    :goto_0
    return v2

    .line 110
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->hasNext:Z

    .line 111
    invoke-virtual {v1}, Lrx/Notification;->isOnCompleted()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    .line 112
    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {v1}, Lrx/Notification;->isOnError()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 115
    invoke-virtual {v1}, Lrx/Notification;->getThrowable()Ljava/lang/Throwable;

    move-result-object v2

    iput-object v2, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->error:Ljava/lang/Throwable;

    .line 116
    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->error:Ljava/lang/Throwable;

    invoke-static {v2}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v1    # "nextNotification":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->observer:Lrx/internal/operators/BlockingOperatorNext$NextObserver;

    invoke-virtual {v2}, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->unsubscribe()V

    .line 121
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 122
    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->error:Ljava/lang/Throwable;

    .line 123
    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->error:Ljava/lang/Throwable;

    invoke-static {v2}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 118
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "nextNotification":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    :cond_3
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Should not reach here"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 76
    .local p0, "this":Lrx/internal/operators/BlockingOperatorNext$NextIterator;, "Lrx/internal/operators/BlockingOperatorNext$NextIterator<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->error:Ljava/lang/Throwable;

    invoke-static {v0}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 82
    :cond_0
    iget-boolean v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->hasNext:Z

    if-nez v0, :cond_1

    .line 84
    const/4 v0, 0x0

    .line 90
    :goto_0
    return v0

    .line 86
    :cond_1
    iget-boolean v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->isNextConsumed:Z

    if-nez v0, :cond_2

    .line 88
    const/4 v0, 0x1

    goto :goto_0

    .line 90
    :cond_2
    invoke-direct {p0}, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->moveToNext()Z

    move-result v0

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
    .line 129
    .local p0, "this":Lrx/internal/operators/BlockingOperatorNext$NextIterator;, "Lrx/internal/operators/BlockingOperatorNext$NextIterator<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->error:Ljava/lang/Throwable;

    invoke-static {v0}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 133
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->isNextConsumed:Z

    .line 135
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->next:Ljava/lang/Object;

    return-object v0

    .line 138
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more elements"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 144
    .local p0, "this":Lrx/internal/operators/BlockingOperatorNext$NextIterator;, "Lrx/internal/operators/BlockingOperatorNext$NextIterator<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read only iterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
