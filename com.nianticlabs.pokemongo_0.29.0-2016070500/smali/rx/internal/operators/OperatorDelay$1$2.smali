.class Lrx/internal/operators/OperatorDelay$1$2;
.super Ljava/lang/Object;
.source "OperatorDelay.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorDelay$1;->onError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorDelay$1;

.field final synthetic val$e:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorDelay$1;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 72
    .local p0, "this":Lrx/internal/operators/OperatorDelay$1$2;, "Lrx/internal/operators/OperatorDelay$1.2;"
    iput-object p1, p0, Lrx/internal/operators/OperatorDelay$1$2;->this$1:Lrx/internal/operators/OperatorDelay$1;

    iput-object p2, p0, Lrx/internal/operators/OperatorDelay$1$2;->val$e:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 75
    .local p0, "this":Lrx/internal/operators/OperatorDelay$1$2;, "Lrx/internal/operators/OperatorDelay$1.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDelay$1$2;->this$1:Lrx/internal/operators/OperatorDelay$1;

    iget-boolean v0, v0, Lrx/internal/operators/OperatorDelay$1;->done:Z

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lrx/internal/operators/OperatorDelay$1$2;->this$1:Lrx/internal/operators/OperatorDelay$1;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lrx/internal/operators/OperatorDelay$1;->done:Z

    .line 77
    iget-object v0, p0, Lrx/internal/operators/OperatorDelay$1$2;->this$1:Lrx/internal/operators/OperatorDelay$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorDelay$1;->val$child:Lrx/Subscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorDelay$1$2;->val$e:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 78
    iget-object v0, p0, Lrx/internal/operators/OperatorDelay$1$2;->this$1:Lrx/internal/operators/OperatorDelay$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorDelay$1;->val$worker:Lrx/Scheduler$Worker;

    invoke-virtual {v0}, Lrx/Scheduler$Worker;->unsubscribe()V

    .line 80
    :cond_0
    return-void
.end method
