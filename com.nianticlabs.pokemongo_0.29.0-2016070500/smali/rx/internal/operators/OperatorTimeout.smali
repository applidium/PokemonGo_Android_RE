.class public final Lrx/internal/operators/OperatorTimeout;
.super Lrx/internal/operators/OperatorTimeoutBase;
.source "OperatorTimeout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/OperatorTimeoutBase",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lrx/Observable;Lrx/Scheduler;)V
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Scheduler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lrx/internal/operators/OperatorTimeout;, "Lrx/internal/operators/OperatorTimeout<TT;>;"
    .local p4, "other":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorTimeout$1;

    invoke-direct {v0, p1, p2, p3}, Lrx/internal/operators/OperatorTimeout$1;-><init>(JLjava/util/concurrent/TimeUnit;)V

    new-instance v1, Lrx/internal/operators/OperatorTimeout$2;

    invoke-direct {v1, p1, p2, p3}, Lrx/internal/operators/OperatorTimeout$2;-><init>(JLjava/util/concurrent/TimeUnit;)V

    invoke-direct {p0, v0, v1, p4, p5}, Lrx/internal/operators/OperatorTimeoutBase;-><init>(Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub;Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;Lrx/Observable;Lrx/Scheduler;)V

    .line 58
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 1
    .param p1, "x0"    # Lrx/Subscriber;

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/OperatorTimeout;, "Lrx/internal/operators/OperatorTimeout<TT;>;"
    invoke-super {p0, p1}, Lrx/internal/operators/OperatorTimeoutBase;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method
