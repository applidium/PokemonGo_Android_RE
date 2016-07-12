.class Lrx/internal/operators/OperatorTimestamp$1;
.super Lrx/Subscriber;
.source "OperatorTimestamp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTimestamp;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field final synthetic this$0:Lrx/internal/operators/OperatorTimestamp;

.field final synthetic val$o:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorTimestamp;Lrx/Subscriber;Lrx/Subscriber;)V
    .locals 0

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/OperatorTimestamp$1;, "Lrx/internal/operators/OperatorTimestamp.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorTimestamp$1;->this$0:Lrx/internal/operators/OperatorTimestamp;

    iput-object p3, p0, Lrx/internal/operators/OperatorTimestamp$1;->val$o:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/OperatorTimestamp$1;, "Lrx/internal/operators/OperatorTimestamp.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTimestamp$1;->val$o:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 46
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 50
    .local p0, "this":Lrx/internal/operators/OperatorTimestamp$1;, "Lrx/internal/operators/OperatorTimestamp.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTimestamp$1;->val$o:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 51
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
    .line 55
    .local p0, "this":Lrx/internal/operators/OperatorTimestamp$1;, "Lrx/internal/operators/OperatorTimestamp.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTimestamp$1;->val$o:Lrx/Subscriber;

    new-instance v1, Lrx/schedulers/Timestamped;

    iget-object v2, p0, Lrx/internal/operators/OperatorTimestamp$1;->this$0:Lrx/internal/operators/OperatorTimestamp;

    # getter for: Lrx/internal/operators/OperatorTimestamp;->scheduler:Lrx/Scheduler;
    invoke-static {v2}, Lrx/internal/operators/OperatorTimestamp;->access$000(Lrx/internal/operators/OperatorTimestamp;)Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v2}, Lrx/Scheduler;->now()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, p1}, Lrx/schedulers/Timestamped;-><init>(JLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 56
    return-void
.end method
