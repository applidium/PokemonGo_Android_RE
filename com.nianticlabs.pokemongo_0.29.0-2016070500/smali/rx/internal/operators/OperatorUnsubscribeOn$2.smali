.class Lrx/internal/operators/OperatorUnsubscribeOn$2;
.super Ljava/lang/Object;
.source "OperatorUnsubscribeOn.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorUnsubscribeOn;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorUnsubscribeOn;

.field final synthetic val$parent:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorUnsubscribeOn;Lrx/Subscriber;)V
    .locals 0

    .prologue
    .line 57
    .local p0, "this":Lrx/internal/operators/OperatorUnsubscribeOn$2;, "Lrx/internal/operators/OperatorUnsubscribeOn.2;"
    iput-object p1, p0, Lrx/internal/operators/OperatorUnsubscribeOn$2;->this$0:Lrx/internal/operators/OperatorUnsubscribeOn;

    iput-object p2, p0, Lrx/internal/operators/OperatorUnsubscribeOn$2;->val$parent:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 61
    .local p0, "this":Lrx/internal/operators/OperatorUnsubscribeOn$2;, "Lrx/internal/operators/OperatorUnsubscribeOn.2;"
    iget-object v1, p0, Lrx/internal/operators/OperatorUnsubscribeOn$2;->this$0:Lrx/internal/operators/OperatorUnsubscribeOn;

    # getter for: Lrx/internal/operators/OperatorUnsubscribeOn;->scheduler:Lrx/Scheduler;
    invoke-static {v1}, Lrx/internal/operators/OperatorUnsubscribeOn;->access$000(Lrx/internal/operators/OperatorUnsubscribeOn;)Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v1}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    .line 62
    .local v0, "inner":Lrx/Scheduler$Worker;
    new-instance v1, Lrx/internal/operators/OperatorUnsubscribeOn$2$1;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/OperatorUnsubscribeOn$2$1;-><init>(Lrx/internal/operators/OperatorUnsubscribeOn$2;Lrx/Scheduler$Worker;)V

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 70
    return-void
.end method
