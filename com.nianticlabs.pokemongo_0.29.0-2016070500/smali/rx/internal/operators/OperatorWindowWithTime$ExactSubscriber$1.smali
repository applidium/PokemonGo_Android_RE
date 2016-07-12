.class Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber$1;
.super Ljava/lang/Object;
.source "OperatorWindowWithTime.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;-><init>(Lrx/internal/operators/OperatorWindowWithTime;Lrx/Subscriber;Lrx/Scheduler$Worker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;

.field final synthetic val$this$0:Lrx/internal/operators/OperatorWindowWithTime;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;Lrx/internal/operators/OperatorWindowWithTime;)V
    .locals 0

    .prologue
    .line 122
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber$1;, "Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber$1;->this$1:Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;

    iput-object p2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber$1;->val$this$0:Lrx/internal/operators/OperatorWindowWithTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .prologue
    .line 126
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber$1;, "Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber$1;->this$1:Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;

    iget-object v0, v0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->state:Lrx/internal/operators/OperatorWindowWithTime$State;

    iget-object v0, v0, Lrx/internal/operators/OperatorWindowWithTime$State;->consumer:Lrx/Observer;

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber$1;->this$1:Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->unsubscribe()V

    .line 129
    :cond_0
    return-void
.end method
