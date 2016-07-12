.class Lrx/Scheduler$Worker$1;
.super Ljava/lang/Object;
.source "Scheduler.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Scheduler$Worker;->schedulePeriodically(Lrx/functions/Action0;JJLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field count:J

.field final synthetic this$0:Lrx/Scheduler$Worker;

.field final synthetic val$action:Lrx/functions/Action0;

.field final synthetic val$mas:Lrx/subscriptions/MultipleAssignmentSubscription;

.field final synthetic val$periodInNanos:J

.field final synthetic val$startInNanos:J


# direct methods
.method constructor <init>(Lrx/Scheduler$Worker;Lrx/subscriptions/MultipleAssignmentSubscription;Lrx/functions/Action0;JJ)V
    .locals 2

    .prologue
    .line 115
    iput-object p1, p0, Lrx/Scheduler$Worker$1;->this$0:Lrx/Scheduler$Worker;

    iput-object p2, p0, Lrx/Scheduler$Worker$1;->val$mas:Lrx/subscriptions/MultipleAssignmentSubscription;

    iput-object p3, p0, Lrx/Scheduler$Worker$1;->val$action:Lrx/functions/Action0;

    iput-wide p4, p0, Lrx/Scheduler$Worker$1;->val$startInNanos:J

    iput-wide p6, p0, Lrx/Scheduler$Worker$1;->val$periodInNanos:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lrx/Scheduler$Worker$1;->count:J

    return-void
.end method


# virtual methods
.method public call()V
    .locals 8

    .prologue
    .line 119
    iget-object v2, p0, Lrx/Scheduler$Worker$1;->val$mas:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v2}, Lrx/subscriptions/MultipleAssignmentSubscription;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    iget-object v2, p0, Lrx/Scheduler$Worker$1;->val$action:Lrx/functions/Action0;

    invoke-interface {v2}, Lrx/functions/Action0;->call()V

    .line 121
    iget-wide v2, p0, Lrx/Scheduler$Worker$1;->val$startInNanos:J

    iget-wide v4, p0, Lrx/Scheduler$Worker$1;->count:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lrx/Scheduler$Worker$1;->count:J

    iget-wide v6, p0, Lrx/Scheduler$Worker$1;->val$periodInNanos:J

    mul-long/2addr v4, v6

    add-long v0, v2, v4

    .line 122
    .local v0, "nextTick":J
    iget-object v2, p0, Lrx/Scheduler$Worker$1;->val$mas:Lrx/subscriptions/MultipleAssignmentSubscription;

    iget-object v3, p0, Lrx/Scheduler$Worker$1;->this$0:Lrx/Scheduler$Worker;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lrx/Scheduler$Worker$1;->this$0:Lrx/Scheduler$Worker;

    invoke-virtual {v5}, Lrx/Scheduler$Worker;->now()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    sub-long v4, v0, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p0, v4, v5, v6}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/subscriptions/MultipleAssignmentSubscription;->set(Lrx/Subscription;)V

    .line 124
    .end local v0    # "nextTick":J
    :cond_0
    return-void
.end method
