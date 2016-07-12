.class Lrx/internal/operators/OnSubscribeRefCount$2;
.super Lrx/Subscriber;
.source "OnSubscribeRefCount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeRefCount;->doSubscribe(Lrx/Subscriber;Lrx/subscriptions/CompositeSubscription;)V
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
.field final synthetic this$0:Lrx/internal/operators/OnSubscribeRefCount;

.field final synthetic val$currentBase:Lrx/subscriptions/CompositeSubscription;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeRefCount;Lrx/Subscriber;Lrx/Subscriber;Lrx/subscriptions/CompositeSubscription;)V
    .locals 0

    .prologue
    .line 116
    .local p0, "this":Lrx/internal/operators/OnSubscribeRefCount$2;, "Lrx/internal/operators/OnSubscribeRefCount.2;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    iput-object p3, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->val$subscriber:Lrx/Subscriber;

    iput-object p4, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->val$currentBase:Lrx/subscriptions/CompositeSubscription;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method cleanup()V
    .locals 2

    .prologue
    .line 134
    .local p0, "this":Lrx/internal/operators/OnSubscribeRefCount$2;, "Lrx/internal/operators/OnSubscribeRefCount.2;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    # getter for: Lrx/internal/operators/OnSubscribeRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lrx/internal/operators/OnSubscribeRefCount;->access$100(Lrx/internal/operators/OnSubscribeRefCount;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 136
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    # getter for: Lrx/internal/operators/OnSubscribeRefCount;->baseSubscription:Lrx/subscriptions/CompositeSubscription;
    invoke-static {v0}, Lrx/internal/operators/OnSubscribeRefCount;->access$000(Lrx/internal/operators/OnSubscribeRefCount;)Lrx/subscriptions/CompositeSubscription;

    move-result-object v0

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->val$currentBase:Lrx/subscriptions/CompositeSubscription;

    if-ne v0, v1, :cond_0

    .line 137
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    # getter for: Lrx/internal/operators/OnSubscribeRefCount;->baseSubscription:Lrx/subscriptions/CompositeSubscription;
    invoke-static {v0}, Lrx/internal/operators/OnSubscribeRefCount;->access$000(Lrx/internal/operators/OnSubscribeRefCount;)Lrx/subscriptions/CompositeSubscription;

    move-result-object v0

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 138
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    new-instance v1, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v1}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    # setter for: Lrx/internal/operators/OnSubscribeRefCount;->baseSubscription:Lrx/subscriptions/CompositeSubscription;
    invoke-static {v0, v1}, Lrx/internal/operators/OnSubscribeRefCount;->access$002(Lrx/internal/operators/OnSubscribeRefCount;Lrx/subscriptions/CompositeSubscription;)Lrx/subscriptions/CompositeSubscription;

    .line 139
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    # getter for: Lrx/internal/operators/OnSubscribeRefCount;->subscriptionCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lrx/internal/operators/OnSubscribeRefCount;->access$200(Lrx/internal/operators/OnSubscribeRefCount;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    # getter for: Lrx/internal/operators/OnSubscribeRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lrx/internal/operators/OnSubscribeRefCount;->access$100(Lrx/internal/operators/OnSubscribeRefCount;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 144
    return-void

    .line 142
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    # getter for: Lrx/internal/operators/OnSubscribeRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Lrx/internal/operators/OnSubscribeRefCount;->access$100(Lrx/internal/operators/OnSubscribeRefCount;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 128
    .local p0, "this":Lrx/internal/operators/OnSubscribeRefCount$2;, "Lrx/internal/operators/OnSubscribeRefCount.2;"
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeRefCount$2;->cleanup()V

    .line 129
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 130
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 119
    .local p0, "this":Lrx/internal/operators/OnSubscribeRefCount$2;, "Lrx/internal/operators/OnSubscribeRefCount.2;"
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeRefCount$2;->cleanup()V

    .line 120
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 121
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lrx/internal/operators/OnSubscribeRefCount$2;, "Lrx/internal/operators/OnSubscribeRefCount.2;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 125
    return-void
.end method
