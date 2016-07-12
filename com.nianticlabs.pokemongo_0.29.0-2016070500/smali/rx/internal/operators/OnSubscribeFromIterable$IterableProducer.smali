.class final Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;
.super Ljava/lang/Object;
.source "OnSubscribeFromIterable.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeFromIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IterableProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Producer;"
    }
.end annotation


# static fields
.field private static final REQUESTED_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
            "<",
            "Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private final o:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private volatile requested:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    const-class v0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;

    const-string v1, "requested"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->REQUESTED_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method private constructor <init>(Lrx/Subscriber;Ljava/util/Iterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Ljava/util/Iterator",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;, "Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer<TT;>;"
    .local p1, "o":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->requested:J

    .line 62
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->o:Lrx/Subscriber;

    .line 63
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->it:Ljava/util/Iterator;

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Lrx/Subscriber;Ljava/util/Iterator;Lrx/internal/operators/OnSubscribeFromIterable$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/Subscriber;
    .param p2, "x1"    # Ljava/util/Iterator;
    .param p3, "x2"    # Lrx/internal/operators/OnSubscribeFromIterable$1;

    .prologue
    .line 53
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;, "Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer<TT;>;"
    invoke-direct {p0, p1, p2}, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;-><init>(Lrx/Subscriber;Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 13
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;, "Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer<TT;>;"
    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    .line 68
    iget-wide v0, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->requested:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    cmp-long v0, p1, v4

    if-nez v0, :cond_3

    sget-object v0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->REQUESTED_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    :goto_1
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->o:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->o:Lrx/Subscriber;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->it:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_1

    .line 80
    :cond_2
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->o:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->o:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_0

    .line 88
    :cond_3
    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    .line 90
    sget-object v0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->REQUESTED_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-static {v0, p0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;Ljava/lang/Object;J)J

    move-result-wide v6

    .line 91
    .local v6, "_c":J
    cmp-long v0, v6, v2

    if-nez v0, :cond_0

    .line 99
    :cond_4
    iget-wide v10, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->requested:J

    .line 100
    .local v10, "r":J
    move-wide v8, v10

    .line 102
    .local v8, "numToEmit":J
    :goto_2
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->o:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 105
    const-wide/16 v0, 0x1

    sub-long/2addr v8, v0

    cmp-long v0, v8, v2

    if-ltz v0, :cond_6

    .line 106
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->o:Lrx/Subscriber;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->it:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_2

    .line 109
    :cond_5
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->o:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->o:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_0

    .line 117
    :cond_6
    sget-object v0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->REQUESTED_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    neg-long v4, v10

    invoke-virtual {v0, p0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    goto/16 :goto_0
.end method
