.class Lrx/schedulers/ImmediateScheduler$InnerImmediateScheduler;
.super Lrx/Scheduler$Worker;
.source "ImmediateScheduler.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/schedulers/ImmediateScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerImmediateScheduler"
.end annotation


# instance fields
.field final innerSubscription:Lrx/subscriptions/BooleanSubscription;

.field final synthetic this$0:Lrx/schedulers/ImmediateScheduler;


# direct methods
.method private constructor <init>(Lrx/schedulers/ImmediateScheduler;)V
    .locals 1

    .prologue
    .line 44
    iput-object p1, p0, Lrx/schedulers/ImmediateScheduler$InnerImmediateScheduler;->this$0:Lrx/schedulers/ImmediateScheduler;

    invoke-direct {p0}, Lrx/Scheduler$Worker;-><init>()V

    .line 46
    new-instance v0, Lrx/subscriptions/BooleanSubscription;

    invoke-direct {v0}, Lrx/subscriptions/BooleanSubscription;-><init>()V

    iput-object v0, p0, Lrx/schedulers/ImmediateScheduler$InnerImmediateScheduler;->innerSubscription:Lrx/subscriptions/BooleanSubscription;

    return-void
.end method

.method synthetic constructor <init>(Lrx/schedulers/ImmediateScheduler;Lrx/schedulers/ImmediateScheduler$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/schedulers/ImmediateScheduler;
    .param p2, "x1"    # Lrx/schedulers/ImmediateScheduler$1;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lrx/schedulers/ImmediateScheduler$InnerImmediateScheduler;-><init>(Lrx/schedulers/ImmediateScheduler;)V

    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lrx/schedulers/ImmediateScheduler$InnerImmediateScheduler;->innerSubscription:Lrx/subscriptions/BooleanSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/BooleanSubscription;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public schedule(Lrx/functions/Action0;)Lrx/Subscription;
    .locals 1
    .param p1, "action"    # Lrx/functions/Action0;

    .prologue
    .line 58
    invoke-interface {p1}, Lrx/functions/Action0;->call()V

    .line 59
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
    .locals 6
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 51
    iget-object v2, p0, Lrx/schedulers/ImmediateScheduler$InnerImmediateScheduler;->this$0:Lrx/schedulers/ImmediateScheduler;

    invoke-virtual {v2}, Lrx/schedulers/ImmediateScheduler;->now()J

    move-result-wide v2

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long v0, v2, v4

    .line 53
    .local v0, "execTime":J
    new-instance v2, Lrx/schedulers/SleepingAction;

    invoke-direct {v2, p1, p0, v0, v1}, Lrx/schedulers/SleepingAction;-><init>(Lrx/functions/Action0;Lrx/Scheduler$Worker;J)V

    invoke-virtual {p0, v2}, Lrx/schedulers/ImmediateScheduler$InnerImmediateScheduler;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v2

    return-object v2
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lrx/schedulers/ImmediateScheduler$InnerImmediateScheduler;->innerSubscription:Lrx/subscriptions/BooleanSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/BooleanSubscription;->unsubscribe()V

    .line 65
    return-void
.end method
