.class public Lrx/internal/schedulers/NewThreadWorker;
.super Lrx/Scheduler$Worker;
.source "NewThreadWorker.java"

# interfaces
.implements Lrx/Subscription;


# static fields
.field private static final EXECUTORS:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/util/concurrent/ScheduledThreadPoolExecutor;",
            "Ljava/util/concurrent/ScheduledThreadPoolExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private static final FREQUENCY_KEY:Ljava/lang/String; = "rx.scheduler.jdk6.purge-frequency-millis"

.field private static final PURGE:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private static final PURGE_FORCE:Z

.field private static final PURGE_FORCE_KEY:Ljava/lang/String; = "rx.scheduler.jdk6.purge-force"

.field public static final PURGE_FREQUENCY:I

.field private static final PURGE_THREAD_PREFIX:Ljava/lang/String; = "RxSchedulerPurge-"


# instance fields
.field private final executor:Ljava/util/concurrent/ScheduledExecutorService;

.field volatile isUnsubscribed:Z

.field private final schedulersHook:Lrx/plugins/RxJavaSchedulersHook;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lrx/internal/schedulers/NewThreadWorker;->EXECUTORS:Ljava/util/concurrent/ConcurrentHashMap;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lrx/internal/schedulers/NewThreadWorker;->PURGE:Ljava/util/concurrent/atomic/AtomicReference;

    .line 51
    const-string v0, "rx.scheduler.jdk6.purge-force"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lrx/internal/schedulers/NewThreadWorker;->PURGE_FORCE:Z

    .line 52
    const-string v0, "rx.scheduler.jdk6.purge-frequency-millis"

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lrx/internal/schedulers/NewThreadWorker;->PURGE_FREQUENCY:I

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 3
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 133
    invoke-direct {p0}, Lrx/Scheduler$Worker;-><init>()V

    .line 134
    const/4 v2, 0x1

    invoke-static {v2, p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    .line 136
    .local v1, "exec":Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v1}, Lrx/internal/schedulers/NewThreadWorker;->tryEnableCancelPolicy(Ljava/util/concurrent/ScheduledExecutorService;)Z

    move-result v0

    .line 137
    .local v0, "cancelSupported":Z
    if-nez v0, :cond_0

    instance-of v2, v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 138
    check-cast v2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-static {v2}, Lrx/internal/schedulers/NewThreadWorker;->registerExecutor(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V

    .line 140
    :cond_0
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v2

    invoke-virtual {v2}, Lrx/plugins/RxJavaPlugins;->getSchedulersHook()Lrx/plugins/RxJavaSchedulersHook;

    move-result-object v2

    iput-object v2, p0, Lrx/internal/schedulers/NewThreadWorker;->schedulersHook:Lrx/plugins/RxJavaSchedulersHook;

    .line 141
    iput-object v1, p0, Lrx/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 142
    return-void
.end method

.method public static deregisterExecutor(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1
    .param p0, "service"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 86
    sget-object v0, Lrx/internal/schedulers/NewThreadWorker;->EXECUTORS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method static purgeExecutors()V
    .locals 4

    .prologue
    .line 91
    :try_start_0
    sget-object v3, Lrx/internal/schedulers/NewThreadWorker;->EXECUTORS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 92
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/concurrent/ScheduledThreadPoolExecutor;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 94
    .local v0, "exec":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    move-result v3

    if-nez v3, :cond_1

    .line 95
    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->purge()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    .end local v0    # "exec":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :catch_0
    move-exception v2

    .line 101
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {v2}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 102
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v3

    invoke-virtual {v3}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 104
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_0
    return-void

    .line 97
    .restart local v0    # "exec":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static registerExecutor(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V
    .locals 7
    .param p0, "service"    # Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .prologue
    .line 61
    :cond_0
    sget-object v1, Lrx/internal/schedulers/NewThreadWorker;->PURGE:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 62
    .local v0, "exec":Ljava/util/concurrent/ScheduledExecutorService;
    if-eqz v0, :cond_1

    .line 78
    :goto_0
    sget-object v1, Lrx/internal/schedulers/NewThreadWorker;->EXECUTORS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void

    .line 65
    :cond_1
    const/4 v1, 0x1

    new-instance v2, Lrx/internal/util/RxThreadFactory;

    const-string v3, "RxSchedulerPurge-"

    invoke-direct {v2, v3}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 66
    sget-object v1, Lrx/internal/schedulers/NewThreadWorker;->PURGE:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    new-instance v1, Lrx/internal/schedulers/NewThreadWorker$1;

    invoke-direct {v1}, Lrx/internal/schedulers/NewThreadWorker$1;-><init>()V

    sget v2, Lrx/internal/schedulers/NewThreadWorker;->PURGE_FREQUENCY:I

    int-to-long v2, v2

    sget v4, Lrx/internal/schedulers/NewThreadWorker;->PURGE_FREQUENCY:I

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method

.method public static tryEnableCancelPolicy(Ljava/util/concurrent/ScheduledExecutorService;)Z
    .locals 10
    .param p0, "exec"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 115
    sget-boolean v7, Lrx/internal/schedulers/NewThreadWorker;->PURGE_FORCE:Z

    if-nez v7, :cond_1

    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 117
    .local v4, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "setRemoveOnCancelPolicy"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-ne v7, v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    aget-object v7, v7, v6

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v7, v8, :cond_0

    .line 121
    const/4 v7, 0x1

    :try_start_0
    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v0    # "arr$":[Ljava/lang/reflect/Method;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :goto_1
    return v5

    .line 123
    .restart local v0    # "arr$":[Ljava/lang/reflect/Method;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 124
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v7

    invoke-virtual {v7}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v7

    invoke-virtual {v7, v1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 116
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Ljava/lang/reflect/Method;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :cond_1
    move v5, v6

    .line 129
    goto :goto_1
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lrx/internal/schedulers/NewThreadWorker;->isUnsubscribed:Z

    return v0
.end method

.method public schedule(Lrx/functions/Action0;)Lrx/Subscription;
    .locals 3
    .param p1, "action"    # Lrx/functions/Action0;

    .prologue
    .line 146
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lrx/internal/schedulers/NewThreadWorker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
    .locals 2
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 151
    iget-boolean v0, p0, Lrx/internal/schedulers/NewThreadWorker;->isUnsubscribed:Z

    if-eqz v0, :cond_0

    .line 152
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v0

    .line 154
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lrx/internal/schedulers/NewThreadWorker;->scheduleActual(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/internal/schedulers/ScheduledAction;

    move-result-object v0

    goto :goto_0
.end method

.method public scheduleActual(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/internal/schedulers/ScheduledAction;
    .locals 6
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 165
    iget-object v3, p0, Lrx/internal/schedulers/NewThreadWorker;->schedulersHook:Lrx/plugins/RxJavaSchedulersHook;

    invoke-virtual {v3, p1}, Lrx/plugins/RxJavaSchedulersHook;->onSchedule(Lrx/functions/Action0;)Lrx/functions/Action0;

    move-result-object v0

    .line 166
    .local v0, "decoratedAction":Lrx/functions/Action0;
    new-instance v2, Lrx/internal/schedulers/ScheduledAction;

    invoke-direct {v2, v0}, Lrx/internal/schedulers/ScheduledAction;-><init>(Lrx/functions/Action0;)V

    .line 168
    .local v2, "run":Lrx/internal/schedulers/ScheduledAction;
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-gtz v3, :cond_0

    .line 169
    iget-object v3, p0, Lrx/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 173
    .local v1, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_0
    invoke-virtual {v2, v1}, Lrx/internal/schedulers/ScheduledAction;->add(Ljava/util/concurrent/Future;)V

    .line 175
    return-object v2

    .line 171
    .end local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_0
    iget-object v3, p0, Lrx/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3, v2, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .restart local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    goto :goto_0
.end method

.method public scheduleActual(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;Lrx/internal/util/SubscriptionList;)Lrx/internal/schedulers/ScheduledAction;
    .locals 6
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "parent"    # Lrx/internal/util/SubscriptionList;

    .prologue
    .line 194
    iget-object v3, p0, Lrx/internal/schedulers/NewThreadWorker;->schedulersHook:Lrx/plugins/RxJavaSchedulersHook;

    invoke-virtual {v3, p1}, Lrx/plugins/RxJavaSchedulersHook;->onSchedule(Lrx/functions/Action0;)Lrx/functions/Action0;

    move-result-object v0

    .line 195
    .local v0, "decoratedAction":Lrx/functions/Action0;
    new-instance v2, Lrx/internal/schedulers/ScheduledAction;

    invoke-direct {v2, v0, p5}, Lrx/internal/schedulers/ScheduledAction;-><init>(Lrx/functions/Action0;Lrx/internal/util/SubscriptionList;)V

    .line 196
    .local v2, "run":Lrx/internal/schedulers/ScheduledAction;
    invoke-virtual {p5, v2}, Lrx/internal/util/SubscriptionList;->add(Lrx/Subscription;)V

    .line 199
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-gtz v3, :cond_0

    .line 200
    iget-object v3, p0, Lrx/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 204
    .local v1, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_0
    invoke-virtual {v2, v1}, Lrx/internal/schedulers/ScheduledAction;->add(Ljava/util/concurrent/Future;)V

    .line 206
    return-object v2

    .line 202
    .end local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_0
    iget-object v3, p0, Lrx/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3, v2, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .restart local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    goto :goto_0
.end method

.method public scheduleActual(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;Lrx/subscriptions/CompositeSubscription;)Lrx/internal/schedulers/ScheduledAction;
    .locals 6
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "parent"    # Lrx/subscriptions/CompositeSubscription;

    .prologue
    .line 178
    iget-object v3, p0, Lrx/internal/schedulers/NewThreadWorker;->schedulersHook:Lrx/plugins/RxJavaSchedulersHook;

    invoke-virtual {v3, p1}, Lrx/plugins/RxJavaSchedulersHook;->onSchedule(Lrx/functions/Action0;)Lrx/functions/Action0;

    move-result-object v0

    .line 179
    .local v0, "decoratedAction":Lrx/functions/Action0;
    new-instance v2, Lrx/internal/schedulers/ScheduledAction;

    invoke-direct {v2, v0, p5}, Lrx/internal/schedulers/ScheduledAction;-><init>(Lrx/functions/Action0;Lrx/subscriptions/CompositeSubscription;)V

    .line 180
    .local v2, "run":Lrx/internal/schedulers/ScheduledAction;
    invoke-virtual {p5, v2}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 183
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-gtz v3, :cond_0

    .line 184
    iget-object v3, p0, Lrx/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 188
    .local v1, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_0
    invoke-virtual {v2, v1}, Lrx/internal/schedulers/ScheduledAction;->add(Ljava/util/concurrent/Future;)V

    .line 190
    return-object v2

    .line 186
    .end local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_0
    iget-object v3, p0, Lrx/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3, v2, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .restart local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    goto :goto_0
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/schedulers/NewThreadWorker;->isUnsubscribed:Z

    .line 212
    iget-object v0, p0, Lrx/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 213
    iget-object v0, p0, Lrx/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0}, Lrx/internal/schedulers/NewThreadWorker;->deregisterExecutor(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 214
    return-void
.end method
