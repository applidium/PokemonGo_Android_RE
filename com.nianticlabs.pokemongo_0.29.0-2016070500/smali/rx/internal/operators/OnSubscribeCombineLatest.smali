.class public final Lrx/internal/operators/OnSubscribeCombineLatest;
.super Ljava/lang/Object;
.source "OnSubscribeCombineLatest.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;,
        Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceProducer;,
        Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;,
        Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final combinator:Lrx/functions/FuncN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/FuncN",
            "<+TR;>;"
        }
    .end annotation
.end field

.field final sources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lrx/functions/FuncN;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;",
            "Lrx/functions/FuncN",
            "<+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest;, "Lrx/internal/operators/OnSubscribeCombineLatest<TT;TR;>;"
    .local p1, "sources":Ljava/util/List;, "Ljava/util/List<+Lrx/Observable<+TT;>;>;"
    .local p2, "combinator":Lrx/functions/FuncN;, "Lrx/functions/FuncN<+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->sources:Ljava/util/List;

    .line 51
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->combinator:Lrx/functions/FuncN;

    .line 52
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lrx/internal/util/RxRingBuffer;->SIZE:I

    if-le v0, v1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "More than RxRingBuffer.SIZE sources to combineLatest is not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest;, "Lrx/internal/operators/OnSubscribeCombineLatest<TT;TR;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeCombineLatest;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest;, "Lrx/internal/operators/OnSubscribeCombineLatest<TT;TR;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->sources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    .line 71
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->sources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 66
    new-instance v1, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceProducer;

    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->sources:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Observable;

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->combinator:Lrx/functions/FuncN;

    invoke-direct {v1, p1, v0, v2}, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceProducer;-><init>(Lrx/Subscriber;Lrx/Observable;Lrx/functions/FuncN;)V

    invoke-virtual {p1, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    goto :goto_0

    .line 68
    :cond_1
    new-instance v0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->sources:Ljava/util/List;

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->combinator:Lrx/functions/FuncN;

    invoke-direct {v0, p1, v1, v2}, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;-><init>(Lrx/Subscriber;Ljava/util/List;Lrx/functions/FuncN;)V

    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    goto :goto_0
.end method
