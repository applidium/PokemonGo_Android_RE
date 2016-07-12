.class Lrx/internal/operators/OperatorThrottleFirst$1;
.super Lrx/Subscriber;
.source "OperatorThrottleFirst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorThrottleFirst;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field private lastOnNext:J

.field final synthetic this$0:Lrx/internal/operators/OperatorThrottleFirst;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorThrottleFirst;Lrx/Subscriber;Lrx/Subscriber;)V
    .locals 2

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/OperatorThrottleFirst$1;, "Lrx/internal/operators/OperatorThrottleFirst.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorThrottleFirst$1;->this$0:Lrx/internal/operators/OperatorThrottleFirst;

    iput-object p3, p0, Lrx/internal/operators/OperatorThrottleFirst$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lrx/internal/operators/OperatorThrottleFirst$1;->lastOnNext:J

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lrx/internal/operators/OperatorThrottleFirst$1;, "Lrx/internal/operators/OperatorThrottleFirst.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorThrottleFirst$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 59
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 63
    .local p0, "this":Lrx/internal/operators/OperatorThrottleFirst$1;, "Lrx/internal/operators/OperatorThrottleFirst.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorThrottleFirst$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 64
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lrx/internal/operators/OperatorThrottleFirst$1;, "Lrx/internal/operators/OperatorThrottleFirst.1;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lrx/internal/operators/OperatorThrottleFirst$1;->this$0:Lrx/internal/operators/OperatorThrottleFirst;

    # getter for: Lrx/internal/operators/OperatorThrottleFirst;->scheduler:Lrx/Scheduler;
    invoke-static {v2}, Lrx/internal/operators/OperatorThrottleFirst;->access$000(Lrx/internal/operators/OperatorThrottleFirst;)Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v2}, Lrx/Scheduler;->now()J

    move-result-wide v0

    .line 50
    .local v0, "now":J
    iget-wide v2, p0, Lrx/internal/operators/OperatorThrottleFirst$1;->lastOnNext:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lrx/internal/operators/OperatorThrottleFirst$1;->lastOnNext:J

    sub-long v2, v0, v2

    iget-object v4, p0, Lrx/internal/operators/OperatorThrottleFirst$1;->this$0:Lrx/internal/operators/OperatorThrottleFirst;

    # getter for: Lrx/internal/operators/OperatorThrottleFirst;->timeInMilliseconds:J
    invoke-static {v4}, Lrx/internal/operators/OperatorThrottleFirst;->access$100(Lrx/internal/operators/OperatorThrottleFirst;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 51
    :cond_0
    iput-wide v0, p0, Lrx/internal/operators/OperatorThrottleFirst$1;->lastOnNext:J

    .line 52
    iget-object v2, p0, Lrx/internal/operators/OperatorThrottleFirst$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v2, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 54
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 44
    .local p0, "this":Lrx/internal/operators/OperatorThrottleFirst$1;, "Lrx/internal/operators/OperatorThrottleFirst.1;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorThrottleFirst$1;->request(J)V

    .line 45
    return-void
.end method
