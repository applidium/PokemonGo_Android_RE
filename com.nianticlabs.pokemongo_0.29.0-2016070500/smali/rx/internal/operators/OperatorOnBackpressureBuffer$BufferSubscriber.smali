.class final Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;
.super Lrx/Subscriber;
.source "OperatorOnBackpressureBuffer.java"

# interfaces
.implements Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorOnBackpressureBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BufferSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;",
        "Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;"
    }
.end annotation


# instance fields
.field private final baseCapacity:Ljava/lang/Long;

.field private final capacity:Ljava/util/concurrent/atomic/AtomicLong;

.field private final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final manager:Lrx/internal/util/BackpressureDrainManager;

.field private final on:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final onOverflow:Lrx/functions/Action0;

.field private final queue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final saturated:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lrx/Subscriber;Ljava/lang/Long;Lrx/functions/Action0;)V
    .locals 4
    .param p2, "capacity"    # Ljava/lang/Long;
    .param p3, "onOverflow"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Ljava/lang/Long;",
            "Lrx/functions/Action0;",
            ")V"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 75
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->saturated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 81
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->on:Lrx/internal/operators/NotificationLite;

    .line 85
    iput-object p1, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->child:Lrx/Subscriber;

    .line 86
    iput-object p2, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->baseCapacity:Ljava/lang/Long;

    .line 87
    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    :goto_0
    iput-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->capacity:Ljava/util/concurrent/atomic/AtomicLong;

    .line 88
    iput-object p3, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->onOverflow:Lrx/functions/Action0;

    .line 89
    new-instance v0, Lrx/internal/util/BackpressureDrainManager;

    invoke-direct {v0, p0}, Lrx/internal/util/BackpressureDrainManager;-><init>(Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->manager:Lrx/internal/util/BackpressureDrainManager;

    .line 90
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private assertCapacity()Z
    .locals 8

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber<TT;>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 145
    iget-object v4, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->capacity:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v4, :cond_0

    .line 166
    :goto_0
    return v2

    .line 151
    :cond_0
    iget-object v4, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->capacity:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 152
    .local v0, "currCapacity":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_2

    .line 153
    iget-object v4, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->saturated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->unsubscribe()V

    .line 155
    iget-object v2, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->child:Lrx/Subscriber;

    new-instance v4, Lrx/exceptions/MissingBackpressureException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Overflowed buffer of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->baseCapacity:Ljava/lang/Long;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lrx/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 158
    iget-object v2, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->onOverflow:Lrx/functions/Action0;

    if-eqz v2, :cond_1

    .line 159
    iget-object v2, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->onOverflow:Lrx/functions/Action0;

    invoke-interface {v2}, Lrx/functions/Action0;->call()V

    :cond_1
    move v2, v3

    .line 162
    goto :goto_0

    .line 165
    :cond_2
    iget-object v4, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->capacity:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v6, 0x1

    sub-long v6, v0, v6

    invoke-virtual {v4, v0, v1, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 121
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->on:Lrx/internal/operators/NotificationLite;

    iget-object v1, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, v1, p1}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public complete(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 125
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber<TT;>;"
    if-eqz p1, :cond_0

    .line 126
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_0
.end method

.method protected manager()Lrx/Producer;
    .locals 1

    .prologue
    .line 169
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->manager:Lrx/internal/util/BackpressureDrainManager;

    return-object v0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 98
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->saturated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->manager:Lrx/internal/util/BackpressureDrainManager;

    invoke-virtual {v0}, Lrx/internal/util/BackpressureDrainManager;->terminateAndDrain()V

    .line 101
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 105
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->saturated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->manager:Lrx/internal/util/BackpressureDrainManager;

    invoke-virtual {v0, p1}, Lrx/internal/util/BackpressureDrainManager;->terminateAndDrain(Ljava/lang/Throwable;)V

    .line 108
    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->assertCapacity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->on:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->manager:Lrx/internal/util/BackpressureDrainManager;

    invoke-virtual {v0}, Lrx/internal/util/BackpressureDrainManager;->drain()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 93
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber<TT;>;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->request(J)V

    .line 94
    return-void
.end method

.method public peek()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 133
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 137
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 138
    .local v0, "value":Ljava/lang/Object;
    iget-object v1, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->capacity:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 139
    iget-object v1, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->capacity:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 141
    :cond_0
    return-object v0
.end method
