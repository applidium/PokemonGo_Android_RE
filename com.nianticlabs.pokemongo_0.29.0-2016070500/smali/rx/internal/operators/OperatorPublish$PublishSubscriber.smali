.class final Lrx/internal/operators/OperatorPublish$PublishSubscriber;
.super Lrx/Subscriber;
.source "OperatorPublish.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorPublish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PublishSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lrx/internal/operators/OperatorPublish$InnerProducer;

.field static final TERMINATED:[Lrx/internal/operators/OperatorPublish$InnerProducer;


# instance fields
.field final current:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/internal/operators/OperatorPublish$PublishSubscriber",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field emitting:Z

.field missed:Z

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field final producers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[",
            "Lrx/internal/operators/OperatorPublish$InnerProducer;",
            ">;"
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

.field final shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

.field volatile terminalEvent:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 202
    new-array v0, v1, [Lrx/internal/operators/OperatorPublish$InnerProducer;

    sput-object v0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->EMPTY:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    .line 204
    new-array v0, v1, [Lrx/internal/operators/OperatorPublish$InnerProducer;

    sput-object v0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->TERMINATED:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/internal/operators/OperatorPublish$PublishSubscriber",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "this":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    .local p1, "current":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 220
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lrx/internal/util/unsafe/SpscArrayQueue;

    sget v1, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-direct {v0, v1}, Lrx/internal/util/unsafe/SpscArrayQueue;-><init>(I)V

    :goto_0
    iput-object v0, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->queue:Ljava/util/Queue;

    .line 224
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    .line 225
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->EMPTY:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 226
    iput-object p1, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReference;

    .line 227
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 228
    return-void

    .line 220
    :cond_0
    new-instance v0, Lrx/internal/util/SynchronizedQueue;

    sget v1, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-direct {v0, v1}, Lrx/internal/util/SynchronizedQueue;-><init>(I)V

    goto :goto_0
.end method


# virtual methods
.method add(Lrx/internal/operators/OperatorPublish$InnerProducer;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorPublish$InnerProducer",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    .local p1, "producer":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    const/4 v3, 0x0

    .line 291
    if-nez p1, :cond_0

    .line 292
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 297
    :cond_0
    iget-object v4, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/operators/OperatorPublish$InnerProducer;

    .line 300
    .local v0, "c":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    sget-object v4, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->TERMINATED:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    if-ne v0, v4, :cond_1

    .line 310
    :goto_0
    return v3

    .line 304
    :cond_1
    array-length v1, v0

    .line 305
    .local v1, "len":I
    add-int/lit8 v4, v1, 0x1

    new-array v2, v4, [Lrx/internal/operators/OperatorPublish$InnerProducer;

    .line 306
    .local v2, "u":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 307
    aput-object p1, v2, v1

    .line 309
    iget-object v4, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 310
    const/4 v3, 0x1

    goto :goto_0
.end method

.method checkTerminated(Ljava/lang/Object;Z)Z
    .locals 8
    .param p1, "term"    # Ljava/lang/Object;
    .param p2, "empty"    # Z

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 376
    if-eqz p1, :cond_3

    .line 378
    iget-object v6, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v6, p1}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 380
    if-eqz p2, :cond_3

    .line 383
    iget-object v6, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6, p0, v7}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 397
    :try_start_0
    iget-object v6, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v7, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->TERMINATED:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/operators/OperatorPublish$InnerProducer;

    .local v0, "arr$":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 398
    .local v2, "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<*>;"
    iget-object v6, v2, Lrx/internal/operators/OperatorPublish$InnerProducer;->child:Lrx/Subscriber;

    invoke-virtual {v6}, Lrx/Subscriber;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 403
    .end local v2    # "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<*>;"
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->unsubscribe()V

    .line 430
    .end local v0    # "arr$":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    :goto_1
    return v5

    .line 403
    :catchall_0
    move-exception v5

    invoke-virtual {p0}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->unsubscribe()V

    throw v5

    .line 409
    :cond_1
    iget-object v6, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v6, p1}, Lrx/internal/operators/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    .line 412
    .local v4, "t":Ljava/lang/Throwable;
    iget-object v6, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6, p0, v7}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 417
    :try_start_1
    iget-object v6, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v7, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->TERMINATED:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/operators/OperatorPublish$InnerProducer;

    .restart local v0    # "arr$":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_2
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 418
    .restart local v2    # "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<*>;"
    iget-object v6, v2, Lrx/internal/operators/OperatorPublish$InnerProducer;->child:Lrx/Subscriber;

    invoke-virtual {v6, v4}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 417
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 423
    .end local v2    # "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<*>;"
    :cond_2
    invoke-virtual {p0}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->unsubscribe()V

    goto :goto_1

    .end local v0    # "arr$":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    :catchall_1
    move-exception v5

    invoke-virtual {p0}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->unsubscribe()V

    throw v5

    .line 430
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method dispatch()V
    .locals 26

    .prologue
    .line 441
    .local p0, "this":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    monitor-enter p0

    .line 442
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->emitting:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    .line 443
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->missed:Z

    .line 444
    monitor-exit p0

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->emitting:Z

    .line 448
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->missed:Z

    .line 449
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 458
    const/16 v16, 0x0

    .line 469
    .local v16, "skipFinal":Z
    :cond_2
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 476
    .local v18, "term":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->queue:Ljava/util/Queue;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Queue;->isEmpty()Z

    move-result v6

    .line 480
    .local v6, "empty":Z
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->checkTerminated(Ljava/lang/Object;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result v22

    if-eqz v22, :cond_3

    .line 481
    const/16 v16, 0x1

    .line 606
    if-nez v16, :cond_0

    .line 608
    monitor-enter p0

    .line 609
    const/16 v22, 0x0

    :try_start_2
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->emitting:Z

    .line 610
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v22

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v22

    .line 449
    .end local v6    # "empty":Z
    .end local v16    # "skipFinal":Z
    .end local v18    # "term":Ljava/lang/Object;
    :catchall_1
    move-exception v22

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v22

    .line 488
    .restart local v6    # "empty":Z
    .restart local v16    # "skipFinal":Z
    .restart local v18    # "term":Ljava/lang/Object;
    :cond_3
    if-nez v6, :cond_f

    .line 492
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lrx/internal/operators/OperatorPublish$InnerProducer;

    .line 494
    .local v11, "ps":[Lrx/internal/operators/OperatorPublish$InnerProducer;, "[Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    array-length v9, v11

    .line 496
    .local v9, "len":I
    const-wide v12, 0x7fffffffffffffffL

    .line 498
    .local v12, "maxRequested":J
    const/16 v19, 0x0

    .line 503
    .local v19, "unsubscribed":I
    move-object v4, v11

    .local v4, "arr$":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    array-length v10, v4

    .local v10, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_2
    if-ge v7, v10, :cond_6

    aget-object v8, v4, v7

    .line 504
    .local v8, "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    invoke-virtual {v8}, Lrx/internal/operators/OperatorPublish$InnerProducer;->get()J

    move-result-wide v14

    .line 507
    .local v14, "r":J
    const-wide/16 v22, 0x0

    cmp-long v22, v14, v22

    if-ltz v22, :cond_5

    .line 508
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 503
    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 511
    :cond_5
    const-wide/high16 v22, -0x8000000000000000L

    cmp-long v22, v14, v22

    if-nez v22, :cond_4

    .line 512
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 519
    .end local v8    # "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    .end local v14    # "r":J
    :cond_6
    move/from16 v0, v19

    if-ne v9, v0, :cond_a

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->queue:Ljava/util/Queue;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v20

    .line 524
    .local v20, "v":Ljava/lang/Object;
    if-nez v20, :cond_7

    const/16 v22, 0x1

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->checkTerminated(Ljava/lang/Object;Z)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result v22

    if-eqz v22, :cond_8

    .line 525
    const/16 v16, 0x1

    .line 606
    if-nez v16, :cond_0

    .line 608
    monitor-enter p0

    .line 609
    const/16 v22, 0x0

    :try_start_5
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->emitting:Z

    .line 610
    monitor-exit p0

    goto/16 :goto_0

    :catchall_2
    move-exception v22

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v22

    .line 524
    :cond_7
    const/16 v22, 0x0

    goto :goto_4

    .line 529
    :cond_8
    const-wide/16 v22, 0x1

    :try_start_6
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->request(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto/16 :goto_1

    .line 606
    .end local v4    # "arr$":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    .end local v6    # "empty":Z
    .end local v7    # "i$":I
    .end local v9    # "len":I
    .end local v10    # "len$":I
    .end local v11    # "ps":[Lrx/internal/operators/OperatorPublish$InnerProducer;, "[Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    .end local v12    # "maxRequested":J
    .end local v18    # "term":Ljava/lang/Object;
    .end local v19    # "unsubscribed":I
    .end local v20    # "v":Ljava/lang/Object;
    :catchall_3
    move-exception v22

    if-nez v16, :cond_9

    .line 608
    monitor-enter p0

    .line 609
    const/16 v23, 0x0

    :try_start_7
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->emitting:Z

    .line 610
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    :cond_9
    throw v22

    .line 536
    .restart local v4    # "arr$":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    .restart local v6    # "empty":Z
    .restart local v7    # "i$":I
    .restart local v9    # "len":I
    .restart local v10    # "len$":I
    .restart local v11    # "ps":[Lrx/internal/operators/OperatorPublish$InnerProducer;, "[Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    .restart local v12    # "maxRequested":J
    .restart local v18    # "term":Ljava/lang/Object;
    .restart local v19    # "unsubscribed":I
    :cond_a
    const/4 v5, 0x0

    .line 537
    .local v5, "d":I
    :goto_5
    int-to-long v0, v5

    move-wide/from16 v22, v0

    cmp-long v22, v22, v12

    if-gez v22, :cond_d

    .line 538
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->queue:Ljava/util/Queue;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v20

    .line 540
    .restart local v20    # "v":Ljava/lang/Object;
    if-nez v20, :cond_b

    const/4 v6, 0x1

    .line 542
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->checkTerminated(Ljava/lang/Object;Z)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-result v22

    if-eqz v22, :cond_c

    .line 543
    const/16 v16, 0x1

    .line 606
    if-nez v16, :cond_0

    .line 608
    monitor-enter p0

    .line 609
    const/16 v22, 0x0

    :try_start_9
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->emitting:Z

    .line 610
    monitor-exit p0

    goto/16 :goto_0

    :catchall_4
    move-exception v22

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v22

    .line 540
    :cond_b
    const/4 v6, 0x0

    goto :goto_6

    .line 547
    :cond_c
    if-eqz v6, :cond_10

    .line 576
    .end local v20    # "v":Ljava/lang/Object;
    :cond_d
    if-lez v5, :cond_e

    .line 577
    int-to-long v0, v5

    move-wide/from16 v22, v0

    :try_start_a
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->request(J)V

    .line 582
    :cond_e
    const-wide/16 v22, 0x0

    cmp-long v22, v12, v22

    if-eqz v22, :cond_f

    if-eqz v6, :cond_2

    .line 589
    .end local v4    # "arr$":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    .end local v5    # "d":I
    .end local v7    # "i$":I
    .end local v9    # "len":I
    .end local v10    # "len$":I
    .end local v11    # "ps":[Lrx/internal/operators/OperatorPublish$InnerProducer;, "[Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    .end local v12    # "maxRequested":J
    .end local v19    # "unsubscribed":I
    :cond_f
    monitor-enter p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 593
    :try_start_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->missed:Z

    move/from16 v22, v0

    if-nez v22, :cond_13

    .line 595
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->emitting:Z

    .line 597
    const/16 v16, 0x1

    .line 598
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 606
    if-nez v16, :cond_0

    .line 608
    monitor-enter p0

    .line 609
    const/16 v22, 0x0

    :try_start_c
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->emitting:Z

    .line 610
    monitor-exit p0

    goto/16 :goto_0

    :catchall_5
    move-exception v22

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v22

    .line 551
    .restart local v4    # "arr$":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    .restart local v5    # "d":I
    .restart local v7    # "i$":I
    .restart local v9    # "len":I
    .restart local v10    # "len$":I
    .restart local v11    # "ps":[Lrx/internal/operators/OperatorPublish$InnerProducer;, "[Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    .restart local v12    # "maxRequested":J
    .restart local v19    # "unsubscribed":I
    .restart local v20    # "v":Ljava/lang/Object;
    :cond_10
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 553
    .local v21, "value":Ljava/lang/Object;, "TT;"
    move-object v4, v11

    array-length v10, v4

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v10, :cond_12

    aget-object v8, v4, v7

    .line 558
    .restart local v8    # "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    invoke-virtual {v8}, Lrx/internal/operators/OperatorPublish$InnerProducer;->get()J
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-lez v22, :cond_11

    .line 560
    :try_start_e
    iget-object v0, v8, Lrx/internal/operators/OperatorPublish$InnerProducer;->child:Lrx/Subscriber;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 568
    const-wide/16 v22, 0x1

    :try_start_f
    move-wide/from16 v0, v22

    invoke-virtual {v8, v0, v1}, Lrx/internal/operators/OperatorPublish$InnerProducer;->produced(J)J

    .line 553
    :cond_11
    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 561
    :catch_0
    move-exception v17

    .line 563
    .local v17, "t":Ljava/lang/Throwable;
    invoke-virtual {v8}, Lrx/internal/operators/OperatorPublish$InnerProducer;->unsubscribe()V

    .line 564
    iget-object v0, v8, Lrx/internal/operators/OperatorPublish$InnerProducer;->child:Lrx/Subscriber;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_8

    .line 572
    .end local v8    # "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    .end local v17    # "t":Ljava/lang/Throwable;
    :cond_12
    add-int/lit8 v5, v5, 0x1

    .line 573
    goto/16 :goto_5

    .line 601
    .end local v4    # "arr$":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    .end local v5    # "d":I
    .end local v7    # "i$":I
    .end local v9    # "len":I
    .end local v10    # "len$":I
    .end local v11    # "ps":[Lrx/internal/operators/OperatorPublish$InnerProducer;, "[Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    .end local v12    # "maxRequested":J
    .end local v19    # "unsubscribed":I
    .end local v20    # "v":Ljava/lang/Object;
    .end local v21    # "value":Ljava/lang/Object;, "TT;"
    :cond_13
    const/16 v22, 0x0

    :try_start_10
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->missed:Z

    .line 602
    monitor-exit p0

    goto/16 :goto_1

    :catchall_6
    move-exception v22

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :try_start_11
    throw v22
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 610
    .end local v6    # "empty":Z
    .end local v18    # "term":Ljava/lang/Object;
    :catchall_7
    move-exception v22

    :try_start_12
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    throw v22
.end method

.method init()V
    .locals 1

    .prologue
    .line 232
    .local p0, "this":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorPublish$PublishSubscriber$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorPublish$PublishSubscriber$1;-><init>(Lrx/internal/operators/OperatorPublish$PublishSubscriber;)V

    invoke-static {v0}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->add(Lrx/Subscription;)V

    .line 241
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 276
    .local p0, "this":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 277
    iget-object v0, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    .line 280
    invoke-virtual {p0}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->dispatch()V

    .line 282
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 265
    .local p0, "this":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    .line 269
    invoke-virtual {p0}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->dispatch()V

    .line 271
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
    .line 253
    .local p0, "this":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->queue:Ljava/util/Queue;

    iget-object v1, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v0}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 260
    :goto_0
    return-void

    .line 258
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->dispatch()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 247
    .local p0, "this":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    sget v0, Lrx/internal/util/RxRingBuffer;->SIZE:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->request(J)V

    .line 248
    return-void
.end method

.method remove(Lrx/internal/operators/OperatorPublish$InnerProducer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorPublish$InnerProducer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    .local p1, "producer":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    const/4 v7, 0x0

    .line 325
    :cond_0
    iget-object v5, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/operators/OperatorPublish$InnerProducer;

    .line 327
    .local v0, "c":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    sget-object v5, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->EMPTY:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    if-eq v0, v5, :cond_1

    sget-object v5, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->TERMINATED:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    if-ne v0, v5, :cond_2

    .line 360
    :cond_1
    :goto_0
    return-void

    .line 332
    :cond_2
    const/4 v2, -0x1

    .line 333
    .local v2, "j":I
    array-length v3, v0

    .line 334
    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 335
    aget-object v5, v0, v1

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 336
    move v2, v1

    .line 341
    :cond_3
    if-ltz v2, :cond_1

    .line 348
    const/4 v5, 0x1

    if-ne v3, v5, :cond_5

    .line 349
    sget-object v4, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->EMPTY:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    .line 359
    .local v4, "u":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    :goto_2
    iget-object v5, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 334
    .end local v4    # "u":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 352
    :cond_5
    add-int/lit8 v5, v3, -0x1

    new-array v4, v5, [Lrx/internal/operators/OperatorPublish$InnerProducer;

    .line 354
    .restart local v4    # "u":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    invoke-static {v0, v7, v4, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 356
    add-int/lit8 v5, v2, 0x1

    sub-int v6, v3, v2

    add-int/lit8 v6, v6, -0x1

    invoke-static {v0, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method
