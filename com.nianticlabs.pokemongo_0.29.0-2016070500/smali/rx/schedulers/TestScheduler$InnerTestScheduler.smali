.class final Lrx/schedulers/TestScheduler$InnerTestScheduler;
.super Lrx/Scheduler$Worker;
.source "TestScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/schedulers/TestScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InnerTestScheduler"
.end annotation


# instance fields
.field private final s:Lrx/subscriptions/BooleanSubscription;

.field final synthetic this$0:Lrx/schedulers/TestScheduler;


# direct methods
.method private constructor <init>(Lrx/schedulers/TestScheduler;)V
    .locals 1

    .prologue
    .line 131
    iput-object p1, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler;->this$0:Lrx/schedulers/TestScheduler;

    invoke-direct {p0}, Lrx/Scheduler$Worker;-><init>()V

    .line 133
    new-instance v0, Lrx/subscriptions/BooleanSubscription;

    invoke-direct {v0}, Lrx/subscriptions/BooleanSubscription;-><init>()V

    iput-object v0, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler;->s:Lrx/subscriptions/BooleanSubscription;

    return-void
.end method

.method synthetic constructor <init>(Lrx/schedulers/TestScheduler;Lrx/schedulers/TestScheduler$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/schedulers/TestScheduler;
    .param p2, "x1"    # Lrx/schedulers/TestScheduler$1;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lrx/schedulers/TestScheduler$InnerTestScheduler;-><init>(Lrx/schedulers/TestScheduler;)V

    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler;->s:Lrx/subscriptions/BooleanSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/BooleanSubscription;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public now()J
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler;->this$0:Lrx/schedulers/TestScheduler;

    invoke-virtual {v0}, Lrx/schedulers/TestScheduler;->now()J

    move-result-wide v0

    return-wide v0
.end method

.method public schedule(Lrx/functions/Action0;)Lrx/Subscription;
    .locals 6
    .param p1, "action"    # Lrx/functions/Action0;

    .prologue
    .line 161
    new-instance v0, Lrx/schedulers/TestScheduler$TimedAction;

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lrx/schedulers/TestScheduler$TimedAction;-><init>(Lrx/Scheduler$Worker;JLrx/functions/Action0;Lrx/schedulers/TestScheduler$1;)V

    .line 162
    .local v0, "timedAction":Lrx/schedulers/TestScheduler$TimedAction;
    iget-object v1, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler;->this$0:Lrx/schedulers/TestScheduler;

    # getter for: Lrx/schedulers/TestScheduler;->queue:Ljava/util/Queue;
    invoke-static {v1}, Lrx/schedulers/TestScheduler;->access$900(Lrx/schedulers/TestScheduler;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v1, Lrx/schedulers/TestScheduler$InnerTestScheduler$2;

    invoke-direct {v1, p0, v0}, Lrx/schedulers/TestScheduler$InnerTestScheduler$2;-><init>(Lrx/schedulers/TestScheduler$InnerTestScheduler;Lrx/schedulers/TestScheduler$TimedAction;)V

    invoke-static {v1}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v1

    return-object v1
.end method

.method public schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
    .locals 6
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 147
    new-instance v0, Lrx/schedulers/TestScheduler$TimedAction;

    iget-object v1, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler;->this$0:Lrx/schedulers/TestScheduler;

    # getter for: Lrx/schedulers/TestScheduler;->time:J
    invoke-static {v1}, Lrx/schedulers/TestScheduler;->access$700(Lrx/schedulers/TestScheduler;)J

    move-result-wide v2

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lrx/schedulers/TestScheduler$TimedAction;-><init>(Lrx/Scheduler$Worker;JLrx/functions/Action0;Lrx/schedulers/TestScheduler$1;)V

    .line 148
    .local v0, "timedAction":Lrx/schedulers/TestScheduler$TimedAction;
    iget-object v1, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler;->this$0:Lrx/schedulers/TestScheduler;

    # getter for: Lrx/schedulers/TestScheduler;->queue:Ljava/util/Queue;
    invoke-static {v1}, Lrx/schedulers/TestScheduler;->access$900(Lrx/schedulers/TestScheduler;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v1, Lrx/schedulers/TestScheduler$InnerTestScheduler$1;

    invoke-direct {v1, p0, v0}, Lrx/schedulers/TestScheduler$InnerTestScheduler$1;-><init>(Lrx/schedulers/TestScheduler$InnerTestScheduler;Lrx/schedulers/TestScheduler$TimedAction;)V

    invoke-static {v1}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v1

    return-object v1
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler;->s:Lrx/subscriptions/BooleanSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/BooleanSubscription;->unsubscribe()V

    .line 138
    return-void
.end method
