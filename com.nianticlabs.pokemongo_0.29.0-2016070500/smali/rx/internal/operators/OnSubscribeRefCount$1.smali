.class Lrx/internal/operators/OnSubscribeRefCount$1;
.super Ljava/lang/Object;
.source "OnSubscribeRefCount.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeRefCount;->onSubscribe(Lrx/Subscriber;Ljava/util/concurrent/atomic/AtomicBoolean;)Lrx/functions/Action1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<",
        "Lrx/Subscription;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OnSubscribeRefCount;

.field final synthetic val$subscriber:Lrx/Subscriber;

.field final synthetic val$writeLocked:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeRefCount;Lrx/Subscriber;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 95
    .local p0, "this":Lrx/internal/operators/OnSubscribeRefCount$1;, "Lrx/internal/operators/OnSubscribeRefCount.1;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeRefCount$1;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    iput-object p2, p0, Lrx/internal/operators/OnSubscribeRefCount$1;->val$subscriber:Lrx/Subscriber;

    iput-object p3, p0, Lrx/internal/operators/OnSubscribeRefCount$1;->val$writeLocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 95
    .local p0, "this":Lrx/internal/operators/OnSubscribeRefCount$1;, "Lrx/internal/operators/OnSubscribeRefCount.1;"
    check-cast p1, Lrx/Subscription;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeRefCount$1;->call(Lrx/Subscription;)V

    return-void
.end method

.method public call(Lrx/Subscription;)V
    .locals 4
    .param p1, "subscription"    # Lrx/Subscription;

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribeRefCount$1;, "Lrx/internal/operators/OnSubscribeRefCount.1;"
    const/4 v3, 0x0

    .line 100
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$1;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    # getter for: Lrx/internal/operators/OnSubscribeRefCount;->baseSubscription:Lrx/subscriptions/CompositeSubscription;
    invoke-static {v0}, Lrx/internal/operators/OnSubscribeRefCount;->access$000(Lrx/internal/operators/OnSubscribeRefCount;)Lrx/subscriptions/CompositeSubscription;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 102
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$1;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeRefCount$1;->val$subscriber:Lrx/Subscriber;

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeRefCount$1;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    # getter for: Lrx/internal/operators/OnSubscribeRefCount;->baseSubscription:Lrx/subscriptions/CompositeSubscription;
    invoke-static {v2}, Lrx/internal/operators/OnSubscribeRefCount;->access$000(Lrx/internal/operators/OnSubscribeRefCount;)Lrx/subscriptions/CompositeSubscription;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/OnSubscribeRefCount;->doSubscribe(Lrx/Subscriber;Lrx/subscriptions/CompositeSubscription;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$1;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    # getter for: Lrx/internal/operators/OnSubscribeRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lrx/internal/operators/OnSubscribeRefCount;->access$100(Lrx/internal/operators/OnSubscribeRefCount;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 106
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$1;->val$writeLocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 108
    return-void

    .line 105
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeRefCount$1;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    # getter for: Lrx/internal/operators/OnSubscribeRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Lrx/internal/operators/OnSubscribeRefCount;->access$100(Lrx/internal/operators/OnSubscribeRefCount;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 106
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeRefCount$1;->val$writeLocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method
