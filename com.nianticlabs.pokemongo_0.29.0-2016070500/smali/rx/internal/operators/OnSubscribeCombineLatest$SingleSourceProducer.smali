.class final Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceProducer;
.super Ljava/lang/Object;
.source "OnSubscribeCombineLatest.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeCombineLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SingleSourceProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Producer;"
    }
.end annotation


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final combinator:Lrx/functions/FuncN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/FuncN",
            "<+TR;>;"
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

.field final started:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final subscriber:Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber",
            "<TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Subscriber;Lrx/Observable;Lrx/functions/FuncN;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/functions/FuncN",
            "<+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceProducer;, "Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceProducer<TT;TR;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    .local p2, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "combinator":Lrx/functions/FuncN;, "Lrx/functions/FuncN<+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceProducer;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 273
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceProducer;->source:Lrx/Observable;

    .line 274
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceProducer;->child:Lrx/Subscriber;

    .line 275
    iput-object p3, p0, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceProducer;->combinator:Lrx/functions/FuncN;

    .line 276
    new-instance v0, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;

    invoke-direct {v0, p1, p3}, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;-><init>(Lrx/Subscriber;Lrx/functions/FuncN;)V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceProducer;->subscriber:Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;

    .line 277
    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 3
    .param p1, "n"    # J

    .prologue
    .line 281
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceProducer;, "Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceProducer<TT;TR;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceProducer;->subscriber:Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;

    invoke-virtual {v0, p1, p2}, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;->requestMore(J)V

    .line 282
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceProducer;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceProducer;->source:Lrx/Observable;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceProducer;->subscriber:Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 286
    :cond_0
    return-void
.end method
