.class public final Lrx/internal/operators/OperatorTakeTimed;
.super Ljava/lang/Object;
.source "OperatorTakeTimed.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber;
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
    .line 37
    .local p0, "this":Lrx/internal/operators/OperatorTakeTimed;, "Lrx/internal/operators/OperatorTakeTimed<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide p1, p0, Lrx/internal/operators/OperatorTakeTimed;->time:J

    .line 39
    iput-object p3, p0, Lrx/internal/operators/OperatorTakeTimed;->unit:Ljava/util/concurrent/TimeUnit;

    .line 40
    iput-object p4, p0, Lrx/internal/operators/OperatorTakeTimed;->scheduler:Lrx/Scheduler;

    .line 41
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/OperatorTakeTimed;, "Lrx/internal/operators/OperatorTakeTimed<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorTakeTimed;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 5
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
    .line 45
    .local p0, "this":Lrx/internal/operators/OperatorTakeTimed;, "Lrx/internal/operators/OperatorTakeTimed<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OperatorTakeTimed;->scheduler:Lrx/Scheduler;

    invoke-virtual {v2}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v1

    .line 46
    .local v1, "worker":Lrx/Scheduler$Worker;
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 48
    new-instance v0, Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber;

    new-instance v2, Lrx/observers/SerializedSubscriber;

    invoke-direct {v2, p1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    invoke-direct {v0, v2}, Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber;-><init>(Lrx/Subscriber;)V

    .line 49
    .local v0, "ts":Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber;, "Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber<TT;>;"
    iget-wide v2, p0, Lrx/internal/operators/OperatorTakeTimed;->time:J

    iget-object v4, p0, Lrx/internal/operators/OperatorTakeTimed;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v0, v2, v3, v4}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    .line 50
    return-object v0
.end method
