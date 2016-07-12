.class Lrx/internal/operators/OperatorBufferWithStartEndObservable$1;
.super Lrx/Subscriber;
.source "OperatorBufferWithStartEndObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorBufferWithStartEndObservable;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TTOpening;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorBufferWithStartEndObservable;

.field final synthetic val$bsub:Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorBufferWithStartEndObservable;Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;)V
    .locals 0

    .prologue
    .line 71
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithStartEndObservable$1;, "Lrx/internal/operators/OperatorBufferWithStartEndObservable.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$1;->this$0:Lrx/internal/operators/OperatorBufferWithStartEndObservable;

    iput-object p2, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$1;->val$bsub:Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 85
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithStartEndObservable$1;, "Lrx/internal/operators/OperatorBufferWithStartEndObservable.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$1;->val$bsub:Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->onCompleted()V

    .line 86
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 80
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithStartEndObservable$1;, "Lrx/internal/operators/OperatorBufferWithStartEndObservable.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$1;->val$bsub:Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 81
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTOpening;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithStartEndObservable$1;, "Lrx/internal/operators/OperatorBufferWithStartEndObservable.1;"
    .local p1, "t":Ljava/lang/Object;, "TTOpening;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$1;->val$bsub:Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->startBuffer(Ljava/lang/Object;)V

    .line 76
    return-void
.end method
