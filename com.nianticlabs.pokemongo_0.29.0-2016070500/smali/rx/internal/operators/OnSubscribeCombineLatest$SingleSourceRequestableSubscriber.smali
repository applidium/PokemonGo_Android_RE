.class final Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;
.super Lrx/Subscriber;
.source "OnSubscribeCombineLatest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeCombineLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SingleSourceRequestableSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TR;>;"
        }
    .end annotation
.end field

.field private final combinator:Lrx/functions/FuncN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/FuncN",
            "<+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/Subscriber;Lrx/functions/FuncN;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;",
            "Lrx/functions/FuncN",
            "<+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 296
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber<TT;TR;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    .local p2, "combinator":Lrx/functions/FuncN;, "Lrx/functions/FuncN<+TR;>;"
    invoke-direct {p0, p1}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 297
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;->child:Lrx/Subscriber;

    .line 298
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;->combinator:Lrx/functions/FuncN;

    .line 299
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 317
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber<TT;TR;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 318
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 312
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber<TT;TR;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 313
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;->child:Lrx/Subscriber;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;->combinator:Lrx/functions/FuncN;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v1, v2}, Lrx/functions/FuncN;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 308
    return-void
.end method

.method public requestMore(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 302
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber<TT;TR;>;"
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;->request(J)V

    .line 303
    return-void
.end method
