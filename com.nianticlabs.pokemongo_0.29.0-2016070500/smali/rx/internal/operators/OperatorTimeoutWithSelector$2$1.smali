.class Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;
.super Lrx/Subscriber;
.source "OperatorTimeoutWithSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTimeoutWithSelector$2;->call(Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;Ljava/lang/Long;Ljava/lang/Object;Lrx/Scheduler$Worker;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorTimeoutWithSelector$2;

.field final synthetic val$seqId:Ljava/lang/Long;

.field final synthetic val$timeoutSubscriber:Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorTimeoutWithSelector$2;Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 92
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;, "Lrx/internal/operators/OperatorTimeoutWithSelector$2.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;->this$1:Lrx/internal/operators/OperatorTimeoutWithSelector$2;

    iput-object p2, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;->val$timeoutSubscriber:Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    iput-object p3, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;->val$seqId:Ljava/lang/Long;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 4

    .prologue
    .line 96
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;, "Lrx/internal/operators/OperatorTimeoutWithSelector$2.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;->val$timeoutSubscriber:Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;->val$seqId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->onTimeout(J)V

    .line 97
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 101
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;, "Lrx/internal/operators/OperatorTimeoutWithSelector$2.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;->val$timeoutSubscriber:Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 102
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;, "Lrx/internal/operators/OperatorTimeoutWithSelector$2.1;"
    .local p1, "t":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;->val$timeoutSubscriber:Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;->val$seqId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->onTimeout(J)V

    .line 107
    return-void
.end method
