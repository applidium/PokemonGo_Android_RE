.class Lrx/internal/operators/OperatorMulticast$2;
.super Ljava/lang/Object;
.source "OperatorMulticast.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorMulticast;->connect(Lrx/functions/Action1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorMulticast;

.field final synthetic val$gs:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorMulticast;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .prologue
    .line 96
    .local p0, "this":Lrx/internal/operators/OperatorMulticast$2;, "Lrx/internal/operators/OperatorMulticast.2;"
    iput-object p1, p0, Lrx/internal/operators/OperatorMulticast$2;->this$0:Lrx/internal/operators/OperatorMulticast;

    iput-object p2, p0, Lrx/internal/operators/OperatorMulticast$2;->val$gs:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    .prologue
    .line 100
    .local p0, "this":Lrx/internal/operators/OperatorMulticast$2;, "Lrx/internal/operators/OperatorMulticast.2;"
    iget-object v1, p0, Lrx/internal/operators/OperatorMulticast$2;->this$0:Lrx/internal/operators/OperatorMulticast;

    iget-object v2, v1, Lrx/internal/operators/OperatorMulticast;->guard:Ljava/lang/Object;

    monitor-enter v2

    .line 101
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorMulticast$2;->this$0:Lrx/internal/operators/OperatorMulticast;

    # getter for: Lrx/internal/operators/OperatorMulticast;->guardedSubscription:Lrx/Subscription;
    invoke-static {v1}, Lrx/internal/operators/OperatorMulticast;->access$000(Lrx/internal/operators/OperatorMulticast;)Lrx/Subscription;

    move-result-object v1

    iget-object v3, p0, Lrx/internal/operators/OperatorMulticast$2;->val$gs:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_1

    .line 102
    iget-object v1, p0, Lrx/internal/operators/OperatorMulticast$2;->this$0:Lrx/internal/operators/OperatorMulticast;

    # getter for: Lrx/internal/operators/OperatorMulticast;->subscription:Lrx/Subscriber;
    invoke-static {v1}, Lrx/internal/operators/OperatorMulticast;->access$100(Lrx/internal/operators/OperatorMulticast;)Lrx/Subscriber;

    move-result-object v0

    .line 103
    .local v0, "s":Lrx/Subscription;
    iget-object v1, p0, Lrx/internal/operators/OperatorMulticast$2;->this$0:Lrx/internal/operators/OperatorMulticast;

    const/4 v3, 0x0

    # setter for: Lrx/internal/operators/OperatorMulticast;->subscription:Lrx/Subscriber;
    invoke-static {v1, v3}, Lrx/internal/operators/OperatorMulticast;->access$102(Lrx/internal/operators/OperatorMulticast;Lrx/Subscriber;)Lrx/Subscriber;

    .line 104
    iget-object v1, p0, Lrx/internal/operators/OperatorMulticast$2;->this$0:Lrx/internal/operators/OperatorMulticast;

    const/4 v3, 0x0

    # setter for: Lrx/internal/operators/OperatorMulticast;->guardedSubscription:Lrx/Subscription;
    invoke-static {v1, v3}, Lrx/internal/operators/OperatorMulticast;->access$002(Lrx/internal/operators/OperatorMulticast;Lrx/Subscription;)Lrx/Subscription;

    .line 105
    iget-object v1, p0, Lrx/internal/operators/OperatorMulticast$2;->this$0:Lrx/internal/operators/OperatorMulticast;

    iget-object v1, v1, Lrx/internal/operators/OperatorMulticast;->connectedSubject:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 108
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 112
    .end local v0    # "s":Lrx/Subscription;
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    :try_start_1
    monitor-exit v2

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
