.class Lrx/internal/operators/OperatorFinally$1;
.super Lrx/Subscriber;
.source "OperatorFinally.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorFinally;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorFinally;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorFinally;Lrx/Subscriber;Lrx/Subscriber;)V
    .locals 0

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/OperatorFinally$1;, "Lrx/internal/operators/OperatorFinally.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorFinally$1;->this$0:Lrx/internal/operators/OperatorFinally;

    iput-object p3, p0, Lrx/internal/operators/OperatorFinally$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 60
    .local p0, "this":Lrx/internal/operators/OperatorFinally$1;, "Lrx/internal/operators/OperatorFinally.1;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorFinally$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    iget-object v0, p0, Lrx/internal/operators/OperatorFinally$1;->this$0:Lrx/internal/operators/OperatorFinally;

    iget-object v0, v0, Lrx/internal/operators/OperatorFinally;->action:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V

    .line 64
    return-void

    .line 62
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/OperatorFinally$1;->this$0:Lrx/internal/operators/OperatorFinally;

    iget-object v1, v1, Lrx/internal/operators/OperatorFinally;->action:Lrx/functions/Action0;

    invoke-interface {v1}, Lrx/functions/Action0;->call()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 51
    .local p0, "this":Lrx/internal/operators/OperatorFinally$1;, "Lrx/internal/operators/OperatorFinally.1;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorFinally$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    iget-object v0, p0, Lrx/internal/operators/OperatorFinally$1;->this$0:Lrx/internal/operators/OperatorFinally;

    iget-object v0, v0, Lrx/internal/operators/OperatorFinally;->action:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V

    .line 55
    return-void

    .line 53
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/OperatorFinally$1;->this$0:Lrx/internal/operators/OperatorFinally;

    iget-object v1, v1, Lrx/internal/operators/OperatorFinally;->action:Lrx/functions/Action0;

    invoke-interface {v1}, Lrx/functions/Action0;->call()V

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/OperatorFinally$1;, "Lrx/internal/operators/OperatorFinally.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorFinally$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 46
    return-void
.end method
