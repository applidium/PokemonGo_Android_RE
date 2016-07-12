.class public final Lrx/observables/AbstractOnSubscribe$SubscriptionState;
.super Ljava/lang/Object;
.source "AbstractOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/observables/AbstractOnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubscriptionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private calls:J

.field private hasCompleted:Z

.field private hasOnNext:Z

.field private final inUse:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final parent:Lrx/observables/AbstractOnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observables/AbstractOnSubscribe",
            "<TT;TS;>;"
        }
    .end annotation
.end field

.field private phase:I

.field private final requestCount:Ljava/util/concurrent/atomic/AtomicLong;

.field private final state:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private stopRequested:Z

.field private final subscriber:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private theException:Ljava/lang/Throwable;

.field private theValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/observables/AbstractOnSubscribe;Lrx/Subscriber;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/observables/AbstractOnSubscribe",
            "<TT;TS;>;",
            "Lrx/Subscriber",
            "<-TT;>;TS;)V"
        }
    .end annotation

    .prologue
    .line 409
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    .local p1, "parent":Lrx/observables/AbstractOnSubscribe;, "Lrx/observables/AbstractOnSubscribe<TT;TS;>;"
    .local p2, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p3, "state":Ljava/lang/Object;, "TS;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    iput-object p1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->parent:Lrx/observables/AbstractOnSubscribe;

    .line 411
    iput-object p2, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->subscriber:Lrx/Subscriber;

    .line 412
    iput-object p3, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->state:Ljava/lang/Object;

    .line 413
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->requestCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 414
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->inUse:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 415
    return-void
.end method

.method synthetic constructor <init>(Lrx/observables/AbstractOnSubscribe;Lrx/Subscriber;Ljava/lang/Object;Lrx/observables/AbstractOnSubscribe$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/observables/AbstractOnSubscribe;
    .param p2, "x1"    # Lrx/Subscriber;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Lrx/observables/AbstractOnSubscribe$1;

    .prologue
    .line 396
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    invoke-direct {p0, p1, p2, p3}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;-><init>(Lrx/observables/AbstractOnSubscribe;Lrx/Subscriber;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "x0"    # Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    .prologue
    .line 396
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->requestCount:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$500(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)Lrx/Subscriber;
    .locals 1
    .param p0, "x0"    # Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    .prologue
    .line 396
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->subscriber:Lrx/Subscriber;

    return-object v0
.end method

.method static synthetic access$600(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)Lrx/observables/AbstractOnSubscribe;
    .locals 1
    .param p0, "x0"    # Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    .prologue
    .line 396
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->parent:Lrx/observables/AbstractOnSubscribe;

    return-object v0
.end method

.method static synthetic access$708(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)J
    .locals 4
    .param p0, "x0"    # Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    .prologue
    .line 396
    iget-wide v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->calls:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->calls:J

    return-wide v0
.end method


# virtual methods
.method protected accept()Z
    .locals 8

    .prologue
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 529
    iget-boolean v5, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->hasOnNext:Z

    if-eqz v5, :cond_0

    .line 530
    iget-object v2, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->theValue:Ljava/lang/Object;

    .line 531
    .local v2, "value":Ljava/lang/Object;, "TT;"
    iput-object v6, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->theValue:Ljava/lang/Object;

    .line 532
    iput-boolean v4, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->hasOnNext:Z

    .line 535
    :try_start_0
    iget-object v5, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->subscriber:Lrx/Subscriber;

    invoke-virtual {v5, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    .end local v2    # "value":Ljava/lang/Object;, "TT;"
    :cond_0
    iget-boolean v5, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->hasCompleted:Z

    if-eqz v5, :cond_3

    .line 549
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->theException:Ljava/lang/Throwable;

    .line 550
    .local v0, "e":Ljava/lang/Throwable;
    iput-object v6, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->theException:Ljava/lang/Throwable;

    .line 552
    if-eqz v0, :cond_2

    .line 553
    iget-object v4, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->subscriber:Lrx/Subscriber;

    invoke-virtual {v4, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 559
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return v3

    .line 536
    .restart local v2    # "value":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v1

    .line 537
    .local v1, "t":Ljava/lang/Throwable;
    iput-boolean v3, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->hasCompleted:Z

    .line 538
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->theException:Ljava/lang/Throwable;

    .line 539
    .restart local v0    # "e":Ljava/lang/Throwable;
    iput-object v6, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->theException:Ljava/lang/Throwable;

    .line 540
    if-nez v0, :cond_1

    .line 541
    iget-object v4, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->subscriber:Lrx/Subscriber;

    invoke-virtual {v4, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 543
    :cond_1
    iget-object v5, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->subscriber:Lrx/Subscriber;

    new-instance v6, Lrx/exceptions/CompositeException;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Throwable;

    aput-object v1, v7, v4

    aput-object v0, v7, v3

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v6, v4}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5, v6}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 555
    .end local v1    # "t":Ljava/lang/Throwable;
    .end local v2    # "value":Ljava/lang/Object;, "TT;"
    :cond_2
    iget-object v4, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->subscriber:Lrx/Subscriber;

    invoke-virtual {v4}, Lrx/Subscriber;->onCompleted()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    move v3, v4

    .line 559
    goto :goto_0
.end method

.method public advancePhase()V
    .locals 1

    .prologue
    .line 445
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->advancePhaseBy(I)V

    .line 446
    return-void
.end method

.method public advancePhaseBy(I)V
    .locals 1
    .param p1, "amount"    # I

    .prologue
    .line 454
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    iget v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->phase:I

    add-int/2addr v0, p1

    iput v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->phase:I

    .line 455
    return-void
.end method

.method public calls()J
    .locals 2

    .prologue
    .line 462
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    iget-wide v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->calls:J

    return-wide v0
.end method

.method protected free()V
    .locals 3

    .prologue
    .line 599
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    iget-object v1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->inUse:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 600
    .local v0, "i":I
    if-gtz v0, :cond_1

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 603
    :cond_1
    iget-object v1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->inUse:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_0

    .line 604
    iget-object v1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->parent:Lrx/observables/AbstractOnSubscribe;

    iget-object v2, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->state:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lrx/observables/AbstractOnSubscribe;->onTerminated(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 3

    .prologue
    .line 510
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    iget-boolean v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->hasCompleted:Z

    if-eqz v0, :cond_0

    .line 511
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already terminated"

    iget-object v2, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->theException:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 513
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->hasCompleted:Z

    .line 514
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 492
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    if-nez p1, :cond_0

    .line 493
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "e != null required"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 495
    :cond_0
    iget-boolean v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->hasCompleted:Z

    if-eqz v0, :cond_1

    .line 496
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already terminated"

    iget-object v2, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->theException:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 498
    :cond_1
    iput-object p1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->theException:Ljava/lang/Throwable;

    .line 499
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->hasCompleted:Z

    .line 500
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 473
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->hasOnNext:Z

    if-eqz v0, :cond_0

    .line 474
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onNext not consumed yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_0
    iget-boolean v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->hasCompleted:Z

    if-eqz v0, :cond_1

    .line 477
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already terminated"

    iget-object v2, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->theException:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 479
    :cond_1
    iput-object p1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->theValue:Ljava/lang/Object;

    .line 480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->hasOnNext:Z

    .line 481
    return-void
.end method

.method public phase()I
    .locals 1

    .prologue
    .line 429
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    iget v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->phase:I

    return v0
.end method

.method public phase(I)V
    .locals 0
    .param p1, "newPhase"    # I

    .prologue
    .line 438
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    iput p1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->phase:I

    .line 439
    return-void
.end method

.method public state()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .prologue
    .line 422
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->state:Ljava/lang/Object;

    return-object v0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 520
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->stopRequested:Z

    .line 521
    return-void
.end method

.method protected stopRequested()Z
    .locals 1

    .prologue
    .line 573
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    iget-boolean v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->stopRequested:Z

    return v0
.end method

.method protected terminate()V
    .locals 3

    .prologue
    .line 614
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    :cond_0
    iget-object v1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->inUse:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 615
    .local v0, "i":I
    if-gtz v0, :cond_1

    .line 623
    :goto_0
    return-void

    .line 618
    :cond_1
    iget-object v1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->inUse:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 619
    iget-object v1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->parent:Lrx/observables/AbstractOnSubscribe;

    iget-object v2, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->state:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lrx/observables/AbstractOnSubscribe;->onTerminated(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected use()Z
    .locals 4

    .prologue
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    const/4 v1, 0x1

    .line 585
    iget-object v2, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->inUse:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 586
    .local v0, "i":I
    if-nez v0, :cond_1

    .line 587
    const/4 v1, 0x0

    .line 590
    :cond_0
    return v1

    .line 589
    :cond_1
    if-ne v0, v1, :cond_2

    iget-object v2, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->inUse:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 592
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This is not reentrant nor threadsafe!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected verify()Z
    .locals 1

    .prologue
    .line 568
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    iget-boolean v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->hasOnNext:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->hasCompleted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->stopRequested:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
