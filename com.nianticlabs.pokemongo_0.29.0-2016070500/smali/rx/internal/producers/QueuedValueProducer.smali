.class public final Lrx/internal/producers/QueuedValueProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "QueuedValueProducer.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/Producer;"
    }
.end annotation


# static fields
.field static final NULL_SENTINEL:Ljava/lang/Object;

.field private static final serialVersionUID:J = 0x64fd87a3da19de97L


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
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

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/producers/QueuedValueProducer;->NULL_SENTINEL:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lrx/internal/producers/QueuedValueProducer;, "Lrx/internal/producers/QueuedValueProducer<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lrx/internal/util/unsafe/SpscLinkedQueue;

    invoke-direct {v0}, Lrx/internal/util/unsafe/SpscLinkedQueue;-><init>()V

    :goto_0
    invoke-direct {p0, p1, v0}, Lrx/internal/producers/QueuedValueProducer;-><init>(Lrx/Subscriber;Ljava/util/Queue;)V

    .line 52
    return-void

    .line 50
    :cond_0
    new-instance v0, Lrx/internal/util/atomic/SpscLinkedAtomicQueue;

    invoke-direct {v0}, Lrx/internal/util/atomic/SpscLinkedAtomicQueue;-><init>()V

    goto :goto_0
.end method

.method public constructor <init>(Lrx/Subscriber;Ljava/util/Queue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lrx/internal/producers/QueuedValueProducer;, "Lrx/internal/producers/QueuedValueProducer<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p2, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 59
    iput-object p1, p0, Lrx/internal/producers/QueuedValueProducer;->child:Lrx/Subscriber;

    .line 60
    iput-object p2, p0, Lrx/internal/producers/QueuedValueProducer;->queue:Ljava/util/Queue;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/producers/QueuedValueProducer;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 62
    return-void
.end method

.method private drain()V
    .locals 14

    .prologue
    .line 96
    .local p0, "this":Lrx/internal/producers/QueuedValueProducer;, "Lrx/internal/producers/QueuedValueProducer<TT;>;"
    iget-object v10, p0, Lrx/internal/producers/QueuedValueProducer;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v10

    if-nez v10, :cond_1

    .line 97
    iget-object v0, p0, Lrx/internal/producers/QueuedValueProducer;->child:Lrx/Subscriber;

    .line 98
    .local v0, "c":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v5, p0, Lrx/internal/producers/QueuedValueProducer;->queue:Ljava/util/Queue;

    .line 100
    .local v5, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 137
    .end local v0    # "c":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .end local v5    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_1
    :goto_0
    return-void

    .line 104
    .restart local v0    # "c":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .restart local v5    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_2
    iget-object v10, p0, Lrx/internal/producers/QueuedValueProducer;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    .line 106
    invoke-virtual {p0}, Lrx/internal/producers/QueuedValueProducer;->get()J

    move-result-wide v6

    .line 107
    .local v6, "r":J
    const-wide/16 v2, 0x0

    .line 110
    .local v2, "e":J
    :goto_1
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-eqz v10, :cond_5

    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v9

    .local v9, "v":Ljava/lang/Object;
    if-eqz v9, :cond_5

    .line 112
    :try_start_0
    sget-object v10, Lrx/internal/producers/QueuedValueProducer;->NULL_SENTINEL:Ljava/lang/Object;

    if-ne v9, v10, :cond_3

    .line 113
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_2
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v10

    if-nez v10, :cond_1

    .line 128
    const-wide/16 v10, 0x1

    sub-long/2addr v6, v10

    .line 129
    const-wide/16 v10, 0x1

    add-long/2addr v2, v10

    goto :goto_1

    .line 116
    :cond_3
    move-object v8, v9

    .line 117
    .local v8, "t":Ljava/lang/Object;, "TT;"
    :try_start_1
    invoke-virtual {v0, v8}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 119
    .end local v8    # "t":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v1

    .line 120
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 121
    sget-object v10, Lrx/internal/producers/QueuedValueProducer;->NULL_SENTINEL:Ljava/lang/Object;

    if-eq v9, v10, :cond_4

    .end local v9    # "v":Ljava/lang/Object;
    :goto_3
    invoke-static {v1, v9}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    .line 122
    .local v4, "ex1":Ljava/lang/Throwable;
    invoke-virtual {v0, v4}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 121
    .end local v4    # "ex1":Ljava/lang/Throwable;
    .restart local v9    # "v":Ljava/lang/Object;
    :cond_4
    const/4 v9, 0x0

    goto :goto_3

    .line 132
    .end local v1    # "ex":Ljava/lang/Throwable;
    .end local v9    # "v":Ljava/lang/Object;
    :cond_5
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-eqz v10, :cond_6

    invoke-virtual {p0}, Lrx/internal/producers/QueuedValueProducer;->get()J

    move-result-wide v10

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v10, v10, v12

    if-eqz v10, :cond_6

    .line 133
    neg-long v10, v2

    invoke-virtual {p0, v10, v11}, Lrx/internal/producers/QueuedValueProducer;->addAndGet(J)J

    .line 135
    :cond_6
    iget-object v10, p0, Lrx/internal/producers/QueuedValueProducer;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v10

    if-nez v10, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public offer(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/producers/QueuedValueProducer;, "Lrx/internal/producers/QueuedValueProducer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 82
    if-nez p1, :cond_1

    .line 83
    iget-object v1, p0, Lrx/internal/producers/QueuedValueProducer;->queue:Ljava/util/Queue;

    sget-object v2, Lrx/internal/producers/QueuedValueProducer;->NULL_SENTINEL:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 92
    :cond_0
    :goto_0
    return v0

    .line 87
    :cond_1
    iget-object v1, p0, Lrx/internal/producers/QueuedValueProducer;->queue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    :cond_2
    invoke-direct {p0}, Lrx/internal/producers/QueuedValueProducer;->drain()V

    .line 92
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public request(J)V
    .locals 5
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/producers/QueuedValueProducer;, "Lrx/internal/producers/QueuedValueProducer<TT;>;"
    const-wide/16 v2, 0x0

    .line 66
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n >= 0 required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 70
    invoke-static {p0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 71
    invoke-direct {p0}, Lrx/internal/producers/QueuedValueProducer;->drain()V

    .line 73
    :cond_1
    return-void
.end method
