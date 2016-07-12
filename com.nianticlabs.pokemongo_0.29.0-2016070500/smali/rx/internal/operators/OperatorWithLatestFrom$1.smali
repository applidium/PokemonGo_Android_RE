.class Lrx/internal/operators/OperatorWithLatestFrom$1;
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
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorWithLatestFrom;

.field final synthetic val$current:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$s:Lrx/observers/SerializedSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorWithLatestFrom;Lrx/Subscriber;ZLjava/util/concurrent/atomic/AtomicReference;Lrx/observers/SerializedSubscriber;)V
    .locals 0
    .param p3, "x1"    # Z

    .prologue
    .line 49
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFrom$1;, "Lrx/internal/operators/OperatorWithLatestFrom.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorWithLatestFrom$1;->this$0:Lrx/internal/operators/OperatorWithLatestFrom;

    iput-object p4, p0, Lrx/internal/operators/OperatorWithLatestFrom$1;->val$current:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p5, p0, Lrx/internal/operators/OperatorWithLatestFrom$1;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-direct {p0, p2, p3}, Lrx/Subscriber;-><init>(Lrx/Subscriber;Z)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 73
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFrom$1;, "Lrx/internal/operators/OperatorWithLatestFrom.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFrom$1;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0}, Lrx/observers/SerializedSubscriber;->onCompleted()V

    .line 74
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFrom$1;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0}, Lrx/observers/SerializedSubscriber;->unsubscribe()V

    .line 75
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 68
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFrom$1;, "Lrx/internal/operators/OperatorWithLatestFrom.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFrom$1;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0, p1}, Lrx/observers/SerializedSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 69
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFrom$1;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0}, Lrx/observers/SerializedSubscriber;->unsubscribe()V

    .line 70
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFrom$1;, "Lrx/internal/operators/OperatorWithLatestFrom.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lrx/internal/operators/OperatorWithLatestFrom$1;->val$current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 53
    .local v1, "o":Ljava/lang/Object;
    sget-object v4, Lrx/internal/operators/OperatorWithLatestFrom;->EMPTY:Ljava/lang/Object;

    if-eq v1, v4, :cond_0

    .line 56
    move-object v3, v1

    .line 57
    .local v3, "u":Ljava/lang/Object;, "TU;"
    :try_start_0
    iget-object v4, p0, Lrx/internal/operators/OperatorWithLatestFrom$1;->this$0:Lrx/internal/operators/OperatorWithLatestFrom;

    iget-object v4, v4, Lrx/internal/operators/OperatorWithLatestFrom;->resultSelector:Lrx/functions/Func2;

    invoke-interface {v4, p1, v3}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 59
    .local v2, "result":Ljava/lang/Object;, "TR;"
    iget-object v4, p0, Lrx/internal/operators/OperatorWithLatestFrom$1;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v4, v2}, Lrx/observers/SerializedSubscriber;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v2    # "result":Ljava/lang/Object;, "TR;"
    .end local v3    # "u":Ljava/lang/Object;, "TU;"
    :cond_0
    :goto_0
    return-void

    .line 60
    .restart local v3    # "u":Ljava/lang/Object;, "TU;"
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorWithLatestFrom$1;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
