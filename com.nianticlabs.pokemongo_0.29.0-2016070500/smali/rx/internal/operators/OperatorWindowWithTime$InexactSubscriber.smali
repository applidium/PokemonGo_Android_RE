.class final Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;
.super Lrx/Subscriber;
.source "OperatorWindowWithTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorWindowWithTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InexactSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final chunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field done:Z

.field final guard:Ljava/lang/Object;

.field final synthetic this$0:Lrx/internal/operators/OperatorWindowWithTime;

.field final worker:Lrx/Scheduler$Worker;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorWindowWithTime;Lrx/Subscriber;Lrx/Scheduler$Worker;)V
    .locals 1
    .param p3, "worker"    # Lrx/Scheduler$Worker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lrx/Observable",
            "<TT;>;>;",
            "Lrx/Scheduler$Worker;",
            ")V"
        }
    .end annotation

    .prologue
    .line 370
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.InexactSubscriber;"
    .local p2, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/Observable<TT;>;>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithTime;

    .line 371
    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 372
    iput-object p2, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->child:Lrx/Subscriber;

    .line 373
    iput-object p3, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->worker:Lrx/Scheduler$Worker;

    .line 374
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->guard:Ljava/lang/Object;

    .line 375
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    .line 376
    return-void
.end method


# virtual methods
.method createCountedSerializedSubject()Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 495
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.InexactSubscriber;"
    invoke-static {}, Lrx/internal/operators/BufferUntilSubscriber;->create()Lrx/internal/operators/BufferUntilSubscriber;

    move-result-object v0

    .line 496
    .local v0, "bus":Lrx/internal/operators/BufferUntilSubscriber;, "Lrx/internal/operators/BufferUntilSubscriber<TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;

    invoke-direct {v1, v0, v0}, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;-><init>(Lrx/Observer;Lrx/Observable;)V

    return-object v1
.end method

.method public onCompleted()V
    .locals 5

    .prologue
    .line 427
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.InexactSubscriber;"
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 428
    :try_start_0
    iget-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->done:Z

    if-eqz v3, :cond_0

    .line 429
    monitor-exit v4

    .line 439
    :goto_0
    return-void

    .line 431
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->done:Z

    .line 432
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 433
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;>;"
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 434
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;

    .line 436
    .local v0, "cs":Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;, "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;"
    iget-object v3, v0, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;->consumer:Lrx/Observer;

    invoke-interface {v3}, Lrx/Observer;->onCompleted()V

    goto :goto_1

    .line 434
    .end local v0    # "cs":Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;, "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 438
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;>;"
    :cond_1
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v3}, Lrx/Subscriber;->onCompleted()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 410
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.InexactSubscriber;"
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 411
    :try_start_0
    iget-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->done:Z

    if-eqz v3, :cond_0

    .line 412
    monitor-exit v4

    .line 422
    :goto_0
    return-void

    .line 414
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->done:Z

    .line 415
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 416
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;>;"
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 417
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;

    .line 419
    .local v0, "cs":Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;, "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;"
    iget-object v3, v0, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;->consumer:Lrx/Observer;

    invoke-interface {v3, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 417
    .end local v0    # "cs":Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;, "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 421
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;>;"
    :cond_1
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v3, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 386
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.InexactSubscriber;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v5, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v5

    .line 387
    :try_start_0
    iget-boolean v4, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->done:Z

    if-eqz v4, :cond_1

    .line 388
    monitor-exit v5

    .line 405
    :cond_0
    return-void

    .line 390
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 391
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;>;"
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 392
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 393
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;

    .line 394
    .local v0, "cs":Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;, "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;"
    iget v4, v0, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;->count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;->count:I

    iget-object v6, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithTime;

    iget v6, v6, Lrx/internal/operators/OperatorWindowWithTime;->size:I

    if-ne v4, v6, :cond_2

    .line 395
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 398
    .end local v0    # "cs":Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;, "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;"
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;>;"
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;>;"
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;>;"
    :cond_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;

    .line 400
    .restart local v0    # "cs":Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;, "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;"
    iget-object v4, v0, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;->consumer:Lrx/Observer;

    invoke-interface {v4, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 401
    iget v4, v0, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;->count:I

    iget-object v5, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithTime;

    iget v5, v5, Lrx/internal/operators/OperatorWindowWithTime;->size:I

    if-ne v4, v5, :cond_4

    .line 402
    iget-object v4, v0, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;->consumer:Lrx/Observer;

    invoke-interface {v4}, Lrx/Observer;->onCompleted()V

    goto :goto_1
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 380
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.InexactSubscriber;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->request(J)V

    .line 381
    return-void
.end method

.method scheduleChunk()V
    .locals 7

    .prologue
    .line 441
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.InexactSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->worker:Lrx/Scheduler$Worker;

    new-instance v1, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber$1;

    invoke-direct {v1, p0}, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber$1;-><init>(Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;)V

    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithTime;

    iget-wide v2, v2, Lrx/internal/operators/OperatorWindowWithTime;->timeshift:J

    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithTime;

    iget-wide v4, v4, Lrx/internal/operators/OperatorWindowWithTime;->timeshift:J

    iget-object v6, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithTime;

    iget-object v6, v6, Lrx/internal/operators/OperatorWindowWithTime;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lrx/Scheduler$Worker;->schedulePeriodically(Lrx/functions/Action0;JJLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    .line 449
    return-void
.end method

.method startNewChunk()V
    .locals 7

    .prologue
    .line 451
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.InexactSubscriber;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->createCountedSerializedSubject()Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;

    move-result-object v0

    .line 452
    .local v0, "chunk":Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;, "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;"
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 453
    :try_start_0
    iget-boolean v2, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->done:Z

    if-eqz v2, :cond_0

    .line 454
    monitor-exit v3

    .line 473
    :goto_0
    return-void

    .line 456
    :cond_0
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    :try_start_1
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->child:Lrx/Subscriber;

    iget-object v3, v0, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;->producer:Lrx/Observable;

    invoke-virtual {v2, v3}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 465
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->worker:Lrx/Scheduler$Worker;

    new-instance v3, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber$2;

    invoke-direct {v3, p0, v0}, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber$2;-><init>(Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;)V

    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithTime;

    iget-wide v4, v4, Lrx/internal/operators/OperatorWindowWithTime;->timespan:J

    iget-object v6, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithTime;

    iget-object v6, v6, Lrx/internal/operators/OperatorWindowWithTime;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v6}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    goto :goto_0

    .line 457
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 460
    :catch_0
    move-exception v1

    .line 461
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method terminateChunk(Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 475
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.InexactSubscriber;"
    .local p1, "chunk":Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;, "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;"
    const/4 v2, 0x0

    .line 476
    .local v2, "terminate":Z
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 477
    :try_start_0
    iget-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->done:Z

    if-eqz v3, :cond_1

    .line 478
    monitor-exit v4

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 480
    :cond_1
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 481
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 482
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;

    .line 483
    .local v0, "cs":Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;, "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;"
    if-ne v0, p1, :cond_2

    .line 484
    const/4 v2, 0x1

    .line 485
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 489
    .end local v0    # "cs":Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;, "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;"
    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    if-eqz v2, :cond_0

    .line 491
    iget-object v3, p1, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;->consumer:Lrx/Observer;

    invoke-interface {v3}, Lrx/Observer;->onCompleted()V

    goto :goto_0

    .line 489
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
