.class public final Lrx/internal/schedulers/ScheduledAction;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ScheduledAction.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/schedulers/ScheduledAction$1;,
        Lrx/internal/schedulers/ScheduledAction$Remover2;,
        Lrx/internal/schedulers/ScheduledAction$Remover;,
        Lrx/internal/schedulers/ScheduledAction$FutureCompleter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Ljava/lang/Thread;",
        ">;",
        "Ljava/lang/Runnable;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x36fd4556f787c9b1L


# instance fields
.field final action:Lrx/functions/Action0;

.field final cancel:Lrx/internal/util/SubscriptionList;


# direct methods
.method public constructor <init>(Lrx/functions/Action0;)V
    .locals 1
    .param p1, "action"    # Lrx/functions/Action0;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 39
    iput-object p1, p0, Lrx/internal/schedulers/ScheduledAction;->action:Lrx/functions/Action0;

    .line 40
    new-instance v0, Lrx/internal/util/SubscriptionList;

    invoke-direct {v0}, Lrx/internal/util/SubscriptionList;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->cancel:Lrx/internal/util/SubscriptionList;

    .line 41
    return-void
.end method

.method public constructor <init>(Lrx/functions/Action0;Lrx/internal/util/SubscriptionList;)V
    .locals 2
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "parent"    # Lrx/internal/util/SubscriptionList;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 47
    iput-object p1, p0, Lrx/internal/schedulers/ScheduledAction;->action:Lrx/functions/Action0;

    .line 48
    new-instance v0, Lrx/internal/util/SubscriptionList;

    new-instance v1, Lrx/internal/schedulers/ScheduledAction$Remover2;

    invoke-direct {v1, p0, p2}, Lrx/internal/schedulers/ScheduledAction$Remover2;-><init>(Lrx/internal/schedulers/ScheduledAction;Lrx/internal/util/SubscriptionList;)V

    invoke-direct {v0, v1}, Lrx/internal/util/SubscriptionList;-><init>(Lrx/Subscription;)V

    iput-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->cancel:Lrx/internal/util/SubscriptionList;

    .line 49
    return-void
.end method

.method public constructor <init>(Lrx/functions/Action0;Lrx/subscriptions/CompositeSubscription;)V
    .locals 2
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "parent"    # Lrx/subscriptions/CompositeSubscription;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 43
    iput-object p1, p0, Lrx/internal/schedulers/ScheduledAction;->action:Lrx/functions/Action0;

    .line 44
    new-instance v0, Lrx/internal/util/SubscriptionList;

    new-instance v1, Lrx/internal/schedulers/ScheduledAction$Remover;

    invoke-direct {v1, p0, p2}, Lrx/internal/schedulers/ScheduledAction$Remover;-><init>(Lrx/internal/schedulers/ScheduledAction;Lrx/subscriptions/CompositeSubscription;)V

    invoke-direct {v0, v1}, Lrx/internal/util/SubscriptionList;-><init>(Lrx/Subscription;)V

    iput-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->cancel:Lrx/internal/util/SubscriptionList;

    .line 45
    return-void
.end method


# virtual methods
.method public add(Ljava/util/concurrent/Future;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->cancel:Lrx/internal/util/SubscriptionList;

    new-instance v1, Lrx/internal/schedulers/ScheduledAction$FutureCompleter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lrx/internal/schedulers/ScheduledAction$FutureCompleter;-><init>(Lrx/internal/schedulers/ScheduledAction;Ljava/util/concurrent/Future;Lrx/internal/schedulers/ScheduledAction$1;)V

    invoke-virtual {v0, v1}, Lrx/internal/util/SubscriptionList;->add(Lrx/Subscription;)V

    .line 101
    return-void
.end method

.method public add(Lrx/Subscription;)V
    .locals 1
    .param p1, "s"    # Lrx/Subscription;

    .prologue
    .line 91
    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->cancel:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v0, p1}, Lrx/internal/util/SubscriptionList;->add(Lrx/Subscription;)V

    .line 92
    return-void
.end method

.method public addParent(Lrx/internal/util/SubscriptionList;)V
    .locals 2
    .param p1, "parent"    # Lrx/internal/util/SubscriptionList;

    .prologue
    .line 122
    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->cancel:Lrx/internal/util/SubscriptionList;

    new-instance v1, Lrx/internal/schedulers/ScheduledAction$Remover2;

    invoke-direct {v1, p0, p1}, Lrx/internal/schedulers/ScheduledAction$Remover2;-><init>(Lrx/internal/schedulers/ScheduledAction;Lrx/internal/util/SubscriptionList;)V

    invoke-virtual {v0, v1}, Lrx/internal/util/SubscriptionList;->add(Lrx/Subscription;)V

    .line 123
    return-void
.end method

.method public addParent(Lrx/subscriptions/CompositeSubscription;)V
    .locals 2
    .param p1, "parent"    # Lrx/subscriptions/CompositeSubscription;

    .prologue
    .line 111
    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->cancel:Lrx/internal/util/SubscriptionList;

    new-instance v1, Lrx/internal/schedulers/ScheduledAction$Remover;

    invoke-direct {v1, p0, p1}, Lrx/internal/schedulers/ScheduledAction$Remover;-><init>(Lrx/internal/schedulers/ScheduledAction;Lrx/subscriptions/CompositeSubscription;)V

    invoke-virtual {v0, v1}, Lrx/internal/util/SubscriptionList;->add(Lrx/Subscription;)V

    .line 112
    return-void
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->cancel:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v0}, Lrx/internal/util/SubscriptionList;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 54
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {p0, v3}, Lrx/internal/schedulers/ScheduledAction;->lazySet(Ljava/lang/Object;)V

    .line 55
    iget-object v3, p0, Lrx/internal/schedulers/ScheduledAction;->action:Lrx/functions/Action0;

    invoke-interface {v3}, Lrx/functions/Action0;->call()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-virtual {p0}, Lrx/internal/schedulers/ScheduledAction;->unsubscribe()V

    .line 70
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 59
    .local v1, "ie":Ljava/lang/IllegalStateException;
    :try_start_1
    instance-of v3, v0, Lrx/exceptions/OnErrorNotImplementedException;

    if-eqz v3, :cond_0

    .line 60
    new-instance v1, Ljava/lang/IllegalStateException;

    .end local v1    # "ie":Ljava/lang/IllegalStateException;
    const-string v3, "Exception thrown on Scheduler.Worker thread. Add `onError` handling."

    invoke-direct {v1, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .restart local v1    # "ie":Ljava/lang/IllegalStateException;
    :goto_1
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v3

    invoke-virtual {v3}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v3

    invoke-virtual {v3, v1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 65
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 66
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    invoke-virtual {p0}, Lrx/internal/schedulers/ScheduledAction;->unsubscribe()V

    goto :goto_0

    .line 62
    .end local v2    # "thread":Ljava/lang/Thread;
    :cond_0
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .end local v1    # "ie":Ljava/lang/IllegalStateException;
    const-string v3, "Fatal Exception thrown on Scheduler.Worker thread."

    invoke-direct {v1, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v1    # "ie":Ljava/lang/IllegalStateException;
    goto :goto_1

    .line 68
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "ie":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lrx/internal/schedulers/ScheduledAction;->unsubscribe()V

    throw v3
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->cancel:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v0}, Lrx/internal/util/SubscriptionList;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->cancel:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v0}, Lrx/internal/util/SubscriptionList;->unsubscribe()V

    .line 82
    :cond_0
    return-void
.end method
