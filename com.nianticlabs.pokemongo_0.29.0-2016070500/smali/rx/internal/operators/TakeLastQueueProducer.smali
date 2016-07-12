.class final Lrx/internal/operators/TakeLastQueueProducer;
.super Ljava/lang/Object;
.source "TakeLastQueueProducer.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Producer;"
    }
.end annotation


# static fields
.field private static final REQUESTED_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
            "<",
            "Lrx/internal/operators/TakeLastQueueProducer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final deque:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile emittingStarted:Z

.field private final notification:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile requested:J

.field private final subscriber:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-class v0, Lrx/internal/operators/TakeLastQueueProducer;

    const-string v1, "requested"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/TakeLastQueueProducer;->REQUESTED_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lrx/internal/operators/NotificationLite;Ljava/util/Deque;Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;",
            "Ljava/util/Deque",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/TakeLastQueueProducer;, "Lrx/internal/operators/TakeLastQueueProducer<TT;>;"
    .local p1, "n":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    .local p2, "q":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/lang/Object;>;"
    .local p3, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/TakeLastQueueProducer;->emittingStarted:Z

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lrx/internal/operators/TakeLastQueueProducer;->requested:J

    .line 33
    iput-object p1, p0, Lrx/internal/operators/TakeLastQueueProducer;->notification:Lrx/internal/operators/NotificationLite;

    .line 34
    iput-object p2, p0, Lrx/internal/operators/TakeLastQueueProducer;->deque:Ljava/util/Deque;

    .line 35
    iput-object p3, p0, Lrx/internal/operators/TakeLastQueueProducer;->subscriber:Lrx/Subscriber;

    .line 36
    return-void
.end method


# virtual methods
.method emit(J)V
    .locals 19
    .param p1, "previousRequested"    # J

    .prologue
    .line 68
    .local p0, "this":Lrx/internal/operators/TakeLastQueueProducer;, "Lrx/internal/operators/TakeLastQueueProducer<TT;>;"
    move-object/from16 v0, p0

    iget-wide v2, v0, Lrx/internal/operators/TakeLastQueueProducer;->requested:J

    const-wide v16, 0x7fffffffffffffffL

    cmp-long v2, v2, v16

    if-nez v2, :cond_3

    .line 70
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 72
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lrx/internal/operators/TakeLastQueueProducer;->deque:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 73
    .local v14, "value":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v2, v0, Lrx/internal/operators/TakeLastQueueProducer;->subscriber:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->isUnsubscribed()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    move-object/from16 v0, p0

    iget-object v2, v0, Lrx/internal/operators/TakeLastQueueProducer;->deque:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->clear()V

    .line 126
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v14    # "value":Ljava/lang/Object;
    :cond_0
    :goto_1
    return-void

    .line 75
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v14    # "value":Ljava/lang/Object;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lrx/internal/operators/TakeLastQueueProducer;->notification:Lrx/internal/operators/NotificationLite;

    move-object/from16 v0, p0

    iget-object v3, v0, Lrx/internal/operators/TakeLastQueueProducer;->subscriber:Lrx/Subscriber;

    invoke-virtual {v2, v3, v14}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 77
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v14    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v8

    .line 78
    .local v8, "e":Ljava/lang/Throwable;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lrx/internal/operators/TakeLastQueueProducer;->subscriber:Lrx/Subscriber;

    invoke-virtual {v2, v8}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    move-object/from16 v0, p0

    iget-object v2, v0, Lrx/internal/operators/TakeLastQueueProducer;->deque:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->clear()V

    goto :goto_1

    .end local v8    # "e":Ljava/lang/Throwable;
    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lrx/internal/operators/TakeLastQueueProducer;->deque:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->clear()V

    goto :goto_1

    .end local v10    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lrx/internal/operators/TakeLastQueueProducer;->deque:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->clear()V

    throw v2

    .line 87
    :cond_3
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 93
    :cond_4
    move-object/from16 v0, p0

    iget-wide v12, v0, Lrx/internal/operators/TakeLastQueueProducer;->requested:J

    .line 94
    .local v12, "numToEmit":J
    const/4 v9, 0x0

    .line 96
    .local v9, "emitted":I
    :goto_2
    const-wide/16 v2, 0x1

    sub-long/2addr v12, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-ltz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lrx/internal/operators/TakeLastQueueProducer;->deque:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v11

    .local v11, "o":Ljava/lang/Object;
    if-eqz v11, :cond_5

    .line 97
    move-object/from16 v0, p0

    iget-object v2, v0, Lrx/internal/operators/TakeLastQueueProducer;->subscriber:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 100
    move-object/from16 v0, p0

    iget-object v2, v0, Lrx/internal/operators/TakeLastQueueProducer;->notification:Lrx/internal/operators/NotificationLite;

    move-object/from16 v0, p0

    iget-object v3, v0, Lrx/internal/operators/TakeLastQueueProducer;->subscriber:Lrx/Subscriber;

    invoke-virtual {v2, v3, v11}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 104
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 108
    .end local v11    # "o":Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p0

    iget-wide v4, v0, Lrx/internal/operators/TakeLastQueueProducer;->requested:J

    .line 109
    .local v4, "oldRequested":J
    int-to-long v2, v9

    sub-long v6, v4, v2

    .line 110
    .local v6, "newRequested":J
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v4, v2

    if-eqz v2, :cond_4

    .line 115
    sget-object v2, Lrx/internal/operators/TakeLastQueueProducer;->REQUESTED_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 116
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-nez v2, :cond_4

    goto/16 :goto_1
.end method

.method public request(J)V
    .locals 7
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/TakeLastQueueProducer;, "Lrx/internal/operators/TakeLastQueueProducer<TT;>;"
    const-wide v4, 0x7fffffffffffffffL

    .line 51
    iget-wide v2, p0, Lrx/internal/operators/TakeLastQueueProducer;->requested:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    cmp-long v2, p1, v4

    if-nez v2, :cond_2

    .line 56
    sget-object v2, Lrx/internal/operators/TakeLastQueueProducer;->REQUESTED_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, p0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndSet(Ljava/lang/Object;J)J

    move-result-wide v0

    .line 60
    .local v0, "_c":J
    :goto_1
    iget-boolean v2, p0, Lrx/internal/operators/TakeLastQueueProducer;->emittingStarted:Z

    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/TakeLastQueueProducer;->emit(J)V

    goto :goto_0

    .line 58
    .end local v0    # "_c":J
    :cond_2
    sget-object v2, Lrx/internal/operators/TakeLastQueueProducer;->REQUESTED_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-static {v2, p0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;Ljava/lang/Object;J)J

    move-result-wide v0

    .restart local v0    # "_c":J
    goto :goto_1
.end method

.method startEmitting()V
    .locals 2

    .prologue
    .line 43
    .local p0, "this":Lrx/internal/operators/TakeLastQueueProducer;, "Lrx/internal/operators/TakeLastQueueProducer<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/TakeLastQueueProducer;->emittingStarted:Z

    if-nez v0, :cond_0

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/TakeLastQueueProducer;->emittingStarted:Z

    .line 45
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/TakeLastQueueProducer;->emit(J)V

    .line 47
    :cond_0
    return-void
.end method
