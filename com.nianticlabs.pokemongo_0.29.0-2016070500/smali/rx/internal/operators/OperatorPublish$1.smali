.class final Lrx/internal/operators/OperatorPublish$1;
.super Ljava/lang/Object;
.source "OperatorPublish.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorPublish;->create(Lrx/Observable;)Lrx/observables/ConnectableObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$curr:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lrx/internal/operators/OperatorPublish$1;->val$curr:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 48
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorPublish$1;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :cond_0
    iget-object v3, p0, Lrx/internal/operators/OperatorPublish$1;->val$curr:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;

    .line 57
    .local v1, "r":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->isUnsubscribed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 59
    :cond_1
    new-instance v2, Lrx/internal/operators/OperatorPublish$PublishSubscriber;

    iget-object v3, p0, Lrx/internal/operators/OperatorPublish$1;->val$curr:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2, v3}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 61
    .local v2, "u":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    invoke-virtual {v2}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->init()V

    .line 63
    iget-object v3, p0, Lrx/internal/operators/OperatorPublish$1;->val$curr:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    move-object v1, v2

    .line 73
    .end local v2    # "u":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    :cond_2
    new-instance v0, Lrx/internal/operators/OperatorPublish$InnerProducer;

    invoke-direct {v0, v1, p1}, Lrx/internal/operators/OperatorPublish$InnerProducer;-><init>(Lrx/internal/operators/OperatorPublish$PublishSubscriber;Lrx/Subscriber;)V

    .line 78
    .local v0, "inner":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    invoke-virtual {v1, v0}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->add(Lrx/internal/operators/OperatorPublish$InnerProducer;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 110
    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 113
    return-void
.end method
