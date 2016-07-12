.class public final Lrx/internal/operators/OnSubscribeRefCount;
.super Ljava/lang/Object;
.source "OnSubscribeRefCount.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private volatile baseSubscription:Lrx/subscriptions/CompositeSubscription;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final source:Lrx/observables/ConnectableObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observables/ConnectableObservable",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private final subscriptionCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lrx/observables/ConnectableObservable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/observables/ConnectableObservable",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lrx/internal/operators/OnSubscribeRefCount;, "Lrx/internal/operators/OnSubscribeRefCount<TT;>;"
    .local p1, "source":Lrx/observables/ConnectableObservable;, "Lrx/observables/ConnectableObservable<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount;->baseSubscription:Lrx/subscriptions/CompositeSubscription;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount;->subscriptionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 47
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 56
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeRefCount;->source:Lrx/observables/ConnectableObservable;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OnSubscribeRefCount;)Lrx/subscriptions/CompositeSubscription;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OnSubscribeRefCount;

    .prologue
    .line 38
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount;->baseSubscription:Lrx/subscriptions/CompositeSubscription;

    return-object v0
.end method

.method static synthetic access$002(Lrx/internal/operators/OnSubscribeRefCount;Lrx/subscriptions/CompositeSubscription;)Lrx/subscriptions/CompositeSubscription;
    .locals 0
    .param p0, "x0"    # Lrx/internal/operators/OnSubscribeRefCount;
    .param p1, "x1"    # Lrx/subscriptions/CompositeSubscription;

    .prologue
    .line 38
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeRefCount;->baseSubscription:Lrx/subscriptions/CompositeSubscription;

    return-object p1
.end method

.method static synthetic access$100(Lrx/internal/operators/OnSubscribeRefCount;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OnSubscribeRefCount;

    .prologue
    .line 38
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$200(Lrx/internal/operators/OnSubscribeRefCount;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OnSubscribeRefCount;

    .prologue
    .line 38
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount;->subscriptionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private disconnect(Lrx/subscriptions/CompositeSubscription;)Lrx/Subscription;
    .locals 1
    .param p1, "current"    # Lrx/subscriptions/CompositeSubscription;

    .prologue
    .line 149
    .local p0, "this":Lrx/internal/operators/OnSubscribeRefCount;, "Lrx/internal/operators/OnSubscribeRefCount<TT;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeRefCount$3;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OnSubscribeRefCount$3;-><init>(Lrx/internal/operators/OnSubscribeRefCount;Lrx/subscriptions/CompositeSubscription;)V

    invoke-static {v0}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method private onSubscribe(Lrx/Subscriber;Ljava/util/concurrent/atomic/AtomicBoolean;)Lrx/functions/Action1;
    .locals 1
    .param p2, "writeLocked"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "Lrx/functions/Action1",
            "<",
            "Lrx/Subscription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lrx/internal/operators/OnSubscribeRefCount;, "Lrx/internal/operators/OnSubscribeRefCount<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeRefCount$1;

    invoke-direct {v0, p0, p1, p2}, Lrx/internal/operators/OnSubscribeRefCount$1;-><init>(Lrx/internal/operators/OnSubscribeRefCount;Lrx/Subscriber;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/OnSubscribeRefCount;, "Lrx/internal/operators/OnSubscribeRefCount<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeRefCount;->call(Lrx/Subscriber;)V

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
    .local p0, "this":Lrx/internal/operators/OnSubscribeRefCount;, "Lrx/internal/operators/OnSubscribeRefCount<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    const/4 v2, 0x1

    .line 62
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 63
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeRefCount;->subscriptionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 71
    .local v0, "writeLocked":Ljava/util/concurrent/atomic/AtomicBoolean;
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeRefCount;->source:Lrx/observables/ConnectableObservable;

    invoke-direct {p0, p1, v0}, Lrx/internal/operators/OnSubscribeRefCount;->onSubscribe(Lrx/Subscriber;Ljava/util/concurrent/atomic/AtomicBoolean;)Lrx/functions/Action1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/observables/ConnectableObservable;->connect(Lrx/functions/Action1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 91
    .end local v0    # "writeLocked":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_0
    :goto_0
    return-void

    .line 76
    .restart local v0    # "writeLocked":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    throw v1

    .line 84
    .end local v0    # "writeLocked":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeRefCount;->baseSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {p0, p1, v1}, Lrx/internal/operators/OnSubscribeRefCount;->doSubscribe(Lrx/Subscriber;Lrx/subscriptions/CompositeSubscription;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 87
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_1
    move-exception v1

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method doSubscribe(Lrx/Subscriber;Lrx/subscriptions/CompositeSubscription;)V
    .locals 2
    .param p2, "currentBase"    # Lrx/subscriptions/CompositeSubscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Lrx/subscriptions/CompositeSubscription;",
            ")V"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lrx/internal/operators/OnSubscribeRefCount;, "Lrx/internal/operators/OnSubscribeRefCount<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0, p2}, Lrx/internal/operators/OnSubscribeRefCount;->disconnect(Lrx/subscriptions/CompositeSubscription;)Lrx/Subscription;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 116
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount;->source:Lrx/observables/ConnectableObservable;

    new-instance v1, Lrx/internal/operators/OnSubscribeRefCount$2;

    invoke-direct {v1, p0, p1, p1, p2}, Lrx/internal/operators/OnSubscribeRefCount$2;-><init>(Lrx/internal/operators/OnSubscribeRefCount;Lrx/Subscriber;Lrx/Subscriber;Lrx/subscriptions/CompositeSubscription;)V

    invoke-virtual {v0, v1}, Lrx/observables/ConnectableObservable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 146
    return-void
.end method
