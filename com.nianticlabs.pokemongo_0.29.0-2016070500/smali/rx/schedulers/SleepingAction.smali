.class Lrx/schedulers/SleepingAction;
.super Ljava/lang/Object;
.source "SleepingAction.java"

# interfaces
.implements Lrx/functions/Action0;


# instance fields
.field private final execTime:J

.field private final innerScheduler:Lrx/Scheduler$Worker;

.field private final underlying:Lrx/functions/Action0;


# direct methods
.method public constructor <init>(Lrx/functions/Action0;Lrx/Scheduler$Worker;J)V
    .locals 1
    .param p1, "underlying"    # Lrx/functions/Action0;
    .param p2, "scheduler"    # Lrx/Scheduler$Worker;
    .param p3, "execTime"    # J

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lrx/schedulers/SleepingAction;->underlying:Lrx/functions/Action0;

    .line 28
    iput-object p2, p0, Lrx/schedulers/SleepingAction;->innerScheduler:Lrx/Scheduler$Worker;

    .line 29
    iput-wide p3, p0, Lrx/schedulers/SleepingAction;->execTime:J

    .line 30
    return-void
.end method


# virtual methods
.method public call()V
    .locals 8

    .prologue
    .line 34
    iget-object v3, p0, Lrx/schedulers/SleepingAction;->innerScheduler:Lrx/Scheduler$Worker;

    invoke-virtual {v3}, Lrx/Scheduler$Worker;->isUnsubscribed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    iget-wide v4, p0, Lrx/schedulers/SleepingAction;->execTime:J

    iget-object v3, p0, Lrx/schedulers/SleepingAction;->innerScheduler:Lrx/Scheduler$Worker;

    invoke-virtual {v3}, Lrx/Scheduler$Worker;->now()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 38
    iget-wide v4, p0, Lrx/schedulers/SleepingAction;->execTime:J

    iget-object v3, p0, Lrx/schedulers/SleepingAction;->innerScheduler:Lrx/Scheduler$Worker;

    invoke-virtual {v3}, Lrx/Scheduler$Worker;->now()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 39
    .local v0, "delay":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_2

    .line 41
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v0    # "delay":J
    :cond_2
    iget-object v3, p0, Lrx/schedulers/SleepingAction;->innerScheduler:Lrx/Scheduler$Worker;

    invoke-virtual {v3}, Lrx/Scheduler$Worker;->isUnsubscribed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 53
    iget-object v3, p0, Lrx/schedulers/SleepingAction;->underlying:Lrx/functions/Action0;

    invoke-interface {v3}, Lrx/functions/Action0;->call()V

    goto :goto_0

    .line 42
    .restart local v0    # "delay":J
    :catch_0
    move-exception v2

    .line 43
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 44
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
