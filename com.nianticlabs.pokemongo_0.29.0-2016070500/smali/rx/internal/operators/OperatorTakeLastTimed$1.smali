.class Lrx/internal/operators/OperatorTakeLastTimed$1;
.super Lrx/Subscriber;
.source "OperatorTakeLastTimed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTakeLastTimed;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field final synthetic this$0:Lrx/internal/operators/OperatorTakeLastTimed;

.field final synthetic val$buffer:Ljava/util/Deque;

.field final synthetic val$notification:Lrx/internal/operators/NotificationLite;

.field final synthetic val$producer:Lrx/internal/operators/TakeLastQueueProducer;

.field final synthetic val$subscriber:Lrx/Subscriber;

.field final synthetic val$timestampBuffer:Ljava/util/Deque;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorTakeLastTimed;Lrx/Subscriber;Ljava/util/Deque;Ljava/util/Deque;Lrx/internal/operators/NotificationLite;Lrx/Subscriber;Lrx/internal/operators/TakeLastQueueProducer;)V
    .locals 0

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastTimed$1;, "Lrx/internal/operators/OperatorTakeLastTimed.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->this$0:Lrx/internal/operators/OperatorTakeLastTimed;

    iput-object p3, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$buffer:Ljava/util/Deque;

    iput-object p4, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$timestampBuffer:Ljava/util/Deque;

    iput-object p5, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$notification:Lrx/internal/operators/NotificationLite;

    iput-object p6, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$subscriber:Lrx/Subscriber;

    iput-object p7, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$producer:Lrx/internal/operators/TakeLastQueueProducer;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 103
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastTimed$1;, "Lrx/internal/operators/OperatorTakeLastTimed.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->this$0:Lrx/internal/operators/OperatorTakeLastTimed;

    # getter for: Lrx/internal/operators/OperatorTakeLastTimed;->scheduler:Lrx/Scheduler;
    invoke-static {v0}, Lrx/internal/operators/OperatorTakeLastTimed;->access$200(Lrx/internal/operators/OperatorTakeLastTimed;)Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Scheduler;->now()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorTakeLastTimed$1;->runEvictionPolicy(J)V

    .line 104
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$timestampBuffer:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 105
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$buffer:Ljava/util/Deque;

    iget-object v1, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$notification:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$producer:Lrx/internal/operators/TakeLastQueueProducer;

    invoke-virtual {v0}, Lrx/internal/operators/TakeLastQueueProducer;->startEmitting()V

    .line 107
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 96
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastTimed$1;, "Lrx/internal/operators/OperatorTakeLastTimed.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$timestampBuffer:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 97
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$buffer:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 98
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 99
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastTimed$1;, "Lrx/internal/operators/OperatorTakeLastTimed.1;"
    .local p1, "args":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->this$0:Lrx/internal/operators/OperatorTakeLastTimed;

    # getter for: Lrx/internal/operators/OperatorTakeLastTimed;->scheduler:Lrx/Scheduler;
    invoke-static {v2}, Lrx/internal/operators/OperatorTakeLastTimed;->access$200(Lrx/internal/operators/OperatorTakeLastTimed;)Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v2}, Lrx/Scheduler;->now()J

    move-result-wide v0

    .line 89
    .local v0, "t":J
    iget-object v2, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$timestampBuffer:Ljava/util/Deque;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v2, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$buffer:Ljava/util/Deque;

    iget-object v3, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$notification:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorTakeLastTimed$1;->runEvictionPolicy(J)V

    .line 92
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 83
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastTimed$1;, "Lrx/internal/operators/OperatorTakeLastTimed.1;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorTakeLastTimed$1;->request(J)V

    .line 84
    return-void
.end method

.method protected runEvictionPolicy(J)V
    .locals 5
    .param p1, "now"    # J

    .prologue
    .line 63
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastTimed$1;, "Lrx/internal/operators/OperatorTakeLastTimed.1;"
    :goto_0
    iget-object v2, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->this$0:Lrx/internal/operators/OperatorTakeLastTimed;

    # getter for: Lrx/internal/operators/OperatorTakeLastTimed;->count:I
    invoke-static {v2}, Lrx/internal/operators/OperatorTakeLastTimed;->access$000(Lrx/internal/operators/OperatorTakeLastTimed;)I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$buffer:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    iget-object v3, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->this$0:Lrx/internal/operators/OperatorTakeLastTimed;

    # getter for: Lrx/internal/operators/OperatorTakeLastTimed;->count:I
    invoke-static {v3}, Lrx/internal/operators/OperatorTakeLastTimed;->access$000(Lrx/internal/operators/OperatorTakeLastTimed;)I

    move-result v3

    if-le v2, v3, :cond_0

    .line 64
    iget-object v2, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$timestampBuffer:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    .line 65
    iget-object v2, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$buffer:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    goto :goto_0

    .line 68
    :cond_0
    :goto_1
    iget-object v2, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$buffer:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 69
    iget-object v2, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$timestampBuffer:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 70
    .local v0, "v":J
    iget-object v2, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->this$0:Lrx/internal/operators/OperatorTakeLastTimed;

    # getter for: Lrx/internal/operators/OperatorTakeLastTimed;->ageMillis:J
    invoke-static {v2}, Lrx/internal/operators/OperatorTakeLastTimed;->access$100(Lrx/internal/operators/OperatorTakeLastTimed;)J

    move-result-wide v2

    sub-long v2, p1, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 71
    iget-object v2, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$timestampBuffer:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    .line 72
    iget-object v2, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$buffer:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    goto :goto_1

    .line 77
    .end local v0    # "v":J
    :cond_1
    return-void
.end method
