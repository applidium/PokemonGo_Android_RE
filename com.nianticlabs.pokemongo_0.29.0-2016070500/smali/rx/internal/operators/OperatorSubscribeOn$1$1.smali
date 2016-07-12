.class Lrx/internal/operators/OperatorSubscribeOn$1$1;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSubscribeOn$1;->onNext(Lrx/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorSubscribeOn$1;

.field final synthetic val$o:Lrx/Observable;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorSubscribeOn$1;Lrx/Observable;)V
    .locals 0

    .prologue
    .line 57
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1$1;, "Lrx/internal/operators/OperatorSubscribeOn$1.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1;->this$1:Lrx/internal/operators/OperatorSubscribeOn$1;

    iput-object p2, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1;->val$o:Lrx/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    .prologue
    .line 61
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1$1;, "Lrx/internal/operators/OperatorSubscribeOn$1.1;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 62
    .local v0, "t":Ljava/lang/Thread;
    iget-object v1, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1;->val$o:Lrx/Observable;

    new-instance v2, Lrx/internal/operators/OperatorSubscribeOn$1$1$1;

    iget-object v3, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1;->this$1:Lrx/internal/operators/OperatorSubscribeOn$1;

    iget-object v3, v3, Lrx/internal/operators/OperatorSubscribeOn$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {v2, p0, v3, v0}, Lrx/internal/operators/OperatorSubscribeOn$1$1$1;-><init>(Lrx/internal/operators/OperatorSubscribeOn$1$1;Lrx/Subscriber;Ljava/lang/Thread;)V

    invoke-virtual {v1, v2}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 104
    return-void
.end method
