.class Lrx/internal/operators/OnSubscribeRedo$4;
.super Ljava/lang/Object;
.source "OnSubscribeRedo.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeRedo;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OnSubscribeRedo;

.field final synthetic val$child:Lrx/Subscriber;

.field final synthetic val$consumerCapacity:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic val$restarts:Lrx/Observable;

.field final synthetic val$resumeBoundary:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$subscribeToSource:Lrx/functions/Action0;

.field final synthetic val$worker:Lrx/Scheduler$Worker;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeRedo;Lrx/Observable;Lrx/Subscriber;Ljava/util/concurrent/atomic/AtomicLong;Lrx/Scheduler$Worker;Lrx/functions/Action0;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 320
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$4;, "Lrx/internal/operators/OnSubscribeRedo.4;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeRedo$4;->this$0:Lrx/internal/operators/OnSubscribeRedo;

    iput-object p2, p0, Lrx/internal/operators/OnSubscribeRedo$4;->val$restarts:Lrx/Observable;

    iput-object p3, p0, Lrx/internal/operators/OnSubscribeRedo$4;->val$child:Lrx/Subscriber;

    iput-object p4, p0, Lrx/internal/operators/OnSubscribeRedo$4;->val$consumerCapacity:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p5, p0, Lrx/internal/operators/OnSubscribeRedo$4;->val$worker:Lrx/Scheduler$Worker;

    iput-object p6, p0, Lrx/internal/operators/OnSubscribeRedo$4;->val$subscribeToSource:Lrx/functions/Action0;

    iput-object p7, p0, Lrx/internal/operators/OnSubscribeRedo$4;->val$resumeBoundary:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .prologue
    .line 323
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$4;, "Lrx/internal/operators/OnSubscribeRedo.4;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$4;->val$restarts:Lrx/Observable;

    new-instance v1, Lrx/internal/operators/OnSubscribeRedo$4$1;

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeRedo$4;->val$child:Lrx/Subscriber;

    invoke-direct {v1, p0, v2}, Lrx/internal/operators/OnSubscribeRedo$4$1;-><init>(Lrx/internal/operators/OnSubscribeRedo$4;Lrx/Subscriber;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 355
    return-void
.end method
