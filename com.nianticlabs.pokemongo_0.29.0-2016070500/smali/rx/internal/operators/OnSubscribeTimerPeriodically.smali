.class public final Lrx/internal/operators/OnSubscribeTimerPeriodically;
.super Ljava/lang/Object;
.source "OnSubscribeTimerPeriodically.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final initialDelay:J

.field final period:J

.field final scheduler:Lrx/Scheduler;

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V
    .locals 1
    .param p1, "initialDelay"    # J
    .param p3, "period"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Lrx/internal/operators/OnSubscribeTimerPeriodically;->initialDelay:J

    .line 37
    iput-wide p3, p0, Lrx/internal/operators/OnSubscribeTimerPeriodically;->period:J

    .line 38
    iput-object p5, p0, Lrx/internal/operators/OnSubscribeTimerPeriodically;->unit:Ljava/util/concurrent/TimeUnit;

    .line 39
    iput-object p6, p0, Lrx/internal/operators/OnSubscribeTimerPeriodically;->scheduler:Lrx/Scheduler;

    .line 40
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeTimerPeriodically;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Long;>;"
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeTimerPeriodically;->scheduler:Lrx/Scheduler;

    invoke-virtual {v1}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    .line 45
    .local v0, "worker":Lrx/Scheduler$Worker;
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 46
    new-instance v1, Lrx/internal/operators/OnSubscribeTimerPeriodically$1;

    invoke-direct {v1, p0, p1, v0}, Lrx/internal/operators/OnSubscribeTimerPeriodically$1;-><init>(Lrx/internal/operators/OnSubscribeTimerPeriodically;Lrx/Subscriber;Lrx/Scheduler$Worker;)V

    iget-wide v2, p0, Lrx/internal/operators/OnSubscribeTimerPeriodically;->initialDelay:J

    iget-wide v4, p0, Lrx/internal/operators/OnSubscribeTimerPeriodically;->period:J

    iget-object v6, p0, Lrx/internal/operators/OnSubscribeTimerPeriodically;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lrx/Scheduler$Worker;->schedulePeriodically(Lrx/functions/Action0;JJLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    .line 62
    return-void
.end method
