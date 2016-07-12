.class Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;
.super Lrx/Subscriber;
.source "OperatorTimeoutWithSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTimeoutWithSelector$1;->call(Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;Ljava/lang/Long;Lrx/Scheduler$Worker;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TU;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorTimeoutWithSelector$1;

.field final synthetic val$seqId:Ljava/lang/Long;

.field final synthetic val$timeoutSubscriber:Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorTimeoutWithSelector$1;Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 56
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;, "Lrx/internal/operators/OperatorTimeoutWithSelector$1.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;->this$1:Lrx/internal/operators/OperatorTimeoutWithSelector$1;

    iput-object p2, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;->val$timeoutSubscriber:Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    iput-object p3, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;->val$seqId:Ljava/lang/Long;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 4

    .prologue
    .line 60
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;, "Lrx/internal/operators/OperatorTimeoutWithSelector$1.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;->val$timeoutSubscriber:Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;->val$seqId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->onTimeout(J)V

    .line 61
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 65
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;, "Lrx/internal/operators/OperatorTimeoutWithSelector$1.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;->val$timeoutSubscriber:Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 66
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;, "Lrx/internal/operators/OperatorTimeoutWithSelector$1.1;"
    .local p1, "t":Ljava/lang/Object;, "TU;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;->val$timeoutSubscriber:Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;->val$seqId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->onTimeout(J)V

    .line 71
    return-void
.end method
