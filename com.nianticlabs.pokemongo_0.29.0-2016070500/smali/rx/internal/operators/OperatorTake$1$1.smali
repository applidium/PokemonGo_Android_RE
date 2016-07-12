.class Lrx/internal/operators/OperatorTake$1$1;
.super Ljava/lang/Object;
.source "OperatorTake.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTake$1;->setProducer(Lrx/Producer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic this$1:Lrx/internal/operators/OperatorTake$1;

.field final synthetic val$producer:Lrx/Producer;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorTake$1;Lrx/Producer;)V
    .locals 4

    .prologue
    .line 82
    .local p0, "this":Lrx/internal/operators/OperatorTake$1$1;, "Lrx/internal/operators/OperatorTake$1.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorTake$1$1;->this$1:Lrx/internal/operators/OperatorTake$1;

    iput-object p2, p0, Lrx/internal/operators/OperatorTake$1$1;->val$producer:Lrx/Producer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lrx/internal/operators/OperatorTake$1$1;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 11
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorTake$1$1;, "Lrx/internal/operators/OperatorTake$1.1;"
    const-wide/16 v8, 0x0

    .line 89
    cmp-long v4, p1, v8

    if-lez v4, :cond_1

    iget-object v4, p0, Lrx/internal/operators/OperatorTake$1$1;->this$1:Lrx/internal/operators/OperatorTake$1;

    iget-boolean v4, v4, Lrx/internal/operators/OperatorTake$1;->completed:Z

    if-nez v4, :cond_1

    .line 93
    :cond_0
    iget-object v4, p0, Lrx/internal/operators/OperatorTake$1$1;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 94
    .local v2, "r":J
    iget-object v4, p0, Lrx/internal/operators/OperatorTake$1$1;->this$1:Lrx/internal/operators/OperatorTake$1;

    iget-object v4, v4, Lrx/internal/operators/OperatorTake$1;->this$0:Lrx/internal/operators/OperatorTake;

    iget v4, v4, Lrx/internal/operators/OperatorTake;->limit:I

    int-to-long v4, v4

    sub-long/2addr v4, v2

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 95
    .local v0, "c":J
    cmp-long v4, v0, v8

    if-nez v4, :cond_2

    .line 103
    .end local v0    # "c":J
    .end local v2    # "r":J
    :cond_1
    :goto_0
    return-void

    .line 97
    .restart local v0    # "c":J
    .restart local v2    # "r":J
    :cond_2
    iget-object v4, p0, Lrx/internal/operators/OperatorTake$1$1;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    add-long v6, v2, v0

    invoke-virtual {v4, v2, v3, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 98
    iget-object v4, p0, Lrx/internal/operators/OperatorTake$1$1;->val$producer:Lrx/Producer;

    invoke-interface {v4, v0, v1}, Lrx/Producer;->request(J)V

    goto :goto_0
.end method
