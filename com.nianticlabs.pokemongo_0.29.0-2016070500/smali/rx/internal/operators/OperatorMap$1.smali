.class Lrx/internal/operators/OperatorMap$1;
.super Lrx/Subscriber;
.source "OperatorMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorMap;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field final synthetic this$0:Lrx/internal/operators/OperatorMap;

.field final synthetic val$o:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorMap;Lrx/Subscriber;Lrx/Subscriber;)V
    .locals 0

    .prologue
    .line 40
    .local p0, "this":Lrx/internal/operators/OperatorMap$1;, "Lrx/internal/operators/OperatorMap.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorMap$1;->this$0:Lrx/internal/operators/OperatorMap;

    iput-object p3, p0, Lrx/internal/operators/OperatorMap$1;->val$o:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 44
    .local p0, "this":Lrx/internal/operators/OperatorMap$1;, "Lrx/internal/operators/OperatorMap.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMap$1;->val$o:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 45
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 49
    .local p0, "this":Lrx/internal/operators/OperatorMap$1;, "Lrx/internal/operators/OperatorMap.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMap$1;->val$o:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 50
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lrx/internal/operators/OperatorMap$1;, "Lrx/internal/operators/OperatorMap.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorMap$1;->val$o:Lrx/Subscriber;

    iget-object v2, p0, Lrx/internal/operators/OperatorMap$1;->this$0:Lrx/internal/operators/OperatorMap;

    # getter for: Lrx/internal/operators/OperatorMap;->transformer:Lrx/functions/Func1;
    invoke-static {v2}, Lrx/internal/operators/OperatorMap;->access$000(Lrx/internal/operators/OperatorMap;)Lrx/functions/Func1;

    move-result-object v2

    invoke-interface {v2, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 58
    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorMap$1;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
