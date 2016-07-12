.class Lrx/internal/operators/OperatorDoOnEach$1;
.super Lrx/Subscriber;
.source "OperatorDoOnEach.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorDoOnEach;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field private done:Z

.field final synthetic this$0:Lrx/internal/operators/OperatorDoOnEach;

.field final synthetic val$observer:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorDoOnEach;Lrx/Subscriber;Lrx/Subscriber;)V
    .locals 1

    .prologue
    .line 36
    .local p0, "this":Lrx/internal/operators/OperatorDoOnEach$1;, "Lrx/internal/operators/OperatorDoOnEach.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorDoOnEach$1;->this$0:Lrx/internal/operators/OperatorDoOnEach;

    iput-object p3, p0, Lrx/internal/operators/OperatorDoOnEach$1;->val$observer:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OperatorDoOnEach$1;->done:Z

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 42
    .local p0, "this":Lrx/internal/operators/OperatorDoOnEach$1;, "Lrx/internal/operators/OperatorDoOnEach.1;"
    iget-boolean v1, p0, Lrx/internal/operators/OperatorDoOnEach$1;->done:Z

    if-eqz v1, :cond_0

    .line 54
    :goto_0
    return-void

    .line 46
    :cond_0
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorDoOnEach$1;->this$0:Lrx/internal/operators/OperatorDoOnEach;

    # getter for: Lrx/internal/operators/OperatorDoOnEach;->doOnEachObserver:Lrx/Observer;
    invoke-static {v1}, Lrx/internal/operators/OperatorDoOnEach;->access$000(Lrx/internal/operators/OperatorDoOnEach;)Lrx/Observer;

    move-result-object v1

    invoke-interface {v1}, Lrx/Observer;->onCompleted()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/operators/OperatorDoOnEach$1;->done:Z

    .line 53
    iget-object v1, p0, Lrx/internal/operators/OperatorDoOnEach$1;->val$observer:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorDoOnEach$1;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/operators/OperatorDoOnEach$1;, "Lrx/internal/operators/OperatorDoOnEach.1;"
    invoke-static {p1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 60
    iget-boolean v1, p0, Lrx/internal/operators/OperatorDoOnEach$1;->done:Z

    if-eqz v1, :cond_0

    .line 71
    :goto_0
    return-void

    .line 63
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/operators/OperatorDoOnEach$1;->done:Z

    .line 65
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorDoOnEach$1;->this$0:Lrx/internal/operators/OperatorDoOnEach;

    # getter for: Lrx/internal/operators/OperatorDoOnEach;->doOnEachObserver:Lrx/Observer;
    invoke-static {v1}, Lrx/internal/operators/OperatorDoOnEach;->access$000(Lrx/internal/operators/OperatorDoOnEach;)Lrx/Observer;

    move-result-object v1

    invoke-interface {v1, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    iget-object v1, p0, Lrx/internal/operators/OperatorDoOnEach$1;->val$observer:Lrx/Subscriber;

    invoke-virtual {v1, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e2":Ljava/lang/Throwable;
    iget-object v1, p0, Lrx/internal/operators/OperatorDoOnEach$1;->val$observer:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lrx/internal/operators/OperatorDoOnEach$1;, "Lrx/internal/operators/OperatorDoOnEach.1;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v1, p0, Lrx/internal/operators/OperatorDoOnEach$1;->done:Z

    if-eqz v1, :cond_0

    .line 85
    :goto_0
    return-void

    .line 79
    :cond_0
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorDoOnEach$1;->this$0:Lrx/internal/operators/OperatorDoOnEach;

    # getter for: Lrx/internal/operators/OperatorDoOnEach;->doOnEachObserver:Lrx/Observer;
    invoke-static {v1}, Lrx/internal/operators/OperatorDoOnEach;->access$000(Lrx/internal/operators/OperatorDoOnEach;)Lrx/Observer;

    move-result-object v1

    invoke-interface {v1, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    iget-object v1, p0, Lrx/internal/operators/OperatorDoOnEach$1;->val$observer:Lrx/Subscriber;

    invoke-virtual {v1, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorDoOnEach$1;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
