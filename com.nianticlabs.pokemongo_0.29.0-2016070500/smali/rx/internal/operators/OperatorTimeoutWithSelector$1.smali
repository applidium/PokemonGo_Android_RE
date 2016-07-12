.class Lrx/internal/operators/OperatorTimeoutWithSelector$1;
.super Ljava/lang/Object;
.source "OperatorTimeoutWithSelector.java"

# interfaces
.implements Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub;


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
        "Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$firstTimeoutSelector:Lrx/functions/Func0;


# direct methods
.method constructor <init>(Lrx/functions/Func0;)V
    .locals 0

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector$1;, "Lrx/internal/operators/OperatorTimeoutWithSelector.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$1;->val$firstTimeoutSelector:Lrx/functions/Func0;

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
    .line 41
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector$1;, "Lrx/internal/operators/OperatorTimeoutWithSelector.1;"
    check-cast p1, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Lrx/Scheduler$Worker;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lrx/internal/operators/OperatorTimeoutWithSelector$1;->call(Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;Ljava/lang/Long;Lrx/Scheduler$Worker;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;Ljava/lang/Long;Lrx/Scheduler$Worker;)Lrx/Subscription;
    .locals 3
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
    .line 47
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector$1;, "Lrx/internal/operators/OperatorTimeoutWithSelector.1;"
    .local p1, "timeoutSubscriber":Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$1;->val$firstTimeoutSelector:Lrx/functions/Func0;

    if-eqz v2, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 50
    .local v0, "o":Lrx/Observable;, "Lrx/Observable<TU;>;"
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$1;->val$firstTimeoutSelector:Lrx/functions/Func0;

    invoke-interface {v2}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "o":Lrx/Observable;, "Lrx/Observable<TU;>;"
    check-cast v0, Lrx/Observable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .restart local v0    # "o":Lrx/Observable;, "Lrx/Observable<TU;>;"
    new-instance v2, Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;

    invoke-direct {v2, p0, p1, p2}, Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;-><init>(Lrx/internal/operators/OperatorTimeoutWithSelector$1;Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;Ljava/lang/Long;)V

    invoke-virtual {v0, v2}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v2

    .line 75
    .end local v0    # "o":Lrx/Observable;, "Lrx/Observable<TU;>;"
    :goto_0
    return-object v2

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 53
    invoke-virtual {p1, v1}, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 54
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v2

    goto :goto_0

    .line 75
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v2

    goto :goto_0
.end method
