.class Lrx/internal/operators/OperatorTimeoutBase;
.super Ljava/lang/Object;
.source "OperatorTimeoutBase.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorTimeoutBase$1;,
        Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;,
        Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;,
        Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub;
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
.field private final firstTimeoutStub:Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final other:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private final scheduler:Lrx/Scheduler;

.field private final timeoutStub:Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub;Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;Lrx/Observable;Lrx/Scheduler;)V
    .locals 0
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub",
            "<TT;>;",
            "Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub",
            "<TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Scheduler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutBase;, "Lrx/internal/operators/OperatorTimeoutBase<TT;>;"
    .local p1, "firstTimeoutStub":Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub;, "Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub<TT;>;"
    .local p2, "timeoutStub":Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub<TT;>;"
    .local p3, "other":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lrx/internal/operators/OperatorTimeoutBase;->firstTimeoutStub:Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub;

    .line 59
    iput-object p2, p0, Lrx/internal/operators/OperatorTimeoutBase;->timeoutStub:Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;

    .line 60
    iput-object p3, p0, Lrx/internal/operators/OperatorTimeoutBase;->other:Lrx/Observable;

    .line 61
    iput-object p4, p0, Lrx/internal/operators/OperatorTimeoutBase;->scheduler:Lrx/Scheduler;

    .line 62
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutBase;, "Lrx/internal/operators/OperatorTimeoutBase<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorTimeoutBase;->call(Lrx/Subscriber;)Lrx/Subscriber;

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
    .line 66
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutBase;, "Lrx/internal/operators/OperatorTimeoutBase<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OperatorTimeoutBase;->scheduler:Lrx/Scheduler;

    invoke-virtual {v2}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v5

    .line 67
    .local v5, "inner":Lrx/Scheduler$Worker;
    invoke-virtual {p1, v5}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 68
    new-instance v3, Lrx/subscriptions/SerialSubscription;

    invoke-direct {v3}, Lrx/subscriptions/SerialSubscription;-><init>()V

    .line 69
    .local v3, "serial":Lrx/subscriptions/SerialSubscription;
    invoke-virtual {p1, v3}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 73
    new-instance v1, Lrx/observers/SerializedSubscriber;

    invoke-direct {v1, p1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    .line 75
    .local v1, "synchronizedSubscriber":Lrx/observers/SerializedSubscriber;, "Lrx/observers/SerializedSubscriber<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    iget-object v2, p0, Lrx/internal/operators/OperatorTimeoutBase;->timeoutStub:Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;

    iget-object v4, p0, Lrx/internal/operators/OperatorTimeoutBase;->other:Lrx/Observable;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;-><init>(Lrx/observers/SerializedSubscriber;Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;Lrx/subscriptions/SerialSubscription;Lrx/Observable;Lrx/Scheduler$Worker;Lrx/internal/operators/OperatorTimeoutBase$1;)V

    .line 76
    .local v0, "timeoutSubscriber":Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OperatorTimeoutBase;->firstTimeoutStub:Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v0, v4, v5}, Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/Subscription;

    invoke-virtual {v3, v2}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 77
    return-object v0
.end method
