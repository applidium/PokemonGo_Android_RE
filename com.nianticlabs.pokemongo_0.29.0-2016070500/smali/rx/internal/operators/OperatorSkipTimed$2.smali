.class Lrx/internal/operators/OperatorSkipTimed$2;
.super Lrx/Subscriber;
.source "OperatorSkipTimed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSkipTimed;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field final synthetic this$0:Lrx/internal/operators/OperatorSkipTimed;

.field final synthetic val$child:Lrx/Subscriber;

.field final synthetic val$gate:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorSkipTimed;Lrx/Subscriber;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/Subscriber;)V
    .locals 0

    .prologue
    .line 52
    .local p0, "this":Lrx/internal/operators/OperatorSkipTimed$2;, "Lrx/internal/operators/OperatorSkipTimed.2;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSkipTimed$2;->this$0:Lrx/internal/operators/OperatorSkipTimed;

    iput-object p3, p0, Lrx/internal/operators/OperatorSkipTimed$2;->val$gate:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lrx/internal/operators/OperatorSkipTimed$2;->val$child:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 73
    .local p0, "this":Lrx/internal/operators/OperatorSkipTimed$2;, "Lrx/internal/operators/OperatorSkipTimed.2;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipTimed$2;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-virtual {p0}, Lrx/internal/operators/OperatorSkipTimed$2;->unsubscribe()V

    .line 77
    return-void

    .line 75
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lrx/internal/operators/OperatorSkipTimed$2;->unsubscribe()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 64
    .local p0, "this":Lrx/internal/operators/OperatorSkipTimed$2;, "Lrx/internal/operators/OperatorSkipTimed.2;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipTimed$2;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-virtual {p0}, Lrx/internal/operators/OperatorSkipTimed$2;->unsubscribe()V

    .line 68
    return-void

    .line 66
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lrx/internal/operators/OperatorSkipTimed$2;->unsubscribe()V

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lrx/internal/operators/OperatorSkipTimed$2;, "Lrx/internal/operators/OperatorSkipTimed.2;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipTimed$2;->val$gate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipTimed$2;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 59
    :cond_0
    return-void
.end method
