.class final Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;
.super Lrx/Subscriber;
.source "OperatorSwitchIfEmpty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorSwitchIfEmpty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParentSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final alternate:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private final arbiter:Lrx/internal/producers/ProducerArbiter;

.field private final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private empty:Z

.field private final ssub:Lrx/subscriptions/SerialSubscription;


# direct methods
.method constructor <init>(Lrx/Subscriber;Lrx/subscriptions/SerialSubscription;Lrx/internal/producers/ProducerArbiter;Lrx/Observable;)V
    .locals 1
    .param p2, "ssub"    # Lrx/subscriptions/SerialSubscription;
    .param p3, "arbiter"    # Lrx/internal/producers/ProducerArbiter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Lrx/subscriptions/SerialSubscription;",
            "Lrx/internal/producers/ProducerArbiter;",
            "Lrx/Observable",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;, "Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p4, "alternate":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->empty:Z

    .line 55
    iput-object p1, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->child:Lrx/Subscriber;

    .line 56
    iput-object p2, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->ssub:Lrx/subscriptions/SerialSubscription;

    .line 57
    iput-object p3, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    .line 58
    iput-object p4, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->alternate:Lrx/Observable;

    .line 59
    return-void
.end method

.method private subscribeToAlternate()V
    .locals 3

    .prologue
    .line 76
    .local p0, "this":Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;, "Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorSwitchIfEmpty$AlternateSubscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->child:Lrx/Subscriber;

    iget-object v2, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    invoke-direct {v0, v1, v2}, Lrx/internal/operators/OperatorSwitchIfEmpty$AlternateSubscriber;-><init>(Lrx/Subscriber;Lrx/internal/producers/ProducerArbiter;)V

    .line 77
    .local v0, "as":Lrx/internal/operators/OperatorSwitchIfEmpty$AlternateSubscriber;, "Lrx/internal/operators/OperatorSwitchIfEmpty$AlternateSubscriber<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->ssub:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v1, v0}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 78
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->alternate:Lrx/Observable;

    invoke-virtual {v1, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 79
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 68
    .local p0, "this":Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;, "Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->empty:Z

    if-nez v0, :cond_1

    .line 69
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-direct {p0}, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->subscribeToAlternate()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 83
    .local p0, "this":Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;, "Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 84
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;, "Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->empty:Z

    .line 89
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lrx/internal/producers/ProducerArbiter;->produced(J)V

    .line 91
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 1
    .param p1, "producer"    # Lrx/Producer;

    .prologue
    .line 63
    .local p0, "this":Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;, "Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    invoke-virtual {v0, p1}, Lrx/internal/producers/ProducerArbiter;->setProducer(Lrx/Producer;)V

    .line 64
    return-void
.end method
