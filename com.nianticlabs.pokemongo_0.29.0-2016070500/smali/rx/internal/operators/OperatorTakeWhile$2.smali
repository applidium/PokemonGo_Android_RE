.class Lrx/internal/operators/OperatorTakeWhile$2;
.super Lrx/Subscriber;
.source "OperatorTakeWhile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTakeWhile;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field private counter:I

.field private done:Z

.field final synthetic this$0:Lrx/internal/operators/OperatorTakeWhile;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorTakeWhile;Lrx/Subscriber;ZLrx/Subscriber;)V
    .locals 1
    .param p3, "x1"    # Z

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorTakeWhile$2;, "Lrx/internal/operators/OperatorTakeWhile.2;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    const/4 v0, 0x0

    .line 50
    iput-object p1, p0, Lrx/internal/operators/OperatorTakeWhile$2;->this$0:Lrx/internal/operators/OperatorTakeWhile;

    iput-object p4, p0, Lrx/internal/operators/OperatorTakeWhile$2;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0, p2, p3}, Lrx/Subscriber;-><init>(Lrx/Subscriber;Z)V

    .line 52
    iput v0, p0, Lrx/internal/operators/OperatorTakeWhile$2;->counter:I

    .line 54
    iput-boolean v0, p0, Lrx/internal/operators/OperatorTakeWhile$2;->done:Z

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 79
    .local p0, "this":Lrx/internal/operators/OperatorTakeWhile$2;, "Lrx/internal/operators/OperatorTakeWhile.2;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorTakeWhile$2;->done:Z

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeWhile$2;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 82
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 86
    .local p0, "this":Lrx/internal/operators/OperatorTakeWhile$2;, "Lrx/internal/operators/OperatorTakeWhile.2;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorTakeWhile$2;->done:Z

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeWhile$2;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 89
    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorTakeWhile$2;, "Lrx/internal/operators/OperatorTakeWhile.2;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v5, 0x1

    .line 60
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/OperatorTakeWhile$2;->this$0:Lrx/internal/operators/OperatorTakeWhile;

    # getter for: Lrx/internal/operators/OperatorTakeWhile;->predicate:Lrx/functions/Func2;
    invoke-static {v2}, Lrx/internal/operators/OperatorTakeWhile;->access$000(Lrx/internal/operators/OperatorTakeWhile;)Lrx/functions/Func2;

    move-result-object v2

    iget v3, p0, Lrx/internal/operators/OperatorTakeWhile$2;->counter:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lrx/internal/operators/OperatorTakeWhile$2;->counter:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 68
    .local v1, "isSelected":Z
    if-eqz v1, :cond_0

    .line 69
    iget-object v2, p0, Lrx/internal/operators/OperatorTakeWhile$2;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v2, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 75
    .end local v1    # "isSelected":Z
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Throwable;
    iput-boolean v5, p0, Lrx/internal/operators/OperatorTakeWhile$2;->done:Z

    .line 63
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 64
    iget-object v2, p0, Lrx/internal/operators/OperatorTakeWhile$2;->val$subscriber:Lrx/Subscriber;

    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 65
    invoke-virtual {p0}, Lrx/internal/operators/OperatorTakeWhile$2;->unsubscribe()V

    goto :goto_0

    .line 71
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "isSelected":Z
    :cond_0
    iput-boolean v5, p0, Lrx/internal/operators/OperatorTakeWhile$2;->done:Z

    .line 72
    iget-object v2, p0, Lrx/internal/operators/OperatorTakeWhile$2;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->onCompleted()V

    .line 73
    invoke-virtual {p0}, Lrx/internal/operators/OperatorTakeWhile$2;->unsubscribe()V

    goto :goto_0
.end method
