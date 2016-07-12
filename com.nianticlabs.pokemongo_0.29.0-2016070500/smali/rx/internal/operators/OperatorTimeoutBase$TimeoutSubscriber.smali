.class final Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;
.super Lrx/Subscriber;
.source "OperatorTimeoutBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorTimeoutBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimeoutSubscriber"
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


# static fields
.field static final ACTUAL_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
            "<",
            "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;",
            ">;"
        }
    .end annotation
.end field

.field static final TERMINATED_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<",
            "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile actual:J

.field private final gate:Ljava/lang/Object;

.field private final inner:Lrx/Scheduler$Worker;

.field private final other:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private final serial:Lrx/subscriptions/SerialSubscription;

.field private final serializedSubscriber:Lrx/observers/SerializedSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observers/SerializedSubscriber",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile terminated:I

.field private final timeoutStub:Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 97
    const-class v0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    const-string v1, "terminated"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->TERMINATED_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 100
    const-class v0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    const-string v1, "actual"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->ACTUAL_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method private constructor <init>(Lrx/observers/SerializedSubscriber;Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;Lrx/subscriptions/SerialSubscription;Lrx/Observable;Lrx/Scheduler$Worker;)V
    .locals 1
    .param p3, "serial"    # Lrx/subscriptions/SerialSubscription;
    .param p5, "inner"    # Lrx/Scheduler$Worker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/observers/SerializedSubscriber",
            "<TT;>;",
            "Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub",
            "<TT;>;",
            "Lrx/subscriptions/SerialSubscription;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Scheduler$Worker;",
            ")V"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    .local p1, "serializedSubscriber":Lrx/observers/SerializedSubscriber;, "Lrx/observers/SerializedSubscriber<TT;>;"
    .local p2, "timeoutStub":Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub<TT;>;"
    .local p4, "other":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-direct {p0, p1}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->gate:Ljava/lang/Object;

    .line 109
    iput-object p1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serializedSubscriber:Lrx/observers/SerializedSubscriber;

    .line 110
    iput-object p2, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->timeoutStub:Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;

    .line 111
    iput-object p3, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serial:Lrx/subscriptions/SerialSubscription;

    .line 112
    iput-object p4, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->other:Lrx/Observable;

    .line 113
    iput-object p5, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->inner:Lrx/Scheduler$Worker;

    .line 114
    return-void
.end method

.method synthetic constructor <init>(Lrx/observers/SerializedSubscriber;Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;Lrx/subscriptions/SerialSubscription;Lrx/Observable;Lrx/Scheduler$Worker;Lrx/internal/operators/OperatorTimeoutBase$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/observers/SerializedSubscriber;
    .param p2, "x1"    # Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;
    .param p3, "x2"    # Lrx/subscriptions/SerialSubscription;
    .param p4, "x3"    # Lrx/Observable;
    .param p5, "x4"    # Lrx/Scheduler$Worker;
    .param p6, "x5"    # Lrx/internal/operators/OperatorTimeoutBase$1;

    .prologue
    .line 80
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    invoke-direct/range {p0 .. p5}, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;-><init>(Lrx/observers/SerializedSubscriber;Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;Lrx/subscriptions/SerialSubscription;Lrx/Observable;Lrx/Scheduler$Worker;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 4

    .prologue
    .line 147
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    const/4 v0, 0x0

    .line 148
    .local v0, "onCompletedWins":Z
    iget-object v2, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->gate:Ljava/lang/Object;

    monitor-enter v2

    .line 149
    :try_start_0
    sget-object v1, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->TERMINATED_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndSet(Ljava/lang/Object;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 150
    const/4 v0, 0x1

    .line 152
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    if-eqz v0, :cond_1

    .line 154
    iget-object v1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serial:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v1}, Lrx/subscriptions/SerialSubscription;->unsubscribe()V

    .line 155
    iget-object v1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serializedSubscriber:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v1}, Lrx/observers/SerializedSubscriber;->onCompleted()V

    .line 157
    :cond_1
    return-void

    .line 152
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 133
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    const/4 v0, 0x0

    .line 134
    .local v0, "onErrorWins":Z
    iget-object v2, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->gate:Ljava/lang/Object;

    monitor-enter v2

    .line 135
    :try_start_0
    sget-object v1, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->TERMINATED_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndSet(Ljava/lang/Object;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 136
    const/4 v0, 0x1

    .line 138
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    if-eqz v0, :cond_1

    .line 140
    iget-object v1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serial:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v1}, Lrx/subscriptions/SerialSubscription;->unsubscribe()V

    .line 141
    iget-object v1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serializedSubscriber:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v1, p1}, Lrx/observers/SerializedSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 143
    :cond_1
    return-void

    .line 138
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 119
    .local v0, "onNextWins":Z
    iget-object v2, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->gate:Ljava/lang/Object;

    monitor-enter v2

    .line 120
    :try_start_0
    iget v1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->terminated:I

    if-nez v1, :cond_0

    .line 121
    sget-object v1, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->ACTUAL_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    .line 122
    const/4 v0, 0x1

    .line 124
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    if-eqz v0, :cond_1

    .line 126
    iget-object v1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serializedSubscriber:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v1, p1}, Lrx/observers/SerializedSubscriber;->onNext(Ljava/lang/Object;)V

    .line 127
    iget-object v2, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serial:Lrx/subscriptions/SerialSubscription;

    iget-object v1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->timeoutStub:Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;

    iget-wide v4, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->actual:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->inner:Lrx/Scheduler$Worker;

    invoke-interface {v1, p0, v3, p1, v4}, Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Subscription;

    invoke-virtual {v2, v1}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 129
    :cond_1
    return-void

    .line 124
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onTimeout(J)V
    .locals 9
    .param p1, "seqId"    # J

    .prologue
    .line 160
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    move-wide v0, p1

    .line 161
    .local v0, "expected":J
    const/4 v2, 0x0

    .line 162
    .local v2, "timeoutWins":Z
    iget-object v4, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->gate:Ljava/lang/Object;

    monitor-enter v4

    .line 163
    :try_start_0
    iget-wide v6, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->actual:J

    cmp-long v3, v0, v6

    if-nez v3, :cond_0

    sget-object v3, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->TERMINATED_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v5, 0x1

    invoke-virtual {v3, p0, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndSet(Ljava/lang/Object;I)I

    move-result v3

    if-nez v3, :cond_0

    .line 164
    const/4 v2, 0x1

    .line 166
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    if-eqz v2, :cond_1

    .line 168
    iget-object v3, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->other:Lrx/Observable;

    if-nez v3, :cond_2

    .line 169
    iget-object v3, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serializedSubscriber:Lrx/observers/SerializedSubscriber;

    new-instance v4, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v4}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-virtual {v3, v4}, Lrx/observers/SerializedSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 175
    :cond_1
    :goto_0
    return-void

    .line 166
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 171
    :cond_2
    iget-object v3, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->other:Lrx/Observable;

    iget-object v4, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serializedSubscriber:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v3, v4}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 172
    iget-object v3, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serial:Lrx/subscriptions/SerialSubscription;

    iget-object v4, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serializedSubscriber:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v3, v4}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    goto :goto_0
.end method
