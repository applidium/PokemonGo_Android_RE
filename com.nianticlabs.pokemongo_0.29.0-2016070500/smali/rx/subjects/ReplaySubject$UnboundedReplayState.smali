.class final Lrx/subjects/ReplaySubject$UnboundedReplayState;
.super Ljava/lang/Object;
.source "ReplaySubject.java"

# interfaces
.implements Lrx/subjects/ReplaySubject$ReplayState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/ReplaySubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnboundedReplayState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/subjects/ReplaySubject$ReplayState",
        "<TT;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field static final INDEX_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<",
            "Lrx/subjects/ReplaySubject$UnboundedReplayState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile index:I

.field private final list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile terminated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 451
    const-class v0, Lrx/subjects/ReplaySubject$UnboundedReplayState;

    const-string v1, "index"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->INDEX_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 453
    .local p0, "this":Lrx/subjects/ReplaySubject$UnboundedReplayState;, "Lrx/subjects/ReplaySubject$UnboundedReplayState<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->nl:Lrx/internal/operators/NotificationLite;

    .line 454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->list:Ljava/util/ArrayList;

    .line 455
    return-void
.end method


# virtual methods
.method public accept(Lrx/Observer;I)V
    .locals 2
    .param p2, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer",
            "<-TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 466
    .local p0, "this":Lrx/subjects/ReplaySubject$UnboundedReplayState;, "Lrx/subjects/ReplaySubject$UnboundedReplayState<TT;>;"
    .local p1, "o":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->nl:Lrx/internal/operators/NotificationLite;

    iget-object v1, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    .line 467
    return-void
.end method

.method public complete()V
    .locals 2

    .prologue
    .line 471
    .local p0, "this":Lrx/subjects/ReplaySubject$UnboundedReplayState;, "Lrx/subjects/ReplaySubject$UnboundedReplayState<TT;>;"
    iget-boolean v0, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->terminated:Z

    if-nez v0, :cond_0

    .line 472
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->terminated:Z

    .line 473
    iget-object v0, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    sget-object v0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->INDEX_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndIncrement(Ljava/lang/Object;)I

    .line 476
    :cond_0
    return-void
.end method

.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 479
    .local p0, "this":Lrx/subjects/ReplaySubject$UnboundedReplayState;, "Lrx/subjects/ReplaySubject$UnboundedReplayState<TT;>;"
    iget-boolean v0, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->terminated:Z

    if-nez v0, :cond_0

    .line 480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->terminated:Z

    .line 481
    iget-object v0, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    sget-object v0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->INDEX_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndIncrement(Ljava/lang/Object;)I

    .line 484
    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 540
    .local p0, "this":Lrx/subjects/ReplaySubject$UnboundedReplayState;, "Lrx/subjects/ReplaySubject$UnboundedReplayState<TT;>;"
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$UnboundedReplayState;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public latest()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/subjects/ReplaySubject$UnboundedReplayState;, "Lrx/subjects/ReplaySubject$UnboundedReplayState<TT;>;"
    const/4 v2, 0x0

    .line 564
    iget v0, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->index:I

    .line 565
    .local v0, "idx":I
    if-lez v0, :cond_1

    .line 566
    iget-object v3, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->list:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 567
    .local v1, "o":Ljava/lang/Object;
    iget-object v3, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3, v1}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3, v1}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 568
    :cond_0
    const/4 v3, 0x1

    if-le v0, v3, :cond_1

    .line 569
    iget-object v2, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->nl:Lrx/internal/operators/NotificationLite;

    iget-object v3, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->list:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 575
    .end local v1    # "o":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object v2

    .line 573
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_2
    iget-object v2, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, v1}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public next(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 459
    .local p0, "this":Lrx/subjects/ReplaySubject$UnboundedReplayState;, "Lrx/subjects/ReplaySubject$UnboundedReplayState<TT;>;"
    .local p1, "n":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->terminated:Z

    if-nez v0, :cond_0

    .line 460
    iget-object v0, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    sget-object v0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->INDEX_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndIncrement(Ljava/lang/Object;)I

    .line 463
    :cond_0
    return-void
.end method

.method public replayObserver(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/subjects/ReplaySubject$UnboundedReplayState;, "Lrx/subjects/ReplaySubject$UnboundedReplayState<TT;>;"
    .local p1, "observer":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<-TT;>;"
    const/4 v2, 0x0

    .line 494
    monitor-enter p1

    .line 495
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->first:Z

    .line 496
    iget-boolean v3, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    if-eqz v3, :cond_0

    .line 497
    monitor-exit p1

    .line 505
    :goto_0
    return v2

    .line 499
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    invoke-virtual {p1}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->index()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 502
    .local v1, "lastEmittedLink":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    .line 503
    invoke-virtual {p0, v1, p1}, Lrx/subjects/ReplaySubject$UnboundedReplayState;->replayObserverFromIndex(Ljava/lang/Integer;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 504
    .local v0, "l":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->index(Ljava/lang/Object;)V

    .line 505
    const/4 v2, 0x1

    goto :goto_0

    .line 499
    .end local v0    # "l":I
    .end local v1    # "lastEmittedLink":Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 507
    .restart local v1    # "lastEmittedLink":Ljava/lang/Integer;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to find lastEmittedLink for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public replayObserverFromIndex(Ljava/lang/Integer;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Ljava/lang/Integer;
    .locals 2
    .param p1, "idx"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<-TT;>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .line 513
    .local p0, "this":Lrx/subjects/ReplaySubject$UnboundedReplayState;, "Lrx/subjects/ReplaySubject$UnboundedReplayState<TT;>;"
    .local p2, "observer":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<-TT;>;"
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 514
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->index:I

    if-ge v0, v1, :cond_0

    .line 515
    invoke-virtual {p0, p2, v0}, Lrx/subjects/ReplaySubject$UnboundedReplayState;->accept(Lrx/Observer;I)V

    .line 516
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 519
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic replayObserverFromIndex(Ljava/lang/Object;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    .prologue
    .line 442
    .local p0, "this":Lrx/subjects/ReplaySubject$UnboundedReplayState;, "Lrx/subjects/ReplaySubject$UnboundedReplayState<TT;>;"
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lrx/subjects/ReplaySubject$UnboundedReplayState;->replayObserverFromIndex(Ljava/lang/Integer;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public replayObserverFromIndexTest(Ljava/lang/Integer;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;J)Ljava/lang/Integer;
    .locals 1
    .param p1, "idx"    # Ljava/lang/Integer;
    .param p3, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<-TT;>;J)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .line 524
    .local p0, "this":Lrx/subjects/ReplaySubject$UnboundedReplayState;, "Lrx/subjects/ReplaySubject$UnboundedReplayState<TT;>;"
    .local p2, "observer":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<-TT;>;"
    invoke-virtual {p0, p1, p2}, Lrx/subjects/ReplaySubject$UnboundedReplayState;->replayObserverFromIndex(Ljava/lang/Integer;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replayObserverFromIndexTest(Ljava/lang/Object;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;J)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    .param p3, "x2"    # J

    .prologue
    .line 442
    .local p0, "this":Lrx/subjects/ReplaySubject$UnboundedReplayState;, "Lrx/subjects/ReplaySubject$UnboundedReplayState<TT;>;"
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lrx/subjects/ReplaySubject$UnboundedReplayState;->replayObserverFromIndexTest(Ljava/lang/Integer;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;J)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 4

    .prologue
    .line 529
    .local p0, "this":Lrx/subjects/ReplaySubject$UnboundedReplayState;, "Lrx/subjects/ReplaySubject$UnboundedReplayState<TT;>;"
    iget v0, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->index:I

    .line 530
    .local v0, "idx":I
    if-lez v0, :cond_1

    .line 531
    iget-object v2, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->list:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 532
    .local v1, "o":Ljava/lang/Object;
    iget-object v2, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, v1}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, v1}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 533
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 536
    .end local v0    # "idx":I
    .end local v1    # "o":Ljava/lang/Object;
    :cond_1
    return v0
.end method

.method public terminated()Z
    .locals 1

    .prologue
    .line 488
    .local p0, "this":Lrx/subjects/ReplaySubject$UnboundedReplayState;, "Lrx/subjects/ReplaySubject$UnboundedReplayState<TT;>;"
    iget-boolean v0, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->terminated:Z

    return v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/subjects/ReplaySubject$UnboundedReplayState;, "Lrx/subjects/ReplaySubject$UnboundedReplayState<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x0

    .line 545
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$UnboundedReplayState;->size()I

    move-result v1

    .line 546
    .local v1, "s":I
    if-lez v1, :cond_3

    .line 547
    array-length v2, p1

    if-le v1, v2, :cond_0

    .line 548
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object p1, v2

    check-cast p1, [Ljava/lang/Object;

    .line 550
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 551
    iget-object v2, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v0

    .line 550
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 553
    :cond_1
    array-length v2, p1

    if-le v2, v1, :cond_2

    .line 554
    aput-object v3, p1, v1

    .line 560
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-object p1

    .line 557
    :cond_3
    array-length v2, p1

    if-lez v2, :cond_2

    .line 558
    const/4 v2, 0x0

    aput-object v3, p1, v2

    goto :goto_1
.end method
