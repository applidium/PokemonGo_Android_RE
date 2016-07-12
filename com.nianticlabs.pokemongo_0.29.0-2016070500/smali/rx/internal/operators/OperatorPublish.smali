.class public final Lrx/internal/operators/OperatorPublish;
.super Lrx/observables/ConnectableObservable;
.source "OperatorPublish.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorPublish$InnerProducer;,
        Lrx/internal/operators/OperatorPublish$PublishSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/observables/ConnectableObservable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final current:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/internal/operators/OperatorPublish$PublishSubscriber",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final source:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/Observable$OnSubscribe;Lrx/Observable;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/internal/operators/OperatorPublish$PublishSubscriber",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lrx/internal/operators/OperatorPublish;, "Lrx/internal/operators/OperatorPublish<TT;>;"
    .local p1, "onSubscribe":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    .local p2, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "current":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;>;"
    invoke-direct {p0, p1}, Lrx/observables/ConnectableObservable;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 140
    iput-object p2, p0, Lrx/internal/operators/OperatorPublish;->source:Lrx/Observable;

    .line 141
    iput-object p3, p0, Lrx/internal/operators/OperatorPublish;->current:Ljava/util/concurrent/atomic/AtomicReference;

    .line 142
    return-void
.end method

.method public static create(Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<TT;>;+",
            "Lrx/Observable",
            "<TR;>;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "selector":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<TT;>;+Lrx/Observable<TR;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorPublish$2;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OperatorPublish$2;-><init>(Lrx/Observable;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/internal/operators/OperatorPublish;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lrx/Observable;)Lrx/observables/ConnectableObservable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 48
    .local v0, "curr":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;>;"
    new-instance v1, Lrx/internal/operators/OperatorPublish$1;

    invoke-direct {v1, v0}, Lrx/internal/operators/OperatorPublish$1;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 115
    .local v1, "onSubscribe":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    new-instance v2, Lrx/internal/operators/OperatorPublish;

    invoke-direct {v2, v1, p0, v0}, Lrx/internal/operators/OperatorPublish;-><init>(Lrx/Observable$OnSubscribe;Lrx/Observable;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-object v2
.end method


# virtual methods
.method public connect(Lrx/functions/Action1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-",
            "Lrx/Subscription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorPublish;, "Lrx/internal/operators/OperatorPublish<TT;>;"
    .local p1, "connection":Lrx/functions/Action1;, "Lrx/functions/Action1<-Lrx/Subscription;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 146
    const/4 v0, 0x0

    .line 151
    .local v0, "doConnect":Z
    :cond_0
    iget-object v5, p0, Lrx/internal/operators/OperatorPublish;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;

    .line 153
    .local v1, "ps":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->isUnsubscribed()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 155
    :cond_1
    new-instance v2, Lrx/internal/operators/OperatorPublish$PublishSubscriber;

    iget-object v5, p0, Lrx/internal/operators/OperatorPublish;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2, v5}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 157
    .local v2, "u":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    invoke-virtual {v2}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->init()V

    .line 159
    iget-object v5, p0, Lrx/internal/operators/OperatorPublish;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 164
    move-object v1, v2

    .line 168
    .end local v2    # "u":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    :cond_2
    iget-object v5, v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_4

    move v0, v3

    .line 184
    :goto_0
    invoke-interface {p1, v1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 185
    if-eqz v0, :cond_3

    .line 186
    iget-object v3, p0, Lrx/internal/operators/OperatorPublish;->source:Lrx/Observable;

    invoke-virtual {v3, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 188
    :cond_3
    return-void

    :cond_4
    move v0, v4

    .line 168
    goto :goto_0
.end method
