.class Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$2;
.super Lrx/Subscriber;
.source "OperatorGroupBy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;->call(Lrx/Subscriber;)V
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
.field final synthetic this$1:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;

.field final synthetic val$o:Lrx/Subscriber;

.field final synthetic val$once:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;Lrx/Subscriber;Lrx/Subscriber;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 261
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$2;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2.2;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$2;->this$1:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;

    iput-object p3, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$2;->val$o:Lrx/Subscriber;

    iput-object p4, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$2;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    .prologue
    .line 267
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$2;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$2;->val$o:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 269
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$2;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$2;->this$1:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;

    iget-object v0, v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;->this$0:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$2;->this$1:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;

    iget-object v1, v1, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;->val$key:Ljava/lang/Object;

    # invokes: Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->cleanupGroup(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->access$400(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;Ljava/lang/Object;)V

    .line 273
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 277
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$2;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$2;->val$o:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 279
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$2;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$2;->this$1:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;

    iget-object v0, v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;->this$0:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$2;->this$1:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;

    iget-object v1, v1, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;->val$key:Ljava/lang/Object;

    # invokes: Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->cleanupGroup(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->access$400(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;Ljava/lang/Object;)V

    .line 283
    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$2;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2.2;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$2;->val$o:Lrx/Subscriber;

    iget-object v2, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$2;->this$1:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;

    iget-object v2, v2, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;->this$0:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    iget-object v2, v2, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->elementSelector:Lrx/functions/Func1;

    invoke-interface {v2, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$2;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 264
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$2;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2.2;"
    return-void
.end method
