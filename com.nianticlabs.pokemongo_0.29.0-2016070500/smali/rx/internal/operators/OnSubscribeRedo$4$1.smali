.class Lrx/internal/operators/OnSubscribeRedo$4$1;
.super Lrx/Subscriber;
.source "OnSubscribeRedo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeRedo$4;->call()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OnSubscribeRedo$4;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeRedo$4;Lrx/Subscriber;)V
    .locals 0

    .prologue
    .line 323
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$4$1;, "Lrx/internal/operators/OnSubscribeRedo$4.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeRedo$4$1;->this$1:Lrx/internal/operators/OnSubscribeRedo$4;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 326
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$4$1;, "Lrx/internal/operators/OnSubscribeRedo$4.1;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$4$1;->this$1:Lrx/internal/operators/OnSubscribeRedo$4;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRedo$4;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 327
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 331
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$4$1;, "Lrx/internal/operators/OnSubscribeRedo$4.1;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$4$1;->this$1:Lrx/internal/operators/OnSubscribeRedo$4;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRedo$4;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 332
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Object;

    .prologue
    .line 336
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$4$1;, "Lrx/internal/operators/OnSubscribeRedo$4.1;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$4$1;->this$1:Lrx/internal/operators/OnSubscribeRedo$4;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRedo$4;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$4$1;->this$1:Lrx/internal/operators/OnSubscribeRedo$4;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRedo$4;->val$consumerCapacity:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 341
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$4$1;->this$1:Lrx/internal/operators/OnSubscribeRedo$4;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRedo$4;->val$worker:Lrx/Scheduler$Worker;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeRedo$4$1;->this$1:Lrx/internal/operators/OnSubscribeRedo$4;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeRedo$4;->val$subscribeToSource:Lrx/functions/Action0;

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$4$1;->this$1:Lrx/internal/operators/OnSubscribeRedo$4;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRedo$4;->val$resumeBoundary:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    goto :goto_0
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 2
    .param p1, "producer"    # Lrx/Producer;

    .prologue
    .line 352
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$4$1;, "Lrx/internal/operators/OnSubscribeRedo$4.1;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lrx/Producer;->request(J)V

    .line 353
    return-void
.end method
