.class final Lrx/internal/operators/OperatorConcat$ConcatSubscriber;
.super Lrx/Subscriber;
.source "OperatorConcat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorConcat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<",
        "Lrx/Observable",
        "<+TT;>;>;"
    }
.end annotation


# static fields
.field private static final REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
            "<",
            "Lrx/internal/operators/OperatorConcat$ConcatSubscriber;",
            ">;"
        }
    .end annotation
.end field

.field static final WIP:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<",
            "Lrx/internal/operators/OperatorConcat$ConcatSubscriber;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final arbiter:Lrx/internal/producers/ProducerArbiter;

.field private final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final current:Lrx/subscriptions/SerialSubscription;

.field volatile currentSubscriber:Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber",
            "<TT;>;"
        }
    .end annotation
.end field

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<",
            "Lrx/Observable",
            "<+TT;>;>;"
        }
    .end annotation
.end field

.field final queue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile requested:J

.field volatile wip:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 89
    const-class v0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;

    const-string v1, "wip"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->WIP:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 94
    const-class v0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;

    const-string v1, "requested"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;Lrx/subscriptions/SerialSubscription;)V
    .locals 1
    .param p2, "current"    # Lrx/subscriptions/SerialSubscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<TT;>;",
            "Lrx/subscriptions/SerialSubscription;",
            ")V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatSubscriber<TT;>;"
    .local p1, "s":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-direct {p0, p1}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 80
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    .line 99
    iput-object p1, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->child:Lrx/Subscriber;

    .line 100
    iput-object p2, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->current:Lrx/subscriptions/SerialSubscription;

    .line 101
    new-instance v0, Lrx/internal/producers/ProducerArbiter;

    invoke-direct {v0}, Lrx/internal/producers/ProducerArbiter;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    .line 102
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 103
    new-instance v0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber$1;-><init>(Lrx/internal/operators/OperatorConcat$ConcatSubscriber;)V

    invoke-static {v0}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->add(Lrx/Subscription;)V

    .line 109
    return-void
.end method

.method static synthetic access$100(Lrx/internal/operators/OperatorConcat$ConcatSubscriber;J)V
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorConcat$ConcatSubscriber;
    .param p1, "x1"    # J

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->requestFromChild(J)V

    return-void
.end method

.method static synthetic access$200(Lrx/internal/operators/OperatorConcat$ConcatSubscriber;)V
    .locals 0
    .param p0, "x0"    # Lrx/internal/operators/OperatorConcat$ConcatSubscriber;

    .prologue
    .line 79
    invoke-direct {p0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->decrementRequested()V

    return-void
.end method

.method private decrementRequested()V
    .locals 1

    .prologue
    .line 133
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatSubscriber<TT;>;"
    sget-object v0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->decrementAndGet(Ljava/lang/Object;)J

    .line 134
    return-void
.end method

.method private requestFromChild(J)V
    .locals 7
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatSubscriber<TT;>;"
    const-wide/16 v4, 0x0

    .line 119
    cmp-long v2, p1, v4

    if-gtz v2, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    sget-object v2, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-static {v2, p0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;Ljava/lang/Object;J)J

    move-result-wide v0

    .line 122
    .local v0, "previous":J
    iget-object v2, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    invoke-virtual {v2, p1, p2}, Lrx/internal/producers/ProducerArbiter;->request(J)V

    .line 123
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    .line 124
    iget-object v2, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;

    if-nez v2, :cond_0

    iget v2, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->wip:I

    if-lez v2, :cond_0

    .line 127
    invoke-virtual {p0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->subscribeNext()V

    goto :goto_0
.end method


# virtual methods
.method completeInner()V
    .locals 2

    .prologue
    .line 160
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatSubscriber<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;

    .line 161
    sget-object v0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->WIP:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->subscribeNext()V

    .line 164
    :cond_0
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->request(J)V

    .line 165
    return-void
.end method

.method public onCompleted()V
    .locals 2

    .prologue
    .line 152
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->WIP:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndIncrement(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->subscribeNext()V

    .line 156
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 146
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 147
    invoke-virtual {p0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->unsubscribe()V

    .line 148
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 79
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatSubscriber<TT;>;"
    check-cast p1, Lrx/Observable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->onNext(Lrx/Observable;)V

    return-void
.end method

.method public onNext(Lrx/Observable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatSubscriber<TT;>;"
    .local p1, "t":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->WIP:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndIncrement(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->subscribeNext()V

    .line 142
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 115
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatSubscriber<TT;>;"
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->request(J)V

    .line 116
    return-void
.end method

.method subscribeNext()V
    .locals 6

    .prologue
    .line 168
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatSubscriber<TT;>;"
    iget-wide v2, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->requested:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 169
    iget-object v2, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 170
    .local v0, "o":Ljava/lang/Object;
    iget-object v2, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, v0}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    iget-object v2, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->onCompleted()V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    if-eqz v0, :cond_0

    .line 173
    iget-object v2, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, v0}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable;

    .line 174
    .local v1, "obs":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    new-instance v2, Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;

    iget-object v3, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->child:Lrx/Subscriber;

    iget-object v4, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    invoke-direct {v2, p0, v3, v4}, Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;-><init>(Lrx/internal/operators/OperatorConcat$ConcatSubscriber;Lrx/Subscriber;Lrx/internal/producers/ProducerArbiter;)V

    iput-object v2, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;

    .line 175
    iget-object v2, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->current:Lrx/subscriptions/SerialSubscription;

    iget-object v3, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;

    invoke-virtual {v2, v3}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 176
    iget-object v2, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;

    invoke-virtual {v1, v2}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_0

    .line 180
    .end local v0    # "o":Ljava/lang/Object;
    .end local v1    # "obs":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    :cond_2
    iget-object v2, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 181
    .restart local v0    # "o":Ljava/lang/Object;
    iget-object v2, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, v0}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->onCompleted()V

    goto :goto_0
.end method
