.class Lrx/internal/operators/OperatorSkipLastTimed$1;
.super Lrx/Subscriber;
.source "OperatorSkipLastTimed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSkipLastTimed;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field private buffer:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lrx/schedulers/Timestamped",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lrx/internal/operators/OperatorSkipLastTimed;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorSkipLastTimed;Lrx/Subscriber;Lrx/Subscriber;)V
    .locals 1

    .prologue
    .line 42
    .local p0, "this":Lrx/internal/operators/OperatorSkipLastTimed$1;, "Lrx/internal/operators/OperatorSkipLastTimed.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSkipLastTimed$1;->this$0:Lrx/internal/operators/OperatorSkipLastTimed;

    iput-object p3, p0, Lrx/internal/operators/OperatorSkipLastTimed$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 44
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorSkipLastTimed$1;->buffer:Ljava/util/Deque;

    return-void
.end method

.method private emitItemsOutOfWindow(J)V
    .locals 7
    .param p1, "now"    # J

    .prologue
    .line 47
    .local p0, "this":Lrx/internal/operators/OperatorSkipLastTimed$1;, "Lrx/internal/operators/OperatorSkipLastTimed.1;"
    iget-object v3, p0, Lrx/internal/operators/OperatorSkipLastTimed$1;->this$0:Lrx/internal/operators/OperatorSkipLastTimed;

    # getter for: Lrx/internal/operators/OperatorSkipLastTimed;->timeInMillis:J
    invoke-static {v3}, Lrx/internal/operators/OperatorSkipLastTimed;->access$000(Lrx/internal/operators/OperatorSkipLastTimed;)J

    move-result-wide v4

    sub-long v0, p1, v4

    .line 48
    .local v0, "limit":J
    :goto_0
    iget-object v3, p0, Lrx/internal/operators/OperatorSkipLastTimed$1;->buffer:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 49
    iget-object v3, p0, Lrx/internal/operators/OperatorSkipLastTimed$1;->buffer:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/schedulers/Timestamped;

    .line 50
    .local v2, "v":Lrx/schedulers/Timestamped;, "Lrx/schedulers/Timestamped<TT;>;"
    invoke-virtual {v2}, Lrx/schedulers/Timestamped;->getTimestampMillis()J

    move-result-wide v4

    cmp-long v3, v4, v0

    if-gez v3, :cond_0

    .line 51
    iget-object v3, p0, Lrx/internal/operators/OperatorSkipLastTimed$1;->buffer:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 52
    iget-object v3, p0, Lrx/internal/operators/OperatorSkipLastTimed$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/schedulers/Timestamped;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 57
    .end local v2    # "v":Lrx/schedulers/Timestamped;, "Lrx/schedulers/Timestamped<TT;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 73
    .local p0, "this":Lrx/internal/operators/OperatorSkipLastTimed$1;, "Lrx/internal/operators/OperatorSkipLastTimed.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipLastTimed$1;->this$0:Lrx/internal/operators/OperatorSkipLastTimed;

    # getter for: Lrx/internal/operators/OperatorSkipLastTimed;->scheduler:Lrx/Scheduler;
    invoke-static {v0}, Lrx/internal/operators/OperatorSkipLastTimed;->access$100(Lrx/internal/operators/OperatorSkipLastTimed;)Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Scheduler;->now()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lrx/internal/operators/OperatorSkipLastTimed$1;->emitItemsOutOfWindow(J)V

    .line 74
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipLastTimed$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 75
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 68
    .local p0, "this":Lrx/internal/operators/OperatorSkipLastTimed$1;, "Lrx/internal/operators/OperatorSkipLastTimed.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipLastTimed$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 69
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
    .line 61
    .local p0, "this":Lrx/internal/operators/OperatorSkipLastTimed$1;, "Lrx/internal/operators/OperatorSkipLastTimed.1;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lrx/internal/operators/OperatorSkipLastTimed$1;->this$0:Lrx/internal/operators/OperatorSkipLastTimed;

    # getter for: Lrx/internal/operators/OperatorSkipLastTimed;->scheduler:Lrx/Scheduler;
    invoke-static {v2}, Lrx/internal/operators/OperatorSkipLastTimed;->access$100(Lrx/internal/operators/OperatorSkipLastTimed;)Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v2}, Lrx/Scheduler;->now()J

    move-result-wide v0

    .line 62
    .local v0, "now":J
    invoke-direct {p0, v0, v1}, Lrx/internal/operators/OperatorSkipLastTimed$1;->emitItemsOutOfWindow(J)V

    .line 63
    iget-object v2, p0, Lrx/internal/operators/OperatorSkipLastTimed$1;->buffer:Ljava/util/Deque;

    new-instance v3, Lrx/schedulers/Timestamped;

    invoke-direct {v3, v0, v1, p1}, Lrx/schedulers/Timestamped;-><init>(JLjava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/Deque;->offerLast(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method
