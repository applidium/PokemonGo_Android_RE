.class final Lrx/schedulers/GenericScheduledExecutorService;
.super Ljava/lang/Object;
.source "GenericScheduledExecutorService.java"


# static fields
.field private static final INSTANCE:Lrx/schedulers/GenericScheduledExecutorService;

.field private static final THREAD_FACTORY:Lrx/internal/util/RxThreadFactory;

.field private static final THREAD_NAME_PREFIX:Ljava/lang/String; = "RxScheduledExecutorPool-"


# instance fields
.field private final executor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lrx/internal/util/RxThreadFactory;

    const-string v1, "RxScheduledExecutorPool-"

    invoke-direct {v0, v1}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrx/schedulers/GenericScheduledExecutorService;->THREAD_FACTORY:Lrx/internal/util/RxThreadFactory;

    .line 38
    new-instance v0, Lrx/schedulers/GenericScheduledExecutorService;

    invoke-direct {v0}, Lrx/schedulers/GenericScheduledExecutorService;-><init>()V

    sput-object v0, Lrx/schedulers/GenericScheduledExecutorService;->INSTANCE:Lrx/schedulers/GenericScheduledExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 43
    .local v0, "count":I
    const/4 v2, 0x4

    if-le v0, v2, :cond_0

    .line 44
    div-int/lit8 v0, v0, 0x2

    .line 47
    :cond_0
    const/16 v2, 0x8

    if-le v0, v2, :cond_1

    .line 48
    const/16 v0, 0x8

    .line 50
    :cond_1
    sget-object v2, Lrx/schedulers/GenericScheduledExecutorService;->THREAD_FACTORY:Lrx/internal/util/RxThreadFactory;

    invoke-static {v0, v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    .line 51
    .local v1, "exec":Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v1}, Lrx/internal/schedulers/NewThreadWorker;->tryEnableCancelPolicy(Ljava/util/concurrent/ScheduledExecutorService;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 52
    instance-of v2, v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v2, :cond_2

    move-object v2, v1

    .line 53
    check-cast v2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-static {v2}, Lrx/internal/schedulers/NewThreadWorker;->registerExecutor(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V

    .line 56
    :cond_2
    iput-object v1, p0, Lrx/schedulers/GenericScheduledExecutorService;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 57
    return-void
.end method

.method public static getInstance()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lrx/schedulers/GenericScheduledExecutorService;->INSTANCE:Lrx/schedulers/GenericScheduledExecutorService;

    iget-object v0, v0, Lrx/schedulers/GenericScheduledExecutorService;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method
