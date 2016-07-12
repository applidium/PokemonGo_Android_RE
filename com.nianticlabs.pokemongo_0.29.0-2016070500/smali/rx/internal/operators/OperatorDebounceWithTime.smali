.class public final Lrx/internal/operators/OperatorDebounceWithTime;
.super Ljava/lang/Object;
.source "OperatorDebounceWithTime.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;
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

.field final timeout:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 47
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithTime;, "Lrx/internal/operators/OperatorDebounceWithTime<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-wide p1, p0, Lrx/internal/operators/OperatorDebounceWithTime;->timeout:J

    .line 49
    iput-object p3, p0, Lrx/internal/operators/OperatorDebounceWithTime;->unit:Ljava/util/concurrent/TimeUnit;

    .line 50
    iput-object p4, p0, Lrx/internal/operators/OperatorDebounceWithTime;->scheduler:Lrx/Scheduler;

    .line 51
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithTime;, "Lrx/internal/operators/OperatorDebounceWithTime<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorDebounceWithTime;->call(Lrx/Subscriber;)Lrx/Subscriber;

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
    .line 55
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithTime;, "Lrx/internal/operators/OperatorDebounceWithTime<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDebounceWithTime;->scheduler:Lrx/Scheduler;

    invoke-virtual {v0}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v4

    .line 56
    .local v4, "worker":Lrx/Scheduler$Worker;
    new-instance v5, Lrx/observers/SerializedSubscriber;

    invoke-direct {v5, p1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    .line 57
    .local v5, "s":Lrx/observers/SerializedSubscriber;, "Lrx/observers/SerializedSubscriber<TT;>;"
    new-instance v3, Lrx/subscriptions/SerialSubscription;

    invoke-direct {v3}, Lrx/subscriptions/SerialSubscription;-><init>()V

    .line 59
    .local v3, "ssub":Lrx/subscriptions/SerialSubscription;
    invoke-virtual {v5, v4}, Lrx/observers/SerializedSubscriber;->add(Lrx/Subscription;)V

    .line 60
    invoke-virtual {v5, v3}, Lrx/observers/SerializedSubscriber;->add(Lrx/Subscription;)V

    .line 62
    new-instance v0, Lrx/internal/operators/OperatorDebounceWithTime$1;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OperatorDebounceWithTime$1;-><init>(Lrx/internal/operators/OperatorDebounceWithTime;Lrx/Subscriber;Lrx/subscriptions/SerialSubscription;Lrx/Scheduler$Worker;Lrx/observers/SerializedSubscriber;)V

    return-object v0
.end method
