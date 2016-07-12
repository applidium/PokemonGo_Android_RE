.class public Lrx/observers/TestSubscriber;
.super Lrx/Subscriber;
.source "TestSubscriber.java"


# annotations
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
.field private static final INERT:Lrx/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final initialRequest:J

.field private volatile lastSeenThread:Ljava/lang/Thread;

.field private final latch:Ljava/util/concurrent/CountDownLatch;

.field private final testObserver:Lrx/observers/TestObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observers/TestObserver",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lrx/observers/TestSubscriber$1;

    invoke-direct {v0}, Lrx/observers/TestSubscriber$1;-><init>()V

    sput-object v0, Lrx/observers/TestSubscriber;->INERT:Lrx/Observer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 95
    .local p0, "this":Lrx/observers/TestSubscriber;, "Lrx/observers/TestSubscriber<TT;>;"
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lrx/observers/TestSubscriber;-><init>(J)V

    .line 96
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "initialRequest"    # J
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lrx/observers/TestSubscriber;, "Lrx/observers/TestSubscriber<TT;>;"
    sget-object v0, Lrx/observers/TestSubscriber;->INERT:Lrx/Observer;

    invoke-direct {p0, v0, p1, p2}, Lrx/observers/TestSubscriber;-><init>(Lrx/Observer;J)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lrx/Observer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lrx/observers/TestSubscriber;, "Lrx/observers/TestSubscriber<TT;>;"
    .local p1, "delegate":Lrx/Observer;, "Lrx/Observer<TT;>;"
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lrx/observers/TestSubscriber;-><init>(Lrx/Observer;J)V

    .line 92
    return-void
.end method

.method public constructor <init>(Lrx/Observer;J)V
    .locals 2
    .param p2, "initialRequest"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer",
            "<TT;>;J)V"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lrx/observers/TestSubscriber;, "Lrx/observers/TestSubscriber<TT;>;"
    .local p1, "delegate":Lrx/Observer;, "Lrx/Observer<TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lrx/observers/TestSubscriber;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 79
    if-nez p1, :cond_0

    .line 80
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 82
    :cond_0
    new-instance v0, Lrx/observers/TestObserver;

    invoke-direct {v0, p1}, Lrx/observers/TestObserver;-><init>(Lrx/Observer;)V

    iput-object v0, p0, Lrx/observers/TestSubscriber;->testObserver:Lrx/observers/TestObserver;

    .line 83
    iput-wide p2, p0, Lrx/observers/TestSubscriber;->initialRequest:J

    .line 84
    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lrx/observers/TestSubscriber;, "Lrx/observers/TestSubscriber<TT;>;"
    .local p1, "delegate":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lrx/observers/TestSubscriber;-><init>(Lrx/Observer;J)V

    .line 88
    return-void
.end method

.method public static create()Lrx/observers/TestSubscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/observers/TestSubscriber",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 100
    new-instance v0, Lrx/observers/TestSubscriber;

    invoke-direct {v0}, Lrx/observers/TestSubscriber;-><init>()V

    return-object v0
.end method

.method public static create(J)Lrx/observers/TestSubscriber;
    .locals 2
    .param p0, "initialRequest"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J)",
            "Lrx/observers/TestSubscriber",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 105
    new-instance v0, Lrx/observers/TestSubscriber;

    invoke-direct {v0, p0, p1}, Lrx/observers/TestSubscriber;-><init>(J)V

    return-object v0
.end method

.method public static create(Lrx/Observer;)Lrx/observers/TestSubscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observer",
            "<TT;>;)",
            "Lrx/observers/TestSubscriber",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 120
    .local p0, "delegate":Lrx/Observer;, "Lrx/Observer<TT;>;"
    new-instance v0, Lrx/observers/TestSubscriber;

    invoke-direct {v0, p0}, Lrx/observers/TestSubscriber;-><init>(Lrx/Observer;)V

    return-object v0
.end method

.method public static create(Lrx/Observer;J)Lrx/observers/TestSubscriber;
    .locals 1
    .param p1, "initialRequest"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observer",
            "<TT;>;J)",
            "Lrx/observers/TestSubscriber",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 110
    .local p0, "delegate":Lrx/Observer;, "Lrx/Observer<TT;>;"
    new-instance v0, Lrx/observers/TestSubscriber;

    invoke-direct {v0, p0, p1, p2}, Lrx/observers/TestSubscriber;-><init>(Lrx/Observer;J)V

    return-object v0
.end method

.method public static create(Lrx/Subscriber;)Lrx/observers/TestSubscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Subscriber",
            "<TT;>;)",
            "Lrx/observers/TestSubscriber",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 115
    .local p0, "delegate":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    new-instance v0, Lrx/observers/TestSubscriber;

    invoke-direct {v0, p0}, Lrx/observers/TestSubscriber;-><init>(Lrx/Subscriber;)V

    return-object v0
.end method


# virtual methods
.method public assertCompleted()V
    .locals 4
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 345
    .local p0, "this":Lrx/observers/TestSubscriber;, "Lrx/observers/TestSubscriber<TT;>;"
    iget-object v1, p0, Lrx/observers/TestSubscriber;->testObserver:Lrx/observers/TestObserver;

    invoke-virtual {v1}, Lrx/observers/TestObserver;->getOnCompletedEvents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 346
    .local v0, "s":I
    if-nez v0, :cond_0

    .line 347
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Not completed!"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 349
    :cond_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 350
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Completed multiple times: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 352
    :cond_1
    return-void
.end method

.method public assertError(Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .local p0, "this":Lrx/observers/TestSubscriber;, "Lrx/observers/TestSubscriber<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    const/4 v4, 0x0

    .line 381
    iget-object v2, p0, Lrx/observers/TestSubscriber;->testObserver:Lrx/observers/TestObserver;

    invoke-virtual {v2}, Lrx/observers/TestObserver;->getOnErrorEvents()Ljava/util/List;

    move-result-object v1

    .line 382
    .local v1, "err":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 383
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "No errors"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 385
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 386
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multiple errors: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 387
    .local v0, "ae":Ljava/lang/AssertionError;
    new-instance v2, Lrx/exceptions/CompositeException;

    invoke-direct {v2, v1}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 388
    throw v0

    .line 390
    .end local v0    # "ae":Ljava/lang/AssertionError;
    :cond_1
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 391
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exceptions differ; expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 392
    .restart local v0    # "ae":Ljava/lang/AssertionError;
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {v0, v2}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 393
    throw v0

    .line 395
    .end local v0    # "ae":Ljava/lang/AssertionError;
    :cond_2
    return-void
.end method

.method public assertError(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .local p0, "this":Lrx/observers/TestSubscriber;, "Lrx/observers/TestSubscriber<TT;>;"
    const/4 v4, 0x0

    .line 407
    iget-object v2, p0, Lrx/observers/TestSubscriber;->testObserver:Lrx/observers/TestObserver;

    invoke-virtual {v2}, Lrx/observers/TestObserver;->getOnErrorEvents()Ljava/util/List;

    move-result-object v1

    .line 408
    .local v1, "err":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 409
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "No errors"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 411
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 412
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multiple errors: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 413
    .local v0, "ae":Ljava/lang/AssertionError;
    new-instance v2, Lrx/exceptions/CompositeException;

    invoke-direct {v2, v1}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 414
    throw v0

    .line 416
    .end local v0    # "ae":Ljava/lang/AssertionError;
    :cond_1
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 417
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exceptions differ; expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 418
    .restart local v0    # "ae":Ljava/lang/AssertionError;
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {v0, v2}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 419
    throw v0

    .line 421
    .end local v0    # "ae":Ljava/lang/AssertionError;
    :cond_2
    return-void
.end method

.method public assertNoErrors()V
    .locals 4

    .prologue
    .line 261
    .local p0, "this":Lrx/observers/TestSubscriber;, "Lrx/observers/TestSubscriber<TT;>;"
    invoke-virtual {p0}, Lrx/observers/TestSubscriber;->getOnErrorEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 263
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected onError events: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lrx/observers/TestSubscriber;->getOnErrorEvents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lrx/observers/TestSubscriber;->getOnErrorEvents()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 266
    :cond_0
    return-void
.end method

.method public assertNoTerminalEvent()V
    .locals 6
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 431
    .local p0, "this":Lrx/observers/TestSubscriber;, "Lrx/observers/TestSubscriber<TT;>;"
    iget-object v3, p0, Lrx/observers/TestSubscriber;->testObserver:Lrx/observers/TestObserver;

    invoke-virtual {v3}, Lrx/observers/TestObserver;->getOnErrorEvents()Ljava/util/List;

    move-result-object v1

    .line 432
    .local v1, "err":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    iget-object v3, p0, Lrx/observers/TestSubscriber;->testObserver:Lrx/observers/TestObserver;

    invoke-virtual {v3}, Lrx/observers/TestObserver;->getOnCompletedEvents()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 433
    .local v2, "s":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    if-lez v2, :cond_3

    .line 434
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 435
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " errors and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " completion events instead of none"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 437
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 438
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " errors and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " completion events instead of none"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 439
    .local v0, "ae":Ljava/lang/AssertionError;
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v0, v3}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 440
    throw v0

    .line 442
    .end local v0    # "ae":Ljava/lang/AssertionError;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " errors and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " completion events instead of none"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 443
    .restart local v0    # "ae":Ljava/lang/AssertionError;
    new-instance v3, Lrx/exceptions/CompositeException;

    invoke-direct {v3, v1}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v3}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 444
    throw v0

    .line 447
    .end local v0    # "ae":Ljava/lang/AssertionError;
    :cond_3
    return-void
.end method

.method public assertNoValues()V
    .locals 4
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 457
    .local p0, "this":Lrx/observers/TestSubscriber;, "Lrx/observers/TestSubscriber<TT;>;"
    iget-object v1, p0, Lrx/observers/TestSubscriber;->testObserver:Lrx/observers/TestObserver;

    invoke-virtual {v1}, Lrx/observers/TestObserver;->getOnNextEvents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 458
    .local v0, "s":I
    if-lez v0, :cond_0

    .line 459
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No onNext events expected yet some received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 461
    :cond_0
    return-void
.end method

.method public assertNotCompleted()V
    .locals 4
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .local p0, "this":Lrx/observers/TestSubscriber;, "Lrx/observers/TestSubscriber<TT;>;"
    const/4 v2, 0x1

    .line 362
    iget-object v1, p0, Lrx/observers/TestSubscriber;->testObserver:Lrx/observers/TestObserver;

    invoke-virtual {v1}, Lrx/observers/TestObserver;->getOnCompletedEvents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 363
    .local v0, "s":I
    if-ne v0, v2, :cond_0

    .line 364
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Completed!"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 366
    :cond_0
    if-le v0, v2, :cond_1

    .line 367
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Completed multiple times: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 369
    :cond_1
    return-void
.end method

.method public assertReceivedOnNext(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, "this":Lrx/observers/TestSubscriber;, "Lrx/observers/TestSubscriber<TT;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lrx/observers/TestSubscriber;->testObserver:Lrx/observers/TestObserver;

    invoke-virtual {v0, p1}, Lrx/observers/TestObserver;->assertReceivedOnNext(Ljava/util/List;)V

    .line 230
    return-void
.end method

.method public assertTerminalEvent()V
    .locals 1

    .prologue
    .line 239
    .local p0, "this":Lrx/observers/TestSubscriber;, "Lrx/observers/TestSubscriber<TT;>;"
    iget-object v0, p0, Lrx/observers/TestSubscriber;->testObserver:Lrx/observers/TestObserver;

    invoke-virtual {v0}, Lrx/observers/TestObserver;->assertTerminalEvent()V

    .line 240
    return-void
.end method

.method public assertUnsubscribed()V
    .locals 2

    .prologue
    .line 249
    .local p0, "this":Lrx/observers/TestSubscriber;, "Lrx/observers/TestSubscriber<TT;>;"
    invoke-virtual {p0}, Lrx/observers/TestSubscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Not unsubscribed."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 252
    :cond_0
    return-void
.end method

.method public assertValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 499
    .local p0, "this":Lrx/observers/TestSubscriber;, "Lrx/observers/TestSubscriber<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/observers/TestSubscriber;->assertReceivedOnNext(Ljava/util/List;)V

    .line 500
    return-void
.end method

.method public assertValueCount(I)V
    .locals 4
    .param p1, "count"    # I
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 472
    .local p0, "this":Lrx/observers/TestSubscriber;, "Lrx/observers/TestSubscriber<TT;>;"
    iget-object v1, p0, Lrx/observers/TestSubscriber;->testObserver:Lrx/observers/TestObserver;

    invoke-virtual {v1}, Lrx/observers/TestObserver;->getOnNextEvents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 473
    .local v0, "s":I
    if-eq v0, p1, :cond_0

    .line 474
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of onNext events differ; expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 476
    :cond_0
    return-void
.end method

.method public varargs assertValues([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 487
    .local p0, "this":Lrx/observers/TestSubscriber;, "Lrx/observers/TestSubscriber<TT;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/observers/TestSubscriber;->assertReceivedOnNext(Ljava/util/List;)V

    .line 488
    return-void
.end method

.method public awaitTerminalEvent()V
    .locals 3

    .prologue
    .line 278
    .local p0, "this":Lrx/observers/TestSubscriber;, "Lrx/observers/TestSubscriber<TT;>;"
    :try_start_0
    iget-object v1, p0, Lrx/observers/TestSubscriber;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    return-void

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Interrupted"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public awaitTerminalEvent(JLjava/util/concurrent/TimeUnit;)V
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 297
    .local p0, "this":Lrx/observers/TestSubscriber;, "Lrx/observers/TestSubscriber<TT;>;"
    :try_start_0
    iget-object v1, p0, Lrx/observers/TestSubscriber;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    return-void

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Interrupted"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public awaitTerminalEventAndUnsubscribeOnTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 316
    .local p0, "this":Lrx/observers/TestSubscriber;, "Lrx/observers/TestSubscriber<TT;>;"
    :try_start_0
    iget-object v2, p0, Lrx/observers/TestSubscriber;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    .line 317
    .local v1, "result":Z
    if-nez v1, :cond_0

    .line 319
    invoke-virtual {p0}, Lrx/observers/TestSubscriber;->unsubscribe()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .end local v1    # "result":Z
    :cond_0
    :goto_0
    return-void

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Lrx/observers/TestSubscriber;->unsubscribe()V

    goto :goto_0
.end method

.method public getLastSeenThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 334
    .local p0, "this":Lrx/observers/TestSubscriber;, "Lrx/observers/TestSubscriber<TT;>;"
    iget-object v0, p0, Lrx/observers/TestSubscriber;->lastSeenThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public getOnCompletedEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lrx/Notification",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lrx/observers/TestSubscriber;, "Lrx/observers/TestSubscriber<TT;>;"
    iget-object v0, p0, Lrx/observers/TestSubscriber;->testObserver:Lrx/observers/TestObserver;

    invoke-virtual {v0}, Lrx/observers/TestObserver;->getOnCompletedEvents()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOnErrorEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "this":Lrx/observers/TestSubscriber;, "Lrx/observers/TestSubscriber<TT;>;"
    iget-object v0, p0, Lrx/observers/TestSubscriber;->testObserver:Lrx/observers/TestObserver;

    invoke-virtual {v0}, Lrx/observers/TestObserver;->getOnErrorEvents()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOnNextEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 217
    .local p0, "this":Lrx/observers/TestSubscriber;, "Lrx/observers/TestSubscriber<TT;>;"
    iget-object v0, p0, Lrx/observers/TestSubscriber;->testObserver:Lrx/observers/TestObserver;

    invoke-virtual {v0}, Lrx/observers/TestObserver;->getOnNextEvents()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onCompleted()V
    .locals 2

    .prologue
    .line 138
    .local p0, "this":Lrx/observers/TestSubscriber;, "Lrx/observers/TestSubscriber<TT;>;"
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lrx/observers/TestSubscriber;->lastSeenThread:Ljava/lang/Thread;

    .line 139
    iget-object v0, p0, Lrx/observers/TestSubscriber;->testObserver:Lrx/observers/TestObserver;

    invoke-virtual {v0}, Lrx/observers/TestObserver;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    iget-object v0, p0, Lrx/observers/TestSubscriber;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 143
    return-void

    .line 141
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/observers/TestSubscriber;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 167
    .local p0, "this":Lrx/observers/TestSubscriber;, "Lrx/observers/TestSubscriber<TT;>;"
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lrx/observers/TestSubscriber;->lastSeenThread:Ljava/lang/Thread;

    .line 168
    iget-object v0, p0, Lrx/observers/TestSubscriber;->testObserver:Lrx/observers/TestObserver;

    invoke-virtual {v0, p1}, Lrx/observers/TestObserver;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    iget-object v0, p0, Lrx/observers/TestSubscriber;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 172
    return-void

    .line 170
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/observers/TestSubscriber;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, "this":Lrx/observers/TestSubscriber;, "Lrx/observers/TestSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lrx/observers/TestSubscriber;->lastSeenThread:Ljava/lang/Thread;

    .line 198
    iget-object v0, p0, Lrx/observers/TestSubscriber;->testObserver:Lrx/observers/TestObserver;

    invoke-virtual {v0, p1}, Lrx/observers/TestObserver;->onNext(Ljava/lang/Object;)V

    .line 199
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 125
    .local p0, "this":Lrx/observers/TestSubscriber;, "Lrx/observers/TestSubscriber<TT;>;"
    iget-wide v0, p0, Lrx/observers/TestSubscriber;->initialRequest:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 126
    iget-wide v0, p0, Lrx/observers/TestSubscriber;->initialRequest:J

    invoke-virtual {p0, v0, v1}, Lrx/observers/TestSubscriber;->requestMore(J)V

    .line 128
    :cond_0
    return-void
.end method

.method public requestMore(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 208
    .local p0, "this":Lrx/observers/TestSubscriber;, "Lrx/observers/TestSubscriber<TT;>;"
    invoke-virtual {p0, p1, p2}, Lrx/observers/TestSubscriber;->request(J)V

    .line 209
    return-void
.end method
