.class Lrx/internal/operators/OperatorOnBackpressureDrop$1;
.super Ljava/lang/Object;
.source "OperatorOnBackpressureDrop.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorOnBackpressureDrop;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorOnBackpressureDrop;

.field final synthetic val$requested:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorOnBackpressureDrop;Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 0

    .prologue
    .line 55
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureDrop$1;, "Lrx/internal/operators/OperatorOnBackpressureDrop.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorOnBackpressureDrop$1;->this$0:Lrx/internal/operators/OperatorOnBackpressureDrop;

    iput-object p2, p0, Lrx/internal/operators/OperatorOnBackpressureDrop$1;->val$requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureDrop$1;, "Lrx/internal/operators/OperatorOnBackpressureDrop.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureDrop$1;->val$requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 60
    return-void
.end method
