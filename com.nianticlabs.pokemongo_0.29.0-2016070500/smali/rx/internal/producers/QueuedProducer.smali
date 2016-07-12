.class public final Lrx/internal/producers/QueuedProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "QueuedProducer.java"

# interfaces
.implements Lrx/Observer;
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/Producer;",
        "Lrx/Observer",
        "<TT;>;"
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

.field volatile done:Z

.field error:Ljava/lang/Throwable;

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
    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/producers/QueuedProducer;->NULL_SENTINEL:Ljava/lang/Object;

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
    .line 53
    .local p0, "this":Lrx/internal/producers/QueuedProducer;, "Lrx/internal/producers/QueuedProducer<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lrx/internal/util/unsafe/SpscLinkedQueue;

    invoke-direct {v0}, Lrx/internal/util/unsafe/SpscLinkedQueue;-><init>()V

    :goto_0
    invoke-direct {p0, p1, v0}, Lrx/internal/producers/QueuedProducer;-><init>(Lrx/Subscriber;Ljava/util/Queue;)V

    .line 55
    return-void

    .line 53
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
    .line 61
    .local p0, "this":Lrx/internal/producers/QueuedProducer;, "Lrx/internal/producers/QueuedProducer<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p2, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 62
    iput-object p1, p0, Lrx/internal/producers/QueuedProducer;->child:Lrx/Subscriber;

    .line 63
    iput-object p2, p0, Lrx/internal/producers/QueuedProducer;->queue:Ljava/util/Queue;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/producers/QueuedProducer;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 65
    return-void
.end method

.method private checkTerminated(ZZ)Z
    .locals 3
    .param p1, "isDone"    # Z
    .param p2, "isEmpty"    # Z

    .prologue
    .local p0, "this":Lrx/internal/producers/QueuedProducer;, "Lrx/internal/producers/QueuedProducer<TT;>;"
    const/4 v1, 0x1

    .line 120
    iget-object v2, p0, Lrx/internal/producers/QueuedProducer;->child:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    :goto_0
    return v1

    .line 123
    :cond_0
    if-eqz p1, :cond_2

    .line 124
    iget-object v0, p0, Lrx/internal/producers/QueuedProducer;->error:Ljava/lang/Throwable;

    .line 125
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 126
    iget-object v2, p0, Lrx/internal/producers/QueuedProducer;->queue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 127
    iget-object v2, p0, Lrx/internal/producers/QueuedProducer;->child:Lrx/Subscriber;

    invoke-virtual {v2, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 130
    :cond_1
    if-eqz p2, :cond_2

    .line 131
    iget-object v2, p0, Lrx/internal/producers/QueuedProducer;->child:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->onCompleted()V

    goto :goto_0

    .line 135
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private drain()V
    .locals 18

    .prologue
    .line 139
    .local p0, "this":Lrx/internal/producers/QueuedProducer;, "Lrx/internal/producers/QueuedProducer<TT;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lrx/internal/producers/QueuedProducer;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v13

    if-nez v13, :cond_1

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Lrx/internal/producers/QueuedProducer;->child:Lrx/Subscriber;

    .line 141
    .local v2, "c":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    move-object/from16 v0, p0

    iget-object v8, v0, Lrx/internal/producers/QueuedProducer;->queue:Ljava/util/Queue;

    .line 144
    .local v8, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lrx/internal/producers/QueuedProducer;->done:Z

    invoke-interface {v8}, Ljava/util/Queue;->isEmpty()Z

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lrx/internal/producers/QueuedProducer;->checkTerminated(ZZ)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 186
    .end local v2    # "c":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .end local v8    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_1
    :goto_0
    return-void

    .line 148
    .restart local v2    # "c":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .restart local v8    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lrx/internal/producers/QueuedProducer;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    .line 150
    invoke-virtual/range {p0 .. p0}, Lrx/internal/producers/QueuedProducer;->get()J

    move-result-wide v10

    .line 151
    .local v10, "r":J
    const-wide/16 v4, 0x0

    .line 153
    .local v4, "e":J
    :goto_1
    const-wide/16 v14, 0x0

    cmp-long v13, v10, v14

    if-eqz v13, :cond_3

    .line 154
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lrx/internal/producers/QueuedProducer;->done:Z

    .line 155
    .local v3, "d":Z
    invoke-interface {v8}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v12

    .line 156
    .local v12, "v":Ljava/lang/Object;
    if-nez v12, :cond_5

    const/4 v13, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13}, Lrx/internal/producers/QueuedProducer;->checkTerminated(ZZ)Z

    move-result v13

    if-nez v13, :cond_1

    .line 159
    if-nez v12, :cond_6

    .line 181
    .end local v3    # "d":Z
    .end local v12    # "v":Ljava/lang/Object;
    :cond_3
    const-wide/16 v14, 0x0

    cmp-long v13, v4, v14

    if-eqz v13, :cond_4

    invoke-virtual/range {p0 .. p0}, Lrx/internal/producers/QueuedProducer;->get()J

    move-result-wide v14

    const-wide v16, 0x7fffffffffffffffL

    cmp-long v13, v14, v16

    if-eqz v13, :cond_4

    .line 182
    neg-long v14, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lrx/internal/producers/QueuedProducer;->addAndGet(J)J

    .line 184
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lrx/internal/producers/QueuedProducer;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v13

    if-nez v13, :cond_0

    goto :goto_0

    .line 156
    .restart local v3    # "d":Z
    .restart local v12    # "v":Ljava/lang/Object;
    :cond_5
    const/4 v13, 0x0

    goto :goto_2

    .line 164
    :cond_6
    :try_start_0
    sget-object v13, Lrx/internal/producers/QueuedProducer;->NULL_SENTINEL:Ljava/lang/Object;

    if-ne v12, v13, :cond_7

    .line 165
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 177
    :goto_3
    const-wide/16 v14, 0x1

    sub-long/2addr v10, v14

    .line 178
    const-wide/16 v14, 0x1

    add-long/2addr v4, v14

    .line 179
    goto :goto_1

    .line 168
    :cond_7
    move-object v9, v12

    .line 169
    .local v9, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {v2, v9}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 171
    .end local v9    # "t":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v6

    .line 172
    .local v6, "ex":Ljava/lang/Throwable;
    invoke-static {v6}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 173
    sget-object v13, Lrx/internal/producers/QueuedProducer;->NULL_SENTINEL:Ljava/lang/Object;

    if-eq v12, v13, :cond_8

    .end local v12    # "v":Ljava/lang/Object;
    :goto_4
    invoke-static {v6, v12}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v7

    .line 174
    .local v7, "ex1":Ljava/lang/Throwable;
    invoke-virtual {v2, v7}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 173
    .end local v7    # "ex1":Ljava/lang/Throwable;
    .restart local v12    # "v":Ljava/lang/Object;
    :cond_8
    const/4 v12, 0x0

    goto :goto_4
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
    .local p0, "this":Lrx/internal/producers/QueuedProducer;, "Lrx/internal/producers/QueuedProducer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 85
    if-nez p1, :cond_1

    .line 86
    iget-object v1, p0, Lrx/internal/producers/QueuedProducer;->queue:Ljava/util/Queue;

    sget-object v2, Lrx/internal/producers/QueuedProducer;->NULL_SENTINEL:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    iget-object v1, p0, Lrx/internal/producers/QueuedProducer;->queue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    :cond_2
    invoke-direct {p0}, Lrx/internal/producers/QueuedProducer;->drain()V

    .line 95
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 114
    .local p0, "this":Lrx/internal/producers/QueuedProducer;, "Lrx/internal/producers/QueuedProducer<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/producers/QueuedProducer;->done:Z

    .line 115
    invoke-direct {p0}, Lrx/internal/producers/QueuedProducer;->drain()V

    .line 116
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 107
    .local p0, "this":Lrx/internal/producers/QueuedProducer;, "Lrx/internal/producers/QueuedProducer<TT;>;"
    iput-object p1, p0, Lrx/internal/producers/QueuedProducer;->error:Ljava/lang/Throwable;

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/producers/QueuedProducer;->done:Z

    .line 109
    invoke-direct {p0}, Lrx/internal/producers/QueuedProducer;->drain()V

    .line 110
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lrx/internal/producers/QueuedProducer;, "Lrx/internal/producers/QueuedProducer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lrx/internal/producers/QueuedProducer;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v0}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, v0}, Lrx/internal/producers/QueuedProducer;->onError(Ljava/lang/Throwable;)V

    .line 103
    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 5
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/producers/QueuedProducer;, "Lrx/internal/producers/QueuedProducer<TT;>;"
    const-wide/16 v2, 0x0

    .line 69
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n >= 0 required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 73
    invoke-static {p0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 74
    invoke-direct {p0}, Lrx/internal/producers/QueuedProducer;->drain()V

    .line 76
    :cond_1
    return-void
.end method
