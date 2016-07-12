.class public final Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector;
.super Ljava/lang/Object;
.source "OnSubscribeDelaySubscriptionWithSelector.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final source:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final subscriptionDelay:Lrx/functions/Func0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func0",
            "<+",
            "Lrx/Observable",
            "<TU;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;Lrx/functions/Func0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/functions/Func0",
            "<+",
            "Lrx/Observable",
            "<TU;>;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector;, "Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector<TT;TU;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "subscriptionDelay":Lrx/functions/Func0;, "Lrx/functions/Func0<+Lrx/Observable<TU;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector;->source:Lrx/Observable;

    .line 35
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector;->subscriptionDelay:Lrx/functions/Func0;

    .line 36
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    .local p0, "this":Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector;, "Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector<TT;TU;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector;, "Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector<TT;TU;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector;->subscriptionDelay:Lrx/functions/Func0;

    invoke-interface {v1}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lrx/Observable;->take(I)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector$1;

    invoke-direct {v2, p0, p1}, Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector$1;-><init>(Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector;Lrx/Subscriber;)V

    invoke-virtual {v1, v2}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
