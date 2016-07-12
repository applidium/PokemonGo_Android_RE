.class Lrx/internal/operators/OnSubscribeRedo$5;
.super Ljava/lang/Object;
.source "OnSubscribeRedo.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeRedo;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OnSubscribeRedo;

.field final synthetic val$arbiter:Lrx/internal/producers/ProducerArbiter;

.field final synthetic val$consumerCapacity:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic val$resumeBoundary:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$subscribeToSource:Lrx/functions/Action0;

.field final synthetic val$worker:Lrx/Scheduler$Worker;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeRedo;Ljava/util/concurrent/atomic/AtomicLong;Lrx/internal/producers/ProducerArbiter;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/Scheduler$Worker;Lrx/functions/Action0;)V
    .locals 0

    .prologue
    .line 358
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$5;, "Lrx/internal/operators/OnSubscribeRedo.5;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeRedo$5;->this$0:Lrx/internal/operators/OnSubscribeRedo;

    iput-object p2, p0, Lrx/internal/operators/OnSubscribeRedo$5;->val$consumerCapacity:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p3, p0, Lrx/internal/operators/OnSubscribeRedo$5;->val$arbiter:Lrx/internal/producers/ProducerArbiter;

    iput-object p4, p0, Lrx/internal/operators/OnSubscribeRedo$5;->val$resumeBoundary:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p5, p0, Lrx/internal/operators/OnSubscribeRedo$5;->val$worker:Lrx/Scheduler$Worker;

    iput-object p6, p0, Lrx/internal/operators/OnSubscribeRedo$5;->val$subscribeToSource:Lrx/functions/Action0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 3
    .param p1, "n"    # J

    .prologue
    .line 362
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$5;, "Lrx/internal/operators/OnSubscribeRedo.5;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 363
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$5;->val$consumerCapacity:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 364
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$5;->val$arbiter:Lrx/internal/producers/ProducerArbiter;

    invoke-virtual {v0, p1, p2}, Lrx/internal/producers/ProducerArbiter;->request(J)V

    .line 365
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$5;->val$resumeBoundary:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$5;->val$worker:Lrx/Scheduler$Worker;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeRedo$5;->val$subscribeToSource:Lrx/functions/Action0;

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 368
    :cond_0
    return-void
.end method
