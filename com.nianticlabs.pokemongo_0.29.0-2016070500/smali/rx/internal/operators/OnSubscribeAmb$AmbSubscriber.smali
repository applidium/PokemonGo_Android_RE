.class final Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;
.super Lrx/Subscriber;
.source "OnSubscribeAmb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeAmb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AmbSubscriber"
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
.field private chosen:Z

.field private final selection:Lrx/internal/operators/OnSubscribeAmb$Selection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OnSubscribeAmb$Selection",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final subscriber:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(JLrx/Subscriber;Lrx/internal/operators/OnSubscribeAmb$Selection;)V
    .locals 1
    .param p1, "requested"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Lrx/internal/operators/OnSubscribeAmb$Selection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 274
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    .local p3, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p4, "selection":Lrx/internal/operators/OnSubscribeAmb$Selection;, "Lrx/internal/operators/OnSubscribeAmb$Selection<TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 275
    iput-object p3, p0, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->subscriber:Lrx/Subscriber;

    .line 276
    iput-object p4, p0, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->selection:Lrx/internal/operators/OnSubscribeAmb$Selection;

    .line 278
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->request(J)V

    .line 279
    return-void
.end method

.method synthetic constructor <init>(JLrx/Subscriber;Lrx/internal/operators/OnSubscribeAmb$Selection;Lrx/internal/operators/OnSubscribeAmb$1;)V
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lrx/Subscriber;
    .param p4, "x2"    # Lrx/internal/operators/OnSubscribeAmb$Selection;
    .param p5, "x3"    # Lrx/internal/operators/OnSubscribeAmb$1;

    .prologue
    .line 268
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;-><init>(JLrx/Subscriber;Lrx/internal/operators/OnSubscribeAmb$Selection;)V

    return-void
.end method

.method static synthetic access$300(Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;J)V
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;
    .param p1, "x1"    # J

    .prologue
    .line 268
    invoke-direct {p0, p1, p2}, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->requestMore(J)V

    return-void
.end method

.method private isSelected()Z
    .locals 3

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    const/4 v0, 0x1

    .line 310
    iget-boolean v1, p0, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->chosen:Z

    if-eqz v1, :cond_0

    .line 325
    :goto_0
    return v0

    .line 313
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->selection:Lrx/internal/operators/OnSubscribeAmb$Selection;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeAmb$Selection;->choice:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 315
    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->chosen:Z

    goto :goto_0

    .line 318
    :cond_1
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->selection:Lrx/internal/operators/OnSubscribeAmb$Selection;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeAmb$Selection;->choice:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 319
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->selection:Lrx/internal/operators/OnSubscribeAmb$Selection;

    invoke-virtual {v1, p0}, Lrx/internal/operators/OnSubscribeAmb$Selection;->unsubscribeOthers(Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;)V

    .line 320
    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->chosen:Z

    goto :goto_0

    .line 324
    :cond_2
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->selection:Lrx/internal/operators/OnSubscribeAmb$Selection;

    invoke-virtual {v0}, Lrx/internal/operators/OnSubscribeAmb$Selection;->unsubscribeLosers()V

    .line 325
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final requestMore(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 282
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->request(J)V

    .line 283
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 295
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 303
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    :goto_0
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method
