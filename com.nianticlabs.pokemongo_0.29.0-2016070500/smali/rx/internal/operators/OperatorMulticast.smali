.class public final Lrx/internal/operators/OperatorMulticast;
.super Lrx/observables/ConnectableObservable;
.source "OperatorMulticast.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/observables/ConnectableObservable",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final connectedSubject:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/subjects/Subject",
            "<-TT;+TR;>;>;"
        }
    .end annotation
.end field

.field final guard:Ljava/lang/Object;

.field private guardedSubscription:Lrx/Subscription;

.field final source:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final subjectFactory:Lrx/functions/Func0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func0",
            "<+",
            "Lrx/subjects/Subject",
            "<-TT;+TR;>;>;"
        }
    .end annotation
.end field

.field private subscription:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<TT;>;"
        }
    .end annotation
.end field

.field final waitingForConnect:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lrx/Subscriber",
            "<-TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/List;Lrx/Observable;Lrx/functions/Func0;)V
    .locals 1
    .param p1, "guard"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/subjects/Subject",
            "<-TT;+TR;>;>;",
            "Ljava/util/List",
            "<",
            "Lrx/Subscriber",
            "<-TR;>;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/functions/Func0",
            "<+",
            "Lrx/subjects/Subject",
            "<-TT;+TR;>;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lrx/internal/operators/OperatorMulticast;, "Lrx/internal/operators/OperatorMulticast<TT;TR;>;"
    .local p2, "connectedSubject":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/subjects/Subject<-TT;+TR;>;>;"
    .local p3, "waitingForConnect":Ljava/util/List;, "Ljava/util/List<Lrx/Subscriber<-TR;>;>;"
    .local p4, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p5, "subjectFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<+Lrx/subjects/Subject<-TT;+TR;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorMulticast$1;

    invoke-direct {v0, p1, p2, p3}, Lrx/internal/operators/OperatorMulticast$1;-><init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lrx/observables/ConnectableObservable;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 72
    iput-object p1, p0, Lrx/internal/operators/OperatorMulticast;->guard:Ljava/lang/Object;

    .line 73
    iput-object p2, p0, Lrx/internal/operators/OperatorMulticast;->connectedSubject:Ljava/util/concurrent/atomic/AtomicReference;

    .line 74
    iput-object p3, p0, Lrx/internal/operators/OperatorMulticast;->waitingForConnect:Ljava/util/List;

    .line 75
    iput-object p4, p0, Lrx/internal/operators/OperatorMulticast;->source:Lrx/Observable;

    .line 76
    iput-object p5, p0, Lrx/internal/operators/OperatorMulticast;->subjectFactory:Lrx/functions/Func0;

    .line 77
    return-void
.end method

.method public constructor <init>(Lrx/Observable;Lrx/functions/Func0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/functions/Func0",
            "<+",
            "Lrx/subjects/Subject",
            "<-TT;+TR;>;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lrx/internal/operators/OperatorMulticast;, "Lrx/internal/operators/OperatorMulticast<TT;TR;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "subjectFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<+Lrx/subjects/Subject<-TT;+TR;>;>;"
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OperatorMulticast;-><init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/List;Lrx/Observable;Lrx/functions/Func0;)V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorMulticast;)Lrx/Subscription;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorMulticast;

    .prologue
    .line 41
    iget-object v0, p0, Lrx/internal/operators/OperatorMulticast;->guardedSubscription:Lrx/Subscription;

    return-object v0
.end method

.method static synthetic access$002(Lrx/internal/operators/OperatorMulticast;Lrx/Subscription;)Lrx/Subscription;
    .locals 0
    .param p0, "x0"    # Lrx/internal/operators/OperatorMulticast;
    .param p1, "x1"    # Lrx/Subscription;

    .prologue
    .line 41
    iput-object p1, p0, Lrx/internal/operators/OperatorMulticast;->guardedSubscription:Lrx/Subscription;

    return-object p1
.end method

.method static synthetic access$100(Lrx/internal/operators/OperatorMulticast;)Lrx/Subscriber;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorMulticast;

    .prologue
    .line 41
    iget-object v0, p0, Lrx/internal/operators/OperatorMulticast;->subscription:Lrx/Subscriber;

    return-object v0
.end method

.method static synthetic access$102(Lrx/internal/operators/OperatorMulticast;Lrx/Subscriber;)Lrx/Subscriber;
    .locals 0
    .param p0, "x0"    # Lrx/internal/operators/OperatorMulticast;
    .param p1, "x1"    # Lrx/Subscriber;

    .prologue
    .line 41
    iput-object p1, p0, Lrx/internal/operators/OperatorMulticast;->subscription:Lrx/Subscriber;

    return-object p1
.end method


# virtual methods
.method public connect(Lrx/functions/Action1;)V
    .locals 7
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
    .line 84
    .local p0, "this":Lrx/internal/operators/OperatorMulticast;, "Lrx/internal/operators/OperatorMulticast<TT;TR;>;"
    .local p1, "connection":Lrx/functions/Action1;, "Lrx/functions/Action1<-Lrx/Subscription;>;"
    iget-object v6, p0, Lrx/internal/operators/OperatorMulticast;->guard:Ljava/lang/Object;

    monitor-enter v6

    .line 85
    :try_start_0
    iget-object v5, p0, Lrx/internal/operators/OperatorMulticast;->subscription:Lrx/Subscriber;

    if-eqz v5, :cond_1

    .line 87
    iget-object v5, p0, Lrx/internal/operators/OperatorMulticast;->guardedSubscription:Lrx/Subscription;

    invoke-interface {p1, v5}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 88
    monitor-exit v6

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v5, p0, Lrx/internal/operators/OperatorMulticast;->subjectFactory:Lrx/functions/Func0;

    invoke-interface {v5}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrx/subjects/Subject;

    .line 94
    .local v4, "subject":Lrx/subjects/Subject;, "Lrx/subjects/Subject<-TT;+TR;>;"
    invoke-static {v4}, Lrx/observers/Subscribers;->from(Lrx/Observer;)Lrx/Subscriber;

    move-result-object v5

    iput-object v5, p0, Lrx/internal/operators/OperatorMulticast;->subscription:Lrx/Subscriber;

    .line 95
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 96
    .local v0, "gs":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/Subscription;>;"
    new-instance v5, Lrx/internal/operators/OperatorMulticast$2;

    invoke-direct {v5, p0, v0}, Lrx/internal/operators/OperatorMulticast$2;-><init>(Lrx/internal/operators/OperatorMulticast;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-static {v5}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 114
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lrx/Subscription;

    iput-object v5, p0, Lrx/internal/operators/OperatorMulticast;->guardedSubscription:Lrx/Subscription;

    .line 117
    iget-object v5, p0, Lrx/internal/operators/OperatorMulticast;->waitingForConnect:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/Subscriber;

    .line 118
    .local v2, "s":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    new-instance v5, Lrx/internal/operators/OperatorMulticast$3;

    invoke-direct {v5, p0, v2, v2}, Lrx/internal/operators/OperatorMulticast$3;-><init>(Lrx/internal/operators/OperatorMulticast;Lrx/Subscriber;Lrx/Subscriber;)V

    invoke-virtual {v4, v5}, Lrx/subjects/Subject;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_1

    .line 139
    .end local v0    # "gs":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/Subscription;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "s":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    .end local v4    # "subject":Lrx/subjects/Subject;, "Lrx/subjects/Subject<-TT;+TR;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 134
    .restart local v0    # "gs":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/Subscription;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "subject":Lrx/subjects/Subject;, "Lrx/subjects/Subject<-TT;+TR;>;"
    :cond_2
    :try_start_1
    iget-object v5, p0, Lrx/internal/operators/OperatorMulticast;->waitingForConnect:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 136
    iget-object v5, p0, Lrx/internal/operators/OperatorMulticast;->connectedSubject:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 139
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    iget-object v5, p0, Lrx/internal/operators/OperatorMulticast;->guardedSubscription:Lrx/Subscription;

    invoke-interface {p1, v5}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 148
    iget-object v6, p0, Lrx/internal/operators/OperatorMulticast;->guard:Ljava/lang/Object;

    monitor-enter v6

    .line 149
    :try_start_2
    iget-object v3, p0, Lrx/internal/operators/OperatorMulticast;->subscription:Lrx/Subscriber;

    .line 150
    .local v3, "sub":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 151
    if-eqz v3, :cond_0

    .line 152
    iget-object v5, p0, Lrx/internal/operators/OperatorMulticast;->source:Lrx/Observable;

    invoke-virtual {v5, v3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_0

    .line 150
    .end local v3    # "sub":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5
.end method
