.class Lrx/internal/operators/OperatorConcat$ConcatSubscriber$1;
.super Ljava/lang/Object;
.source "OperatorConcat.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorConcat$ConcatSubscriber;-><init>(Lrx/Subscriber;Lrx/subscriptions/SerialSubscription;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorConcat$ConcatSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorConcat$ConcatSubscriber;)V
    .locals 0

    .prologue
    .line 103
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatSubscriber$1;, "Lrx/internal/operators/OperatorConcat$ConcatSubscriber.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber$1;->this$0:Lrx/internal/operators/OperatorConcat$ConcatSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .prologue
    .line 106
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatSubscriber$1;, "Lrx/internal/operators/OperatorConcat$ConcatSubscriber.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber$1;->this$0:Lrx/internal/operators/OperatorConcat$ConcatSubscriber;

    iget-object v0, v0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 107
    return-void
.end method
