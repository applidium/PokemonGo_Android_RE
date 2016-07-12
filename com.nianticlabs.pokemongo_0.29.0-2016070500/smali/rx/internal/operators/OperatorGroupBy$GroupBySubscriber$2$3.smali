.class Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$3;
.super Ljava/lang/Object;
.source "OperatorGroupBy.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;

.field final synthetic val$once:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 251
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$3;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2.3;"
    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$3;->this$1:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;

    iput-object p2, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$3;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .prologue
    .line 255
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$3;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2.3;"
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$3;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$3;->this$1:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;

    iget-object v0, v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;->this$0:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$3;->this$1:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;

    iget-object v1, v1, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;->val$key:Ljava/lang/Object;

    # invokes: Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->cleanupGroup(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->access$400(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;Ljava/lang/Object;)V

    .line 259
    :cond_0
    return-void
.end method
