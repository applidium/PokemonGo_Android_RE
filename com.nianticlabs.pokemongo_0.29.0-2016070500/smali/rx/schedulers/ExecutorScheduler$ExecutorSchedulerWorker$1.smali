.class Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker$1;
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

.field final synthetic val$mas:Lrx/subscriptions/MultipleAssignmentSubscription;


# direct methods
.method constructor <init>(Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;Lrx/subscriptions/MultipleAssignmentSubscription;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker$1;->this$0:Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;

    iput-object p2, p0, Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker$1;->val$mas:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker$1;->this$0:Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;

    iget-object v0, v0, Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->tasks:Lrx/subscriptions/CompositeSubscription;

    iget-object v1, p0, Lrx/schedulers/ExecutorScheduler$ExecutorSchedulerWorker$1;->val$mas:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v0, v1}, Lrx/subscriptions/CompositeSubscription;->remove(Lrx/Subscription;)V

    .line 126
    return-void
.end method
