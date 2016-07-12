.class final Lrx/schedulers/CachedThreadScheduler;
.super Lrx/Scheduler;
.source "CachedThreadScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/schedulers/CachedThreadScheduler$ThreadWorker;,
        Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;,
        Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;
    }
.end annotation


# static fields
.field private static final EVICTOR_THREAD_FACTORY:Lrx/internal/util/RxThreadFactory;

.field private static final EVICTOR_THREAD_NAME_PREFIX:Ljava/lang/String; = "RxCachedWorkerPoolEvictor-"

.field private static final WORKER_THREAD_FACTORY:Lrx/internal/util/RxThreadFactory;

.field private static final WORKER_THREAD_NAME_PREFIX:Ljava/lang/String; = "RxCachedThreadScheduler-"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lrx/internal/util/RxThreadFactory;

    const-string v1, "RxCachedThreadScheduler-"

    invoke-direct {v0, v1}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrx/schedulers/CachedThreadScheduler;->WORKER_THREAD_FACTORY:Lrx/internal/util/RxThreadFactory;

    .line 36
    new-instance v0, Lrx/internal/util/RxThreadFactory;

    const-string v1, "RxCachedWorkerPoolEvictor-"

    invoke-direct {v0, v1}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrx/schedulers/CachedThreadScheduler;->EVICTOR_THREAD_FACTORY:Lrx/internal/util/RxThreadFactory;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lrx/Scheduler;-><init>()V

    .line 155
    return-void
.end method

.method static synthetic access$000()Lrx/internal/util/RxThreadFactory;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lrx/schedulers/CachedThreadScheduler;->EVICTOR_THREAD_FACTORY:Lrx/internal/util/RxThreadFactory;

    return-object v0
.end method

.method static synthetic access$100()Lrx/internal/util/RxThreadFactory;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lrx/schedulers/CachedThreadScheduler;->WORKER_THREAD_FACTORY:Lrx/internal/util/RxThreadFactory;

    return-object v0
.end method


# virtual methods
.method public createWorker()Lrx/Scheduler$Worker;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;

    # getter for: Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->INSTANCE:Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;
    invoke-static {}, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->access$200()Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;

    move-result-object v1

    invoke-virtual {v1}, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->get()Lrx/schedulers/CachedThreadScheduler$ThreadWorker;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;-><init>(Lrx/schedulers/CachedThreadScheduler$ThreadWorker;)V

    return-object v0
.end method
