.class Lrx/internal/operators/OperatorSampleWithObservable$1;
.super Lrx/Subscriber;
.source "OperatorSampleWithObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSampleWithObservable;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TU;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorSampleWithObservable;

.field final synthetic val$s:Lrx/observers/SerializedSubscriber;

.field final synthetic val$value:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorSampleWithObservable;Lrx/Subscriber;Ljava/util/concurrent/atomic/AtomicReference;Lrx/observers/SerializedSubscriber;)V
    .locals 0

    .prologue
    .line 47
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithObservable$1;, "Lrx/internal/operators/OperatorSampleWithObservable.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSampleWithObservable$1;->this$0:Lrx/internal/operators/OperatorSampleWithObservable;

    iput-object p3, p0, Lrx/internal/operators/OperatorSampleWithObservable$1;->val$value:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lrx/internal/operators/OperatorSampleWithObservable$1;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 66
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithObservable$1;, "Lrx/internal/operators/OperatorSampleWithObservable.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSampleWithObservable$1;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0}, Lrx/observers/SerializedSubscriber;->onCompleted()V

    .line 67
    invoke-virtual {p0}, Lrx/internal/operators/OperatorSampleWithObservable$1;->unsubscribe()V

    .line 68
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 60
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithObservable$1;, "Lrx/internal/operators/OperatorSampleWithObservable.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSampleWithObservable$1;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0, p1}, Lrx/observers/SerializedSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 61
    invoke-virtual {p0}, Lrx/internal/operators/OperatorSampleWithObservable$1;->unsubscribe()V

    .line 62
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithObservable$1;, "Lrx/internal/operators/OperatorSampleWithObservable.1;"
    .local p1, "t":Ljava/lang/Object;, "TU;"
    iget-object v2, p0, Lrx/internal/operators/OperatorSampleWithObservable$1;->val$value:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lrx/internal/operators/OperatorSampleWithObservable;->EMPTY_TOKEN:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 51
    .local v0, "localValue":Ljava/lang/Object;
    sget-object v2, Lrx/internal/operators/OperatorSampleWithObservable;->EMPTY_TOKEN:Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    .line 53
    move-object v1, v0

    .line 54
    .local v1, "v":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lrx/internal/operators/OperatorSampleWithObservable$1;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v2, v1}, Lrx/observers/SerializedSubscriber;->onNext(Ljava/lang/Object;)V

    .line 56
    .end local v1    # "v":Ljava/lang/Object;, "TT;"
    :cond_0
    return-void
.end method
