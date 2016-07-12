.class Lrx/internal/operators/OperatorDelay$1;
.super Lrx/Subscriber;
.source "OperatorDelay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorDelay;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field done:Z

.field final synthetic this$0:Lrx/internal/operators/OperatorDelay;

.field final synthetic val$child:Lrx/Subscriber;

.field final synthetic val$worker:Lrx/Scheduler$Worker;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorDelay;Lrx/Subscriber;Lrx/Scheduler$Worker;Lrx/Subscriber;)V
    .locals 0

    .prologue
    .line 51
    .local p0, "this":Lrx/internal/operators/OperatorDelay$1;, "Lrx/internal/operators/OperatorDelay.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorDelay$1;->this$0:Lrx/internal/operators/OperatorDelay;

    iput-object p3, p0, Lrx/internal/operators/OperatorDelay$1;->val$worker:Lrx/Scheduler$Worker;

    iput-object p4, p0, Lrx/internal/operators/OperatorDelay$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 5

    .prologue
    .line 57
    .local p0, "this":Lrx/internal/operators/OperatorDelay$1;, "Lrx/internal/operators/OperatorDelay.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDelay$1;->val$worker:Lrx/Scheduler$Worker;

    new-instance v1, Lrx/internal/operators/OperatorDelay$1$1;

    invoke-direct {v1, p0}, Lrx/internal/operators/OperatorDelay$1$1;-><init>(Lrx/internal/operators/OperatorDelay$1;)V

    iget-object v2, p0, Lrx/internal/operators/OperatorDelay$1;->this$0:Lrx/internal/operators/OperatorDelay;

    iget-wide v2, v2, Lrx/internal/operators/OperatorDelay;->delay:J

    iget-object v4, p0, Lrx/internal/operators/OperatorDelay$1;->this$0:Lrx/internal/operators/OperatorDelay;

    iget-object v4, v4, Lrx/internal/operators/OperatorDelay;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    .line 68
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 72
    .local p0, "this":Lrx/internal/operators/OperatorDelay$1;, "Lrx/internal/operators/OperatorDelay.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDelay$1;->val$worker:Lrx/Scheduler$Worker;

    new-instance v1, Lrx/internal/operators/OperatorDelay$1$2;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/OperatorDelay$1$2;-><init>(Lrx/internal/operators/OperatorDelay$1;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 82
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lrx/internal/operators/OperatorDelay$1;, "Lrx/internal/operators/OperatorDelay.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDelay$1;->val$worker:Lrx/Scheduler$Worker;

    new-instance v1, Lrx/internal/operators/OperatorDelay$1$3;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/OperatorDelay$1$3;-><init>(Lrx/internal/operators/OperatorDelay$1;Ljava/lang/Object;)V

    iget-object v2, p0, Lrx/internal/operators/OperatorDelay$1;->this$0:Lrx/internal/operators/OperatorDelay;

    iget-wide v2, v2, Lrx/internal/operators/OperatorDelay;->delay:J

    iget-object v4, p0, Lrx/internal/operators/OperatorDelay$1;->this$0:Lrx/internal/operators/OperatorDelay;

    iget-object v4, v4, Lrx/internal/operators/OperatorDelay;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    .line 96
    return-void
.end method
