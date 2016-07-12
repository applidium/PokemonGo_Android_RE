.class Lrx/internal/operators/OnSubscribeAmb$Selection;
.super Ljava/lang/Object;
.source "OnSubscribeAmb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeAmb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Selection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final ambSubscribers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final choice:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 331
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$Selection;, "Lrx/internal/operators/OnSubscribeAmb$Selection<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeAmb$Selection;->choice:Ljava/util/concurrent/atomic/AtomicReference;

    .line 333
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeAmb$Selection;->ambSubscribers:Ljava/util/Collection;

    return-void
.end method

.method synthetic constructor <init>(Lrx/internal/operators/OnSubscribeAmb$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/internal/operators/OnSubscribeAmb$1;

    .prologue
    .line 331
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$Selection;, "Lrx/internal/operators/OnSubscribeAmb$Selection<TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/OnSubscribeAmb$Selection;-><init>()V

    return-void
.end method


# virtual methods
.method public unsubscribeLosers()V
    .locals 2

    .prologue
    .line 336
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$Selection;, "Lrx/internal/operators/OnSubscribeAmb$Selection<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeAmb$Selection;->choice:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;

    .line 337
    .local v0, "winner":Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {p0, v0}, Lrx/internal/operators/OnSubscribeAmb$Selection;->unsubscribeOthers(Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;)V

    .line 340
    :cond_0
    return-void
.end method

.method public unsubscribeOthers(Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 343
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$Selection;, "Lrx/internal/operators/OnSubscribeAmb$Selection<TT;>;"
    .local p1, "notThis":Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeAmb$Selection;->ambSubscribers:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;

    .line 344
    .local v1, "other":Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    if-eq v1, p1, :cond_0

    .line 345
    invoke-virtual {v1}, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->unsubscribe()V

    goto :goto_0

    .line 348
    .end local v1    # "other":Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    :cond_1
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeAmb$Selection;->ambSubscribers:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    .line 349
    return-void
.end method
