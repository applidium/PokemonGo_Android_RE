.class Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSubscribeOn$1$1$1;->setProducer(Lrx/Producer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lrx/internal/operators/OperatorSubscribeOn$1$1$1;

.field final synthetic val$producer:Lrx/Producer;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorSubscribeOn$1$1$1;Lrx/Producer;)V
    .locals 0

    .prologue
    .line 81
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1;, "Lrx/internal/operators/OperatorSubscribeOn$1$1$1.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1;->this$3:Lrx/internal/operators/OperatorSubscribeOn$1$1$1;

    iput-object p2, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1;->val$producer:Lrx/Producer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 3
    .param p1, "n"    # J

    .prologue
    .line 85
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1;, "Lrx/internal/operators/OperatorSubscribeOn$1$1$1.1;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1;->this$3:Lrx/internal/operators/OperatorSubscribeOn$1$1$1;

    iget-object v1, v1, Lrx/internal/operators/OperatorSubscribeOn$1$1$1;->val$t:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1;->val$producer:Lrx/Producer;

    invoke-interface {v0, p1, p2}, Lrx/Producer;->request(J)V

    .line 98
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1;->this$3:Lrx/internal/operators/OperatorSubscribeOn$1$1$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorSubscribeOn$1$1$1;->this$2:Lrx/internal/operators/OperatorSubscribeOn$1$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorSubscribeOn$1$1;->this$1:Lrx/internal/operators/OperatorSubscribeOn$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorSubscribeOn$1;->val$inner:Lrx/Scheduler$Worker;

    new-instance v1, Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1$1;

    invoke-direct {v1, p0, p1, p2}, Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1$1;-><init>(Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1;J)V

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    goto :goto_0
.end method
