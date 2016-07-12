.class public final Lrx/internal/operators/OperatorBufferWithSingleObservable;
.super Ljava/lang/Object;
.source "OperatorBufferWithSingleObservable.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
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
.field final bufferClosingSelector:Lrx/functions/Func0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func0",
            "<+",
            "Lrx/Observable",
            "<+TTClosing;>;>;"
        }
    .end annotation
.end field

.field final initialCapacity:I


# direct methods
.method public constructor <init>(Lrx/Observable;I)V
    .locals 1
    .param p2, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TTClosing;>;I)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSingleObservable;, "Lrx/internal/operators/OperatorBufferWithSingleObservable<TT;TTClosing;>;"
    .local p1, "bufferClosing":Lrx/Observable;, "Lrx/Observable<+TTClosing;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lrx/internal/operators/OperatorBufferWithSingleObservable$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OperatorBufferWithSingleObservable$1;-><init>(Lrx/internal/operators/OperatorBufferWithSingleObservable;Lrx/Observable;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable;->bufferClosingSelector:Lrx/functions/Func0;

    .line 73
    iput p2, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable;->initialCapacity:I

    .line 74
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func0;I)V
    .locals 0
    .param p2, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func0",
            "<+",
            "Lrx/Observable",
            "<+TTClosing;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSingleObservable;, "Lrx/internal/operators/OperatorBufferWithSingleObservable<TT;TTClosing;>;"
    .local p1, "bufferClosingSelector":Lrx/functions/Func0;, "Lrx/functions/Func0<+Lrx/Observable<+TTClosing;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable;->bufferClosingSelector:Lrx/functions/Func0;

    .line 57
    iput p2, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable;->initialCapacity:I

    .line 58
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSingleObservable;, "Lrx/internal/operators/OperatorBufferWithSingleObservable<TT;TTClosing;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorBufferWithSingleObservable;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 5
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
    .line 80
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSingleObservable;, "Lrx/internal/operators/OperatorBufferWithSingleObservable<TT;TTClosing;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/util/List<TT;>;>;"
    :try_start_0
    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable;->bufferClosingSelector:Lrx/functions/Func0;

    invoke-interface {v4}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .local v1, "closing":Lrx/Observable;, "Lrx/Observable<+TTClosing;>;"
    new-instance v0, Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;

    new-instance v4, Lrx/observers/SerializedSubscriber;

    invoke-direct {v4, p1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    invoke-direct {v0, p0, v4}, Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;-><init>(Lrx/internal/operators/OperatorBufferWithSingleObservable;Lrx/Subscriber;)V

    .line 87
    .local v0, "bsub":Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;, "Lrx/internal/operators/OperatorBufferWithSingleObservable<TT;TTClosing;>.BufferingSubscriber;"
    new-instance v2, Lrx/internal/operators/OperatorBufferWithSingleObservable$2;

    invoke-direct {v2, p0, v0}, Lrx/internal/operators/OperatorBufferWithSingleObservable$2;-><init>(Lrx/internal/operators/OperatorBufferWithSingleObservable;Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;)V

    .line 105
    .local v2, "closingSubscriber":Lrx/Subscriber;, "Lrx/Subscriber<TTClosing;>;"
    invoke-virtual {p1, v2}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 106
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 108
    invoke-virtual {v1, v2}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 110
    .end local v0    # "bsub":Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;, "Lrx/internal/operators/OperatorBufferWithSingleObservable<TT;TTClosing;>.BufferingSubscriber;"
    .end local v1    # "closing":Lrx/Observable;, "Lrx/Observable<+TTClosing;>;"
    .end local v2    # "closingSubscriber":Lrx/Subscriber;, "Lrx/Subscriber<TTClosing;>;"
    :goto_0
    return-object v0

    .line 81
    :catch_0
    move-exception v3

    .line 82
    .local v3, "t":Ljava/lang/Throwable;
    invoke-virtual {p1, v3}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 83
    invoke-static {}, Lrx/observers/Subscribers;->empty()Lrx/Subscriber;

    move-result-object v0

    goto :goto_0
.end method
