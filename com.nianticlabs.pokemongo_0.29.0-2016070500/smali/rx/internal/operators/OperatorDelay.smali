.class public final Lrx/internal/operators/OperatorDelay;
.super Ljava/lang/Object;
.source "OperatorDelay.java"

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
.field final delay:J

.field final scheduler:Lrx/Scheduler;

.field final source:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Lrx/Observable;JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V
    .locals 0
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lrx/internal/operators/OperatorDelay;, "Lrx/internal/operators/OperatorDelay<TT;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lrx/internal/operators/OperatorDelay;->source:Lrx/Observable;

    .line 42
    iput-wide p2, p0, Lrx/internal/operators/OperatorDelay;->delay:J

    .line 43
    iput-object p4, p0, Lrx/internal/operators/OperatorDelay;->unit:Ljava/util/concurrent/TimeUnit;

    .line 44
    iput-object p5, p0, Lrx/internal/operators/OperatorDelay;->scheduler:Lrx/Scheduler;

    .line 45
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 33
    .local p0, "this":Lrx/internal/operators/OperatorDelay;, "Lrx/internal/operators/OperatorDelay<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorDelay;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 2
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
    .line 49
    .local p0, "this":Lrx/internal/operators/OperatorDelay;, "Lrx/internal/operators/OperatorDelay<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v1, p0, Lrx/internal/operators/OperatorDelay;->scheduler:Lrx/Scheduler;

    invoke-virtual {v1}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    .line 50
    .local v0, "worker":Lrx/Scheduler$Worker;
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 51
    new-instance v1, Lrx/internal/operators/OperatorDelay$1;

    invoke-direct {v1, p0, p1, v0, p1}, Lrx/internal/operators/OperatorDelay$1;-><init>(Lrx/internal/operators/OperatorDelay;Lrx/Subscriber;Lrx/Scheduler$Worker;Lrx/Subscriber;)V

    return-object v1
.end method
