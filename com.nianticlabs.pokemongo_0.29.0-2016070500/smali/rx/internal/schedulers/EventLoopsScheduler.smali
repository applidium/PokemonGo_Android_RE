.class public Lrx/internal/schedulers/EventLoopsScheduler;
.super Lrx/Scheduler;
.source "EventLoopsScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;,
        Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;,
        Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;
    }
.end annotation


# static fields
.field static final KEY_MAX_THREADS:Ljava/lang/String; = "rx.scheduler.max-computation-threads"

.field static final MAX_THREADS:I

.field private static final THREAD_FACTORY:Lrx/internal/util/RxThreadFactory;

.field private static final THREAD_NAME_PREFIX:Ljava/lang/String; = "RxComputationThreadPool-"


# instance fields
.field final pool:Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 28
    new-instance v3, Lrx/internal/util/RxThreadFactory;

    const-string v4, "RxComputationThreadPool-"

    invoke-direct {v3, v4}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    sput-object v3, Lrx/internal/schedulers/EventLoopsScheduler;->THREAD_FACTORY:Lrx/internal/util/RxThreadFactory;

    .line 37
    const-string v3, "rx.scheduler.max-computation-threads"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 38
    .local v1, "maxThreads":I
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    .line 40
    .local v2, "ncpu":I
    if-lez v1, :cond_0

    if-le v1, v2, :cond_1

    .line 41
    :cond_0
    move v0, v2

    .line 45
    .local v0, "max":I
    :goto_0
    sput v0, Lrx/internal/schedulers/EventLoopsScheduler;->MAX_THREADS:I

    .line 46
    return-void

    .line 43
    .end local v0    # "max":I
    :cond_1
    move v0, v1

    .restart local v0    # "max":I
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lrx/Scheduler;-><init>()V

    .line 75
    new-instance v0, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    invoke-direct {v0}, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/EventLoopsScheduler;->pool:Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    .line 76
    return-void
.end method

.method static synthetic access$000()Lrx/internal/util/RxThreadFactory;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lrx/internal/schedulers/EventLoopsScheduler;->THREAD_FACTORY:Lrx/internal/util/RxThreadFactory;

    return-object v0
.end method


# virtual methods
.method public createWorker()Lrx/Scheduler$Worker;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;

    iget-object v1, p0, Lrx/internal/schedulers/EventLoopsScheduler;->pool:Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    invoke-virtual {v1}, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;->getEventLoop()Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;-><init>(Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;)V

    return-object v0
.end method

.method public scheduleDirect(Lrx/functions/Action0;)Lrx/Subscription;
    .locals 4
    .param p1, "action"    # Lrx/functions/Action0;

    .prologue
    .line 90
    iget-object v1, p0, Lrx/internal/schedulers/EventLoopsScheduler;->pool:Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    invoke-virtual {v1}, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;->getEventLoop()Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    move-result-object v0

    .line 91
    .local v0, "pw":Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;
    const-wide/16 v2, -0x1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, v2, v3, v1}, Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;->scheduleActual(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/internal/schedulers/ScheduledAction;

    move-result-object v1

    return-object v1
.end method
