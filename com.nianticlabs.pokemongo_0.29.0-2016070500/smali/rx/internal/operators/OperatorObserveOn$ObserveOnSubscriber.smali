.class final Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;
.super Lrx/Subscriber;
.source "OperatorObserveOn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorObserveOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ObserveOnSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final COUNTER_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
            "<",
            "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;",
            ">;"
        }
    .end annotation
.end field

.field static final REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
            "<",
            "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final action:Lrx/functions/Action0;

.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field volatile counter:J

.field volatile error:Ljava/lang/Throwable;

.field volatile finished:Z

.field final on:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final recursiveScheduler:Lrx/Scheduler$Worker;

.field volatile requested:J

.field final scheduledUnsubscribe:Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 86
    const-class v0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;

    const-string v1, "requested"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 92
    const-class v0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;

    const-string v1, "counter"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->COUNTER_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lrx/Scheduler;Lrx/Subscriber;)V
    .locals 2
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Scheduler;",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    .local p2, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 75
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->on:Lrx/internal/operators/NotificationLite;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->finished:Z

    .line 82
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->requested:J

    .line 166
    new-instance v0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber$2;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber$2;-><init>(Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->action:Lrx/functions/Action0;

    .line 99
    iput-object p2, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->child:Lrx/Subscriber;

    .line 100
    invoke-virtual {p1}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->recursiveScheduler:Lrx/Scheduler$Worker;

    .line 101
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Lrx/internal/util/unsafe/SpscArrayQueue;

    sget v1, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-direct {v0, v1}, Lrx/internal/util/unsafe/SpscArrayQueue;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->queue:Ljava/util/Queue;

    .line 106
    :goto_0
    new-instance v0, Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;

    iget-object v1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->recursiveScheduler:Lrx/Scheduler$Worker;

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;-><init>(Lrx/Scheduler$Worker;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->scheduledUnsubscribe:Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;

    .line 107
    return-void

    .line 104
    :cond_0
    new-instance v0, Lrx/internal/util/SynchronizedQueue;

    sget v1, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-direct {v0, v1}, Lrx/internal/util/SynchronizedQueue;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->queue:Ljava/util/Queue;

    goto :goto_0
.end method


# virtual methods
.method init()V
    .locals 2

    .prologue
    .line 112
    .local p0, "this":Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->child:Lrx/Subscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->scheduledUnsubscribe:Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;

    invoke-virtual {v0, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 113
    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->child:Lrx/Subscriber;

    new-instance v1, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber$1;

    invoke-direct {v1, p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber$1;-><init>(Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 122
    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->child:Lrx/Subscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->recursiveScheduler:Lrx/Scheduler$Worker;

    invoke-virtual {v0, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 123
    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 124
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 146
    .local p0, "this":Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->finished:Z

    if-eqz v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->finished:Z

    .line 150
    invoke-virtual {p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->schedule()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 155
    .local p0, "this":Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->finished:Z

    if-eqz v0, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iput-object p1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->error:Ljava/lang/Throwable;

    .line 160
    invoke-virtual {p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->unsubscribe()V

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->finished:Z

    .line 163
    invoke-virtual {p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->schedule()V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "this":Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->queue:Ljava/util/Queue;

    iget-object v1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->on:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    new-instance v0, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v0}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->schedule()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 129
    .local p0, "this":Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    sget v0, Lrx/internal/util/RxRingBuffer;->SIZE:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->request(J)V

    .line 130
    return-void
.end method

.method pollQueue()V
    .locals 12

    .prologue
    .line 183
    .local p0, "this":Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    const/4 v0, 0x0

    .line 185
    .local v0, "emitted":I
    :cond_0
    const-wide/16 v8, 0x1

    iput-wide v8, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->counter:J

    .line 186
    const-wide/16 v4, 0x0

    .line 187
    .local v4, "produced":J
    iget-wide v6, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->requested:J

    .line 189
    .local v6, "r":J
    :goto_0
    iget-object v3, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v3}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 226
    :cond_1
    :goto_1
    return-void

    .line 192
    :cond_2
    iget-boolean v3, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->finished:Z

    if-eqz v3, :cond_4

    .line 193
    iget-object v1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->error:Ljava/lang/Throwable;

    .local v1, "error":Ljava/lang/Throwable;
    if-eqz v1, :cond_3

    .line 196
    iget-object v3, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->queue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->clear()V

    .line 197
    iget-object v3, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v3, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 200
    :cond_3
    iget-object v3, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->queue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 201
    iget-object v3, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v3}, Lrx/Subscriber;->onCompleted()V

    goto :goto_1

    .line 205
    .end local v1    # "error":Ljava/lang/Throwable;
    :cond_4
    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_5

    .line 206
    iget-object v3, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->queue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    .line 207
    .local v2, "o":Ljava/lang/Object;
    if-eqz v2, :cond_5

    .line 208
    iget-object v3, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->child:Lrx/Subscriber;

    iget-object v8, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->on:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v8, v2}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v8}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 209
    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    .line 210
    add-int/lit8 v0, v0, 0x1

    .line 211
    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    .line 215
    goto :goto_0

    .line 219
    .end local v2    # "o":Ljava/lang/Object;
    :cond_5
    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-lez v3, :cond_6

    iget-wide v8, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->requested:J

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v3, v8, v10

    if-eqz v3, :cond_6

    .line 220
    sget-object v3, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    neg-long v8, v4

    invoke-virtual {v3, p0, v8, v9}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 222
    :cond_6
    sget-object v3, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->COUNTER_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->decrementAndGet(Ljava/lang/Object;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-gtz v3, :cond_0

    .line 223
    if-lez v0, :cond_1

    .line 224
    int-to-long v8, v0

    invoke-virtual {p0, v8, v9}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->request(J)V

    goto :goto_1
.end method

.method protected schedule()V
    .locals 4

    .prologue
    .line 176
    .local p0, "this":Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    sget-object v0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->COUNTER_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->recursiveScheduler:Lrx/Scheduler$Worker;

    iget-object v1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->action:Lrx/functions/Action0;

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 179
    :cond_0
    return-void
.end method
