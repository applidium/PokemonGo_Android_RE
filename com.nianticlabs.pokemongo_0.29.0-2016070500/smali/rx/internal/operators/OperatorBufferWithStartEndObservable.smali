.class public final Lrx/internal/operators/OperatorBufferWithStartEndObservable;
.super Ljava/lang/Object;
.source "OperatorBufferWithStartEndObservable.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "TOpening:",
        "Ljava/lang/Object;",
        "TClosing:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<",
        "Ljava/util/List",
        "<TT;>;TT;>;"
    }
.end annotation


# instance fields
.field final bufferClosing:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TTOpening;+",
            "Lrx/Observable",
            "<+TTClosing;>;>;"
        }
    .end annotation
.end field

.field final bufferOpening:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<+TTOpening;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;Lrx/functions/Func1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TTOpening;>;",
            "Lrx/functions/Func1",
            "<-TTOpening;+",
            "Lrx/Observable",
            "<+TTClosing;>;>;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithStartEndObservable;, "Lrx/internal/operators/OperatorBufferWithStartEndObservable<TT;TTOpening;TTClosing;>;"
    .local p1, "bufferOpenings":Lrx/Observable;, "Lrx/Observable<+TTOpening;>;"
    .local p2, "bufferClosingSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TTOpening;+Lrx/Observable<+TTClosing;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable;->bufferOpening:Lrx/Observable;

    .line 63
    iput-object p2, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable;->bufferClosing:Lrx/functions/Func1;

    .line 64
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 49
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithStartEndObservable;, "Lrx/internal/operators/OperatorBufferWithStartEndObservable<TT;TTOpening;TTClosing;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorBufferWithStartEndObservable;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithStartEndObservable;, "Lrx/internal/operators/OperatorBufferWithStartEndObservable<TT;TTOpening;TTClosing;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/util/List<TT;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;

    new-instance v2, Lrx/observers/SerializedSubscriber;

    invoke-direct {v2, p1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    invoke-direct {v0, p0, v2}, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;-><init>(Lrx/internal/operators/OperatorBufferWithStartEndObservable;Lrx/Subscriber;)V

    .line 71
    .local v0, "bsub":Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;, "Lrx/internal/operators/OperatorBufferWithStartEndObservable<TT;TTOpening;TTClosing;>.BufferingSubscriber;"
    new-instance v1, Lrx/internal/operators/OperatorBufferWithStartEndObservable$1;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/OperatorBufferWithStartEndObservable$1;-><init>(Lrx/internal/operators/OperatorBufferWithStartEndObservable;Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;)V

    .line 89
    .local v1, "openSubscriber":Lrx/Subscriber;, "Lrx/Subscriber<TTOpening;>;"
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 90
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 92
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable;->bufferOpening:Lrx/Observable;

    invoke-virtual {v2, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 94
    return-object v0
.end method
