.class Lrx/internal/operators/OperatorTakeUntil$1;
.super Lrx/Subscriber;
.source "OperatorTakeUntil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTakeUntil;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field final synthetic this$0:Lrx/internal/operators/OperatorTakeUntil;

.field final synthetic val$serial:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorTakeUntil;Lrx/Subscriber;ZLrx/Subscriber;)V
    .locals 0
    .param p3, "x1"    # Z

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntil$1;, "Lrx/internal/operators/OperatorTakeUntil.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorTakeUntil$1;->this$0:Lrx/internal/operators/OperatorTakeUntil;

    iput-object p4, p0, Lrx/internal/operators/OperatorTakeUntil$1;->val$serial:Lrx/Subscriber;

    invoke-direct {p0, p2, p3}, Lrx/Subscriber;-><init>(Lrx/Subscriber;Z)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 57
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntil$1;, "Lrx/internal/operators/OperatorTakeUntil.1;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeUntil$1;->val$serial:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeUntil$1;->val$serial:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->unsubscribe()V

    .line 61
    return-void

    .line 59
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/OperatorTakeUntil$1;->val$serial:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->unsubscribe()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 49
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntil$1;, "Lrx/internal/operators/OperatorTakeUntil.1;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeUntil$1;->val$serial:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeUntil$1;->val$serial:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->unsubscribe()V

    .line 53
    return-void

    .line 51
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/OperatorTakeUntil$1;->val$serial:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->unsubscribe()V

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
    .line 44
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntil$1;, "Lrx/internal/operators/OperatorTakeUntil.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeUntil$1;->val$serial:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 45
    return-void
.end method
