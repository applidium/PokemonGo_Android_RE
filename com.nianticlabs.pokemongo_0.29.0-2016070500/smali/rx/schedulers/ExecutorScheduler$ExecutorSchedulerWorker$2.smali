.class Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker$2;
.super Ljava/lang/Object;
.source "ExecutorScheduler.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;

.field final synthetic val$action:Lrx/functions/Action0;

.field final synthetic val$mas:Lrx/subscriptions/MultipleAssignmentSubscription;

.field final synthetic val$removeMas:Lrx/Subscription;


# direct methods
.method constructor <init>(Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;Lrx/subscriptions/MultipleAssignmentSubscription;Lrx/functions/Action0;Lrx/Subscription;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker$2;->this$0:Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;

    iput-object p2, p0, Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker$2;->val$mas:Lrx/subscriptions/MultipleAssignmentSubscription;

    iput-object p3, p0, Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker$2;->val$action:Lrx/functions/Action0;

    iput-object p4, p0, Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker$2;->val$removeMas:Lrx/Subscription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .prologue
    .line 132
    iget-object v1, p0, Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker$2;->val$mas:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v1}, Lrx/subscriptions/MultipleAssignmentSubscription;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v1, p0, Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker$2;->this$0:Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;

    iget-object v2, p0, Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker$2;->val$action:Lrx/functions/Action0;

    invoke-virtual {v1, v2}, Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    .line 137
    .local v0, "s2":Lrx/Subscription;
    iget-object v1, p0, Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker$2;->val$mas:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v1, v0}, Lrx/subscriptions/MultipleAssignmentSubscription;->set(Lrx/Subscription;)V

    .line 139
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lrx/internal/schedulers/ScheduledAction;

    if-ne v1, v2, :cond_0

    .line 142
    check-cast v0, Lrx/internal/schedulers/ScheduledAction;

    .end local v0    # "s2":Lrx/Subscription;
    iget-object v1, p0, Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker$2;->val$removeMas:Lrx/Subscription;

    invoke-virtual {v0, v1}, Lrx/internal/schedulers/ScheduledAction;->add(Lrx/Subscription;)V

    goto :goto_0
.end method
