.class Lrx/internal/operators/OperatorWithLatestFrom$2;
.super Lrx/Subscriber;
.source "OperatorWithLatestFrom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorWithLatestFrom;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field final synthetic this$0:Lrx/internal/operators/OperatorWithLatestFrom;

.field final synthetic val$current:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$s:Lrx/observers/SerializedSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorWithLatestFrom;Ljava/util/concurrent/atomic/AtomicReference;Lrx/observers/SerializedSubscriber;)V
    .locals 0

    .prologue
    .line 78
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFrom$2;, "Lrx/internal/operators/OperatorWithLatestFrom.2;"
    iput-object p1, p0, Lrx/internal/operators/OperatorWithLatestFrom$2;->this$0:Lrx/internal/operators/OperatorWithLatestFrom;

    iput-object p2, p0, Lrx/internal/operators/OperatorWithLatestFrom$2;->val$current:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lrx/internal/operators/OperatorWithLatestFrom$2;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 90
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFrom$2;, "Lrx/internal/operators/OperatorWithLatestFrom.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFrom$2;->val$current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lrx/internal/operators/OperatorWithLatestFrom;->EMPTY:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFrom$2;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0}, Lrx/observers/SerializedSubscriber;->onCompleted()V

    .line 92
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFrom$2;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0}, Lrx/observers/SerializedSubscriber;->unsubscribe()V

    .line 94
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 85
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFrom$2;, "Lrx/internal/operators/OperatorWithLatestFrom.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFrom$2;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0, p1}, Lrx/observers/SerializedSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 86
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFrom$2;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0}, Lrx/observers/SerializedSubscriber;->unsubscribe()V

    .line 87
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFrom$2;, "Lrx/internal/operators/OperatorWithLatestFrom.2;"
    .local p1, "t":Ljava/lang/Object;, "TU;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFrom$2;->val$current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 82
    return-void
.end method
