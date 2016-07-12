.class final Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;
.super Ljava/lang/Object;
.source "AbstractOnSubscribe.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/observables/AbstractOnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubscriptionProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Producer;"
    }
.end annotation


# instance fields
.field final state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observables/AbstractOnSubscribe$SubscriptionState",
            "<TT;TS;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/observables/AbstractOnSubscribe$SubscriptionState",
            "<TT;TS;>;)V"
        }
    .end annotation

    .prologue
    .line 331
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;, "Lrx/observables/AbstractOnSubscribe$SubscriptionProducer<TT;TS;>;"
    .local p1, "state":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput-object p1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    .line 333
    return-void
.end method

.method synthetic constructor <init>(Lrx/observables/AbstractOnSubscribe$SubscriptionState;Lrx/observables/AbstractOnSubscribe$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/observables/AbstractOnSubscribe$SubscriptionState;
    .param p2, "x1"    # Lrx/observables/AbstractOnSubscribe$1;

    .prologue
    .line 329
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;, "Lrx/observables/AbstractOnSubscribe$SubscriptionProducer<TT;TS;>;"
    invoke-direct {p0, p1}, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;-><init>(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)V

    return-void
.end method


# virtual methods
.method protected doNext()Z
    .locals 8

    .prologue
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;, "Lrx/observables/AbstractOnSubscribe$SubscriptionProducer<TT;TS;>;"
    const/4 v2, 0x0

    .line 362
    iget-object v3, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v3}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->use()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 364
    :try_start_0
    iget-object v3, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v3}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->phase()I

    move-result v0

    .line 365
    .local v0, "p":I
    iget-object v3, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    # getter for: Lrx/observables/AbstractOnSubscribe$SubscriptionState;->parent:Lrx/observables/AbstractOnSubscribe;
    invoke-static {v3}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->access$600(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)Lrx/observables/AbstractOnSubscribe;

    move-result-object v3

    iget-object v4, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v3, v4}, Lrx/observables/AbstractOnSubscribe;->next(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)V

    .line 366
    iget-object v3, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v3}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->verify()Z

    move-result v3

    if-nez v3, :cond_1

    .line 367
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No event produced or stop called @ Phase: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v5}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->phase()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Calls: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v5}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->calls()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    .end local v0    # "p":I
    :catch_0
    move-exception v1

    .line 375
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_1
    iget-object v3, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v3}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->terminate()V

    .line 376
    iget-object v3, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    # getter for: Lrx/observables/AbstractOnSubscribe$SubscriptionState;->subscriber:Lrx/Subscriber;
    invoke-static {v3}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->access$500(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)Lrx/Subscriber;

    move-result-object v3

    invoke-virtual {v3, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    iget-object v3, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v3}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->free()V

    .line 383
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return v2

    .line 369
    .restart local v0    # "p":I
    :cond_1
    :try_start_2
    iget-object v3, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v3}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->accept()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v3}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->stopRequested()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 370
    :cond_2
    iget-object v3, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v3}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->terminate()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 379
    iget-object v3, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v3}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->free()V

    goto :goto_0

    .line 373
    :cond_3
    :try_start_3
    iget-object v3, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    # operator++ for: Lrx/observables/AbstractOnSubscribe$SubscriptionState;->calls:J
    invoke-static {v3}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->access$708(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 379
    iget-object v2, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v2}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->free()V

    .line 381
    const/4 v2, 0x1

    goto :goto_0

    .line 379
    .end local v0    # "p":I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v3}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->free()V

    throw v2
.end method

.method public request(J)V
    .locals 5
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;, "Lrx/observables/AbstractOnSubscribe$SubscriptionProducer<TT;TS;>;"
    const-wide/16 v2, 0x0

    .line 336
    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    # getter for: Lrx/observables/AbstractOnSubscribe$SubscriptionState;->requestCount:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {v0}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->access$400(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 337
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 339
    :cond_0
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    # getter for: Lrx/observables/AbstractOnSubscribe$SubscriptionState;->subscriber:Lrx/Subscriber;
    invoke-static {v0}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->access$500(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)Lrx/Subscriber;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 340
    invoke-virtual {p0}, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->doNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    :cond_1
    :goto_0
    return-void

    .line 345
    :cond_2
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    # getter for: Lrx/observables/AbstractOnSubscribe$SubscriptionState;->subscriber:Lrx/Subscriber;
    invoke-static {v0}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->access$500(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)Lrx/Subscriber;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 347
    :cond_3
    invoke-virtual {p0}, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->doNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    # getter for: Lrx/observables/AbstractOnSubscribe$SubscriptionState;->requestCount:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {v0}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->access$400(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    # getter for: Lrx/observables/AbstractOnSubscribe$SubscriptionState;->subscriber:Lrx/Subscriber;
    invoke-static {v0}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->access$500(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)Lrx/Subscriber;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0
.end method
