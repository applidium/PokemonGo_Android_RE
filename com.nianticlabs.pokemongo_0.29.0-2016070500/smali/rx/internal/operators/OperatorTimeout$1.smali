.class Lrx/internal/operators/OperatorTimeout$1;
.super Ljava/lang/Object;
.source "OperatorTimeout.java"

# interfaces
.implements Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTimeout;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/Observable;Lrx/Scheduler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$timeUnit:Ljava/util/concurrent/TimeUnit;

.field final synthetic val$timeout:J


# direct methods
.method constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Lrx/internal/operators/OperatorTimeout$1;, "Lrx/internal/operators/OperatorTimeout.1;"
    iput-wide p1, p0, Lrx/internal/operators/OperatorTimeout$1;->val$timeout:J

    iput-object p3, p0, Lrx/internal/operators/OperatorTimeout$1;->val$timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 35
    .local p0, "this":Lrx/internal/operators/OperatorTimeout$1;, "Lrx/internal/operators/OperatorTimeout.1;"
    check-cast p1, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Lrx/Scheduler$Worker;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lrx/internal/operators/OperatorTimeout$1;->call(Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;Ljava/lang/Long;Lrx/Scheduler$Worker;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;Ljava/lang/Long;Lrx/Scheduler$Worker;)Lrx/Subscription;
    .locals 4
    .param p2, "seqId"    # Ljava/lang/Long;
    .param p3, "inner"    # Lrx/Scheduler$Worker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber",
            "<TT;>;",
            "Ljava/lang/Long;",
            "Lrx/Scheduler$Worker;",
            ")",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lrx/internal/operators/OperatorTimeout$1;, "Lrx/internal/operators/OperatorTimeout.1;"
    .local p1, "timeoutSubscriber":Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorTimeout$1$1;

    invoke-direct {v0, p0, p1, p2}, Lrx/internal/operators/OperatorTimeout$1$1;-><init>(Lrx/internal/operators/OperatorTimeout$1;Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;Ljava/lang/Long;)V

    iget-wide v2, p0, Lrx/internal/operators/OperatorTimeout$1;->val$timeout:J

    iget-object v1, p0, Lrx/internal/operators/OperatorTimeout$1;->val$timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v0, v2, v3, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method
