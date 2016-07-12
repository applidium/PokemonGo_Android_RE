.class Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$1;
.super Ljava/lang/Object;
.source "OperatorGroupBy.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;-><init>(Lrx/functions/Func1;Lrx/functions/Func1;Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;)V
    .locals 0

    .prologue
    .line 95
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$1;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$1;->this$0:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 99
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$1;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber.1;"
    sget-object v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->WIP_FOR_UNSUBSCRIBE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    iget-object v1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$1;->this$0:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    iget-object v1, v1, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->self:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$1;->this$0:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    iget-object v0, v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->self:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->unsubscribe()V

    .line 102
    :cond_0
    return-void
.end method
