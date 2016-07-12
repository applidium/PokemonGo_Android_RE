.class public abstract Lrx/internal/util/ObjectPool;
.super Ljava/lang/Object;
.source "ObjectPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final maxSize:I

.field private pool:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TT;>;"
        }
    .end annotation
.end field

.field private schedulerWorker:Lrx/Scheduler$Worker;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .local p0, "this":Lrx/internal/util/ObjectPool;, "Lrx/internal/util/ObjectPool<TT;>;"
    const/4 v2, 0x0

    .line 37
    const-wide/16 v0, 0x43

    invoke-direct {p0, v2, v2, v0, v1}, Lrx/internal/util/ObjectPool;-><init>(IIJ)V

    .line 38
    return-void
.end method

.method private constructor <init>(IIJ)V
    .locals 7
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "validationInterval"    # J

    .prologue
    .line 52
    .local p0, "this":Lrx/internal/util/ObjectPool;, "Lrx/internal/util/ObjectPool<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p2, p0, Lrx/internal/util/ObjectPool;->maxSize:I

    .line 55
    invoke-direct {p0, p1}, Lrx/internal/util/ObjectPool;->initialize(I)V

    .line 57
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/util/ObjectPool;->schedulerWorker:Lrx/Scheduler$Worker;

    .line 58
    iget-object v0, p0, Lrx/internal/util/ObjectPool;->schedulerWorker:Lrx/Scheduler$Worker;

    new-instance v1, Lrx/internal/util/ObjectPool$1;

    invoke-direct {v1, p0, p1, p2}, Lrx/internal/util/ObjectPool$1;-><init>(Lrx/internal/util/ObjectPool;II)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v2, p3

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Lrx/Scheduler$Worker;->schedulePeriodically(Lrx/functions/Action0;JJLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lrx/internal/util/ObjectPool;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lrx/internal/util/ObjectPool;

    .prologue
    .line 30
    iget-object v0, p0, Lrx/internal/util/ObjectPool;->pool:Ljava/util/Queue;

    return-object v0
.end method

.method private initialize(I)V
    .locals 4
    .param p1, "min"    # I

    .prologue
    .line 124
    .local p0, "this":Lrx/internal/util/ObjectPool;, "Lrx/internal/util/ObjectPool<TT;>;"
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    new-instance v1, Lrx/internal/util/unsafe/MpmcArrayQueue;

    iget v2, p0, Lrx/internal/util/ObjectPool;->maxSize:I

    const/16 v3, 0x400

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v1, v2}, Lrx/internal/util/unsafe/MpmcArrayQueue;-><init>(I)V

    iput-object v1, p0, Lrx/internal/util/ObjectPool;->pool:Ljava/util/Queue;

    .line 130
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_1

    .line 131
    iget-object v1, p0, Lrx/internal/util/ObjectPool;->pool:Ljava/util/Queue;

    invoke-virtual {p0}, Lrx/internal/util/ObjectPool;->createObject()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 127
    .end local v0    # "i":I
    :cond_0
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lrx/internal/util/ObjectPool;->pool:Ljava/util/Queue;

    goto :goto_0

    .line 133
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public borrowObject()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lrx/internal/util/ObjectPool;, "Lrx/internal/util/ObjectPool<TT;>;"
    iget-object v1, p0, Lrx/internal/util/ObjectPool;->pool:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .local v0, "object":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lrx/internal/util/ObjectPool;->createObject()Ljava/lang/Object;

    move-result-object v0

    .line 92
    :cond_0
    return-object v0
.end method

.method protected abstract createObject()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public returnObject(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lrx/internal/util/ObjectPool;, "Lrx/internal/util/ObjectPool<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lrx/internal/util/ObjectPool;->pool:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 113
    .local p0, "this":Lrx/internal/util/ObjectPool;, "Lrx/internal/util/ObjectPool<TT;>;"
    iget-object v0, p0, Lrx/internal/util/ObjectPool;->schedulerWorker:Lrx/Scheduler$Worker;

    invoke-virtual {v0}, Lrx/Scheduler$Worker;->unsubscribe()V

    .line 114
    return-void
.end method
