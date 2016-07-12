.class public final Lrx/internal/operators/OperatorSkipTimed;
.super Ljava/lang/Object;
.source "OperatorSkipTimed.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
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
    .line 35
    .local p0, "this":Lrx/internal/operators/OperatorSkipTimed;, "Lrx/internal/operators/OperatorSkipTimed<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Lrx/internal/operators/OperatorSkipTimed;->time:J

    .line 37
    iput-object p3, p0, Lrx/internal/operators/OperatorSkipTimed;->unit:Ljava/util/concurrent/TimeUnit;

    .line 38
    iput-object p4, p0, Lrx/internal/operators/OperatorSkipTimed;->scheduler:Lrx/Scheduler;

    .line 39
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    .local p0, "this":Lrx/internal/operators/OperatorSkipTimed;, "Lrx/internal/operators/OperatorSkipTimed<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorSkipTimed;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 6
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
    .line 43
    .local p0, "this":Lrx/internal/operators/OperatorSkipTimed;, "Lrx/internal/operators/OperatorSkipTimed<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OperatorSkipTimed;->scheduler:Lrx/Scheduler;

    invoke-virtual {v2}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v1

    .line 44
    .local v1, "worker":Lrx/Scheduler$Worker;
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 46
    .local v0, "gate":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v2, Lrx/internal/operators/OperatorSkipTimed$1;

    invoke-direct {v2, p0, v0}, Lrx/internal/operators/OperatorSkipTimed$1;-><init>(Lrx/internal/operators/OperatorSkipTimed;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    iget-wide v4, p0, Lrx/internal/operators/OperatorSkipTimed;->time:J

    iget-object v3, p0, Lrx/internal/operators/OperatorSkipTimed;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v4, v5, v3}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    .line 52
    new-instance v2, Lrx/internal/operators/OperatorSkipTimed$2;

    invoke-direct {v2, p0, p1, v0, p1}, Lrx/internal/operators/OperatorSkipTimed$2;-><init>(Lrx/internal/operators/OperatorSkipTimed;Lrx/Subscriber;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/Subscriber;)V

    return-object v2
.end method
