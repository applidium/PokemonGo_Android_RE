.class Lrx/internal/operators/OperatorTimeoutWithSelector$2;
.super Ljava/lang/Object;
.source "OperatorTimeoutWithSelector.java"

# interfaces
.implements Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTimeoutWithSelector;-><init>(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$timeoutSelector:Lrx/functions/Func1;


# direct methods
.method constructor <init>(Lrx/functions/Func1;)V
    .locals 0

    .prologue
    .line 78
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector$2;, "Lrx/internal/operators/OperatorTimeoutWithSelector.2;"
    iput-object p1, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$2;->val$timeoutSelector:Lrx/functions/Func1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/Object;

    .prologue
    .line 78
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector$2;, "Lrx/internal/operators/OperatorTimeoutWithSelector.2;"
    check-cast p1, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p4, Lrx/Scheduler$Worker;

    .end local p4    # "x3":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lrx/internal/operators/OperatorTimeoutWithSelector$2;->call(Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;Ljava/lang/Long;Ljava/lang/Object;Lrx/Scheduler$Worker;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;Ljava/lang/Long;Ljava/lang/Object;Lrx/Scheduler$Worker;)Lrx/Subscription;
    .locals 4
    .param p2, "seqId"    # Ljava/lang/Long;
    .param p4, "inner"    # Lrx/Scheduler$Worker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber",
            "<TT;>;",
            "Ljava/lang/Long;",
            "TT;",
            "Lrx/Scheduler$Worker;",
            ")",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector$2;, "Lrx/internal/operators/OperatorTimeoutWithSelector.2;"
    .local p1, "timeoutSubscriber":Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .line 86
    .local v1, "o":Lrx/Observable;, "Lrx/Observable<TV;>;"
    :try_start_0
    iget-object v3, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$2;->val$timeoutSelector:Lrx/functions/Func1;

    invoke-interface {v3, p3}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lrx/Observable;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    new-instance v3, Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;

    invoke-direct {v3, p0, p1, p2}, Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;-><init>(Lrx/internal/operators/OperatorTimeoutWithSelector$2;Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;Ljava/lang/Long;)V

    invoke-virtual {v1, v3}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v3

    :goto_0
    return-object v3

    .line 87
    :catch_0
    move-exception v2

    .line 88
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {v2}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 89
    invoke-virtual {p1, v2}, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 90
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v3

    goto :goto_0
.end method
