.class public final Lrx/schedulers/Schedulers;
.super Ljava/lang/Object;
.source "Schedulers.java"


# static fields
.field private static final INSTANCE:Lrx/schedulers/Schedulers;


# instance fields
.field private final computationScheduler:Lrx/Scheduler;

.field private final ioScheduler:Lrx/Scheduler;

.field private final newThreadScheduler:Lrx/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lrx/schedulers/Schedulers;

    invoke-direct {v0}, Lrx/schedulers/Schedulers;-><init>()V

    sput-object v0, Lrx/schedulers/Schedulers;->INSTANCE:Lrx/schedulers/Schedulers;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v3

    invoke-virtual {v3}, Lrx/plugins/RxJavaPlugins;->getSchedulersHook()Lrx/plugins/RxJavaSchedulersHook;

    move-result-object v3

    invoke-virtual {v3}, Lrx/plugins/RxJavaSchedulersHook;->getComputationScheduler()Lrx/Scheduler;

    move-result-object v0

    .line 37
    .local v0, "c":Lrx/Scheduler;
    if-eqz v0, :cond_0

    .line 38
    iput-object v0, p0, Lrx/schedulers/Schedulers;->computationScheduler:Lrx/Scheduler;

    .line 43
    :goto_0
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v3

    invoke-virtual {v3}, Lrx/plugins/RxJavaPlugins;->getSchedulersHook()Lrx/plugins/RxJavaSchedulersHook;

    move-result-object v3

    invoke-virtual {v3}, Lrx/plugins/RxJavaSchedulersHook;->getIOScheduler()Lrx/Scheduler;

    move-result-object v1

    .line 44
    .local v1, "io":Lrx/Scheduler;
    if-eqz v1, :cond_1

    .line 45
    iput-object v1, p0, Lrx/schedulers/Schedulers;->ioScheduler:Lrx/Scheduler;

    .line 50
    :goto_1
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v3

    invoke-virtual {v3}, Lrx/plugins/RxJavaPlugins;->getSchedulersHook()Lrx/plugins/RxJavaSchedulersHook;

    move-result-object v3

    invoke-virtual {v3}, Lrx/plugins/RxJavaSchedulersHook;->getNewThreadScheduler()Lrx/Scheduler;

    move-result-object v2

    .line 51
    .local v2, "nt":Lrx/Scheduler;
    if-eqz v2, :cond_2

    .line 52
    iput-object v2, p0, Lrx/schedulers/Schedulers;->newThreadScheduler:Lrx/Scheduler;

    .line 56
    :goto_2
    return-void

    .line 40
    .end local v1    # "io":Lrx/Scheduler;
    .end local v2    # "nt":Lrx/Scheduler;
    :cond_0
    new-instance v3, Lrx/internal/schedulers/EventLoopsScheduler;

    invoke-direct {v3}, Lrx/internal/schedulers/EventLoopsScheduler;-><init>()V

    iput-object v3, p0, Lrx/schedulers/Schedulers;->computationScheduler:Lrx/Scheduler;

    goto :goto_0

    .line 47
    .restart local v1    # "io":Lrx/Scheduler;
    :cond_1
    new-instance v3, Lrx/schedulers/CachedThreadScheduler;

    invoke-direct {v3}, Lrx/schedulers/CachedThreadScheduler;-><init>()V

    iput-object v3, p0, Lrx/schedulers/Schedulers;->ioScheduler:Lrx/Scheduler;

    goto :goto_1

    .line 54
    .restart local v2    # "nt":Lrx/Scheduler;
    :cond_2
    invoke-static {}, Lrx/schedulers/NewThreadScheduler;->instance()Lrx/schedulers/NewThreadScheduler;

    move-result-object v3

    iput-object v3, p0, Lrx/schedulers/Schedulers;->newThreadScheduler:Lrx/Scheduler;

    goto :goto_2
.end method

.method public static computation()Lrx/Scheduler;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lrx/schedulers/Schedulers;->INSTANCE:Lrx/schedulers/Schedulers;

    iget-object v0, v0, Lrx/schedulers/Schedulers;->computationScheduler:Lrx/Scheduler;

    return-object v0
.end method

.method public static from(Ljava/util/concurrent/Executor;)Lrx/Scheduler;
    .locals 1
    .param p0, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 138
    new-instance v0, Lrx/schedulers/ExecutorScheduler;

    invoke-direct {v0, p0}, Lrx/schedulers/ExecutorScheduler;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static immediate()Lrx/Scheduler;
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lrx/schedulers/ImmediateScheduler;->instance()Lrx/schedulers/ImmediateScheduler;

    move-result-object v0

    return-object v0
.end method

.method public static io()Lrx/Scheduler;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lrx/schedulers/Schedulers;->INSTANCE:Lrx/schedulers/Schedulers;

    iget-object v0, v0, Lrx/schedulers/Schedulers;->ioScheduler:Lrx/Scheduler;

    return-object v0
.end method

.method public static newThread()Lrx/Scheduler;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lrx/schedulers/Schedulers;->INSTANCE:Lrx/schedulers/Schedulers;

    iget-object v0, v0, Lrx/schedulers/Schedulers;->newThreadScheduler:Lrx/Scheduler;

    return-object v0
.end method

.method public static test()Lrx/schedulers/TestScheduler;
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lrx/schedulers/TestScheduler;

    invoke-direct {v0}, Lrx/schedulers/TestScheduler;-><init>()V

    return-object v0
.end method

.method public static trampoline()Lrx/Scheduler;
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lrx/schedulers/TrampolineScheduler;->instance()Lrx/schedulers/TrampolineScheduler;

    move-result-object v0

    return-object v0
.end method
