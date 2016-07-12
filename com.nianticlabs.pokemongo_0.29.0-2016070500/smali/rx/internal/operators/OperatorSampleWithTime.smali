.class public final Lrx/internal/operators/OperatorSampleWithTime;
.super Ljava/lang/Object;
.source "OperatorSampleWithTime.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final scheduler:Lrx/Scheduler;

.field final time:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 40
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithTime;, "Lrx/internal/operators/OperatorSampleWithTime<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide p1, p0, Lrx/internal/operators/OperatorSampleWithTime;->time:J

    .line 42
    iput-object p3, p0, Lrx/internal/operators/OperatorSampleWithTime;->unit:Ljava/util/concurrent/TimeUnit;

    .line 43
    iput-object p4, p0, Lrx/internal/operators/OperatorSampleWithTime;->scheduler:Lrx/Scheduler;

    .line 44
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 35
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithTime;, "Lrx/internal/operators/OperatorSampleWithTime<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorSampleWithTime;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithTime;, "Lrx/internal/operators/OperatorSampleWithTime<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v7, Lrx/observers/SerializedSubscriber;

    invoke-direct {v7, p1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    .line 49
    .local v7, "s":Lrx/observers/SerializedSubscriber;, "Lrx/observers/SerializedSubscriber<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OperatorSampleWithTime;->scheduler:Lrx/Scheduler;

    invoke-virtual {v2}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    .line 50
    .local v0, "worker":Lrx/Scheduler$Worker;
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 52
    new-instance v1, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;

    invoke-direct {v1, v7}, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;-><init>(Lrx/Subscriber;)V

    .line 53
    .local v1, "sampler":Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;, "Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber<TT;>;"
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 54
    iget-wide v2, p0, Lrx/internal/operators/OperatorSampleWithTime;->time:J

    iget-wide v4, p0, Lrx/internal/operators/OperatorSampleWithTime;->time:J

    iget-object v6, p0, Lrx/internal/operators/OperatorSampleWithTime;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lrx/Scheduler$Worker;->schedulePeriodically(Lrx/functions/Action0;JJLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    .line 56
    return-object v1
.end method
