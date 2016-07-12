.class Lrx/internal/operators/OperatorDebounceWithTime$1;
.super Lrx/Subscriber;
.source "OperatorDebounceWithTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorDebounceWithTime;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field final self:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<*>;"
        }
    .end annotation
.end field

.field final state:Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorDebounceWithTime$DebounceState",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lrx/internal/operators/OperatorDebounceWithTime;

.field final synthetic val$s:Lrx/observers/SerializedSubscriber;

.field final synthetic val$ssub:Lrx/subscriptions/SerialSubscription;

.field final synthetic val$worker:Lrx/Scheduler$Worker;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorDebounceWithTime;Lrx/Subscriber;Lrx/subscriptions/SerialSubscription;Lrx/Scheduler$Worker;Lrx/observers/SerializedSubscriber;)V
    .locals 1

    .prologue
    .line 62
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithTime$1;, "Lrx/internal/operators/OperatorDebounceWithTime.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->this$0:Lrx/internal/operators/OperatorDebounceWithTime;

    iput-object p3, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->val$ssub:Lrx/subscriptions/SerialSubscription;

    iput-object p4, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->val$worker:Lrx/Scheduler$Worker;

    iput-object p5, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 63
    new-instance v0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;

    invoke-direct {v0}, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->state:Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;

    .line 64
    iput-object p0, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->self:Lrx/Subscriber;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 92
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithTime$1;, "Lrx/internal/operators/OperatorDebounceWithTime.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->state:Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;

    iget-object v1, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0, v1, p0}, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->emitAndComplete(Lrx/Subscriber;Lrx/Subscriber;)V

    .line 93
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 85
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithTime$1;, "Lrx/internal/operators/OperatorDebounceWithTime.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0, p1}, Lrx/observers/SerializedSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 86
    invoke-virtual {p0}, Lrx/internal/operators/OperatorDebounceWithTime$1;->unsubscribe()V

    .line 87
    iget-object v0, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->state:Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->clear()V

    .line 88
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithTime$1;, "Lrx/internal/operators/OperatorDebounceWithTime.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->state:Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;

    invoke-virtual {v1, p1}, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->next(Ljava/lang/Object;)I

    move-result v0

    .line 75
    .local v0, "index":I
    iget-object v1, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->val$ssub:Lrx/subscriptions/SerialSubscription;

    iget-object v2, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->val$worker:Lrx/Scheduler$Worker;

    new-instance v3, Lrx/internal/operators/OperatorDebounceWithTime$1$1;

    invoke-direct {v3, p0, v0}, Lrx/internal/operators/OperatorDebounceWithTime$1$1;-><init>(Lrx/internal/operators/OperatorDebounceWithTime$1;I)V

    iget-object v4, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->this$0:Lrx/internal/operators/OperatorDebounceWithTime;

    iget-wide v4, v4, Lrx/internal/operators/OperatorDebounceWithTime;->timeout:J

    iget-object v6, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->this$0:Lrx/internal/operators/OperatorDebounceWithTime;

    iget-object v6, v6, Lrx/internal/operators/OperatorDebounceWithTime;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v6}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 81
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 68
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithTime$1;, "Lrx/internal/operators/OperatorDebounceWithTime.1;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorDebounceWithTime$1;->request(J)V

    .line 69
    return-void
.end method
