.class Lrx/internal/operators/OperatorBufferWithSingleObservable$2;
.super Lrx/Subscriber;
.source "OperatorBufferWithSingleObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorBufferWithSingleObservable;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TTClosing;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorBufferWithSingleObservable;

.field final synthetic val$bsub:Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorBufferWithSingleObservable;Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;)V
    .locals 0

    .prologue
    .line 87
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSingleObservable$2;, "Lrx/internal/operators/OperatorBufferWithSingleObservable.2;"
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable$2;->this$0:Lrx/internal/operators/OperatorBufferWithSingleObservable;

    iput-object p2, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable$2;->val$bsub:Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 101
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSingleObservable$2;, "Lrx/internal/operators/OperatorBufferWithSingleObservable.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable$2;->val$bsub:Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;->onCompleted()V

    .line 102
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 96
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSingleObservable$2;, "Lrx/internal/operators/OperatorBufferWithSingleObservable.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable$2;->val$bsub:Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 97
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTClosing;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSingleObservable$2;, "Lrx/internal/operators/OperatorBufferWithSingleObservable.2;"
    .local p1, "t":Ljava/lang/Object;, "TTClosing;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable$2;->val$bsub:Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;->emit()V

    .line 92
    return-void
.end method
