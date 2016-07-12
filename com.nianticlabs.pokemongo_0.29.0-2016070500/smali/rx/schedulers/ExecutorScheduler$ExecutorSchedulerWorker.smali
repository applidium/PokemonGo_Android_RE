.class final Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;
.super Lrx/Scheduler$Worker;
.source "ExecutorScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/schedulers/ExecutorScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExecutorSchedulerWorker"
.end annotation


# instance fields
.field final executor:Ljava/util/concurrent/Executor;

.field final queue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lrx/internal/schedulers/ScheduledAction;",
            ">;"
        }
    .end annotation
.end field

.field final tasks:Lrx/subscriptions/CompositeSubscription;

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 57
    invoke-direct {p0}, Lrx/Scheduler$Worker;-><init>()V

    .line 58
    iput-object p1, p0, Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->executor:Ljava/util/concurrent/Executor;

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 61
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->tasks:Lrx/subscriptions/CompositeSubscription;

    .line 62
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->tasks:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 96
    :cond_0
    iget-object v1, p0, Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/schedulers/ScheduledAction;

    .line 97
    .local v0, "sa":Lrx/internal/schedulers/ScheduledAction;
    invoke-virtual {v0}, Lrx/internal/schedulers/ScheduledAction;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 98
    invoke-virtual {v0}, Lrx/internal/schedulers/ScheduledAction;->run()V

    .line 100
    :cond_1
    iget-object v1, p0, Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-gtz v1, :cond_0

    .line 101
    return-void
.end method

.method public schedule(Lrx/functions/Action0;)Lrx/Subscription;
    .locals 3
    .param p1, "action"    # Lrx/functions/Action0;

    .prologue
    .line 66
    invoke-virtual {p0}, Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v0

    .line 90
    :cond_0
    :goto_0
    return-object v0

    .line 69
    :cond_1
    new-instance v0, Lrx/internal/schedulers/ScheduledAction;

    iget-object v2, p0, Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->tasks:Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0, p1, v2}, Lrx/internal/schedulers/ScheduledAction;-><init>(Lrx/functions/Action0;Lrx/subscriptions/CompositeSubscription;)V

    .line 70
    .local v0, "ea":Lrx/internal/schedulers/ScheduledAction;
    iget-object v2, p0, Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->tasks:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v2, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 71
    iget-object v2, p0, Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 72
    iget-object v2, p0, Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    if-nez v2, :cond_0

    .line 78
    :try_start_0
    iget-object v2, p0, Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v2, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v1

    .line 81
    .local v1, "t":Ljava/util/concurrent/RejectedExecutionException;
    iget-object v2, p0, Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->tasks:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v2, v0}, Lrx/subscriptions/CompositeSubscription;->remove(Lrx/Subscription;)V

    .line 82
    iget-object v2, p0, Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 84
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v2

    invoke-virtual {v2}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 86
    throw v1
.end method

.method public schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
    .locals 10
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 105
    const-wide/16 v8, 0x0

    cmp-long v7, p2, v8

    if-gtz v7, :cond_0

    .line 106
    invoke-virtual {p0, p1}, Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v4

    .line 165
    :goto_0
    return-object v4

    .line 108
    :cond_0
    invoke-virtual {p0}, Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->isUnsubscribed()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 109
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v4

    goto :goto_0

    .line 112
    :cond_1
    iget-object v7, p0, Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->executor:Ljava/util/concurrent/Executor;

    instance-of v7, v7, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v7, :cond_2

    .line 113
    iget-object v5, p0, Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->executor:Ljava/util/concurrent/Executor;

    check-cast v5, Ljava/util/concurrent/ScheduledExecutorService;

    .line 118
    .local v5, "service":Ljava/util/concurrent/ScheduledExecutorService;
    :goto_1
    new-instance v2, Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-direct {v2}, Lrx/subscriptions/MultipleAssignmentSubscription;-><init>()V

    .line 119
    .local v2, "first":Lrx/subscriptions/MultipleAssignmentSubscription;
    new-instance v3, Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-direct {v3}, Lrx/subscriptions/MultipleAssignmentSubscription;-><init>()V

    .line 120
    .local v3, "mas":Lrx/subscriptions/MultipleAssignmentSubscription;
    invoke-virtual {v3, v2}, Lrx/subscriptions/MultipleAssignmentSubscription;->set(Lrx/Subscription;)V

    .line 121
    iget-object v7, p0, Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->tasks:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v7, v3}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 122
    new-instance v7, Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker$1;

    invoke-direct {v7, p0, v3}, Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker$1;-><init>(Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;Lrx/subscriptions/MultipleAssignmentSubscription;)V

    invoke-static {v7}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v4

    .line 129
    .local v4, "removeMas":Lrx/Subscription;
    new-instance v0, Lrx/internal/schedulers/ScheduledAction;

    new-instance v7, Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker$2;

    invoke-direct {v7, p0, v3, p1, v4}, Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker$2;-><init>(Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;Lrx/subscriptions/MultipleAssignmentSubscription;Lrx/functions/Action0;Lrx/Subscription;)V

    invoke-direct {v0, v7}, Lrx/internal/schedulers/ScheduledAction;-><init>(Lrx/functions/Action0;)V

    .line 148
    .local v0, "ea":Lrx/internal/schedulers/ScheduledAction;
    invoke-virtual {v2, v0}, Lrx/subscriptions/MultipleAssignmentSubscription;->set(Lrx/Subscription;)V

    .line 153
    :try_start_0
    invoke-interface {v5, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .line 154
    .local v1, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-virtual {v0, v1}, Lrx/internal/schedulers/ScheduledAction;->add(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    .end local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :catch_0
    move-exception v6

    .line 157
    .local v6, "t":Ljava/util/concurrent/RejectedExecutionException;
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v7

    invoke-virtual {v7}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v7

    invoke-virtual {v7, v6}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 158
    throw v6

    .line 115
    .end local v0    # "ea":Lrx/internal/schedulers/ScheduledAction;
    .end local v2    # "first":Lrx/subscriptions/MultipleAssignmentSubscription;
    .end local v3    # "mas":Lrx/subscriptions/MultipleAssignmentSubscription;
    .end local v4    # "removeMas":Lrx/Subscription;
    .end local v5    # "service":Ljava/util/concurrent/ScheduledExecutorService;
    .end local v6    # "t":Ljava/util/concurrent/RejectedExecutionException;
    :cond_2
    invoke-static {}, Lrx/schedulers/GenericScheduledExecutorService;->getInstance()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v5

    .restart local v5    # "service":Ljava/util/concurrent/ScheduledExecutorService;
    goto :goto_1
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->tasks:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 176
    return-void
.end method
