.class Lrx/internal/operators/OperatorOnErrorReturn$1;
.super Lrx/Subscriber;
.source "OperatorOnErrorReturn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorOnErrorReturn;->call(Lrx/Subscriber;)Lrx/Subscriber;
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

.field final synthetic this$0:Lrx/internal/operators/OperatorOnErrorReturn;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorOnErrorReturn;Lrx/Subscriber;)V
    .locals 1

    .prologue
    .line 56
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorReturn$1;, "Lrx/internal/operators/OperatorOnErrorReturn.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorOnErrorReturn$1;->this$0:Lrx/internal/operators/OperatorOnErrorReturn;

    iput-object p2, p0, Lrx/internal/operators/OperatorOnErrorReturn$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OperatorOnErrorReturn$1;->done:Z

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 89
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorReturn$1;, "Lrx/internal/operators/OperatorOnErrorReturn.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorOnErrorReturn$1;->done:Z

    if-eqz v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorOnErrorReturn$1;->done:Z

    .line 93
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorReturn$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorReturn$1;, "Lrx/internal/operators/OperatorOnErrorReturn.1;"
    const/4 v6, 0x1

    .line 70
    iget-boolean v2, p0, Lrx/internal/operators/OperatorOnErrorReturn$1;->done:Z

    if-eqz v2, :cond_0

    .line 71
    invoke-static {p1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 85
    :goto_0
    return-void

    .line 74
    :cond_0
    iput-boolean v6, p0, Lrx/internal/operators/OperatorOnErrorReturn$1;->done:Z

    .line 76
    :try_start_0
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v2

    invoke-virtual {v2}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v2

    invoke-virtual {v2, p1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 77
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnErrorReturn$1;->unsubscribe()V

    .line 78
    iget-object v2, p0, Lrx/internal/operators/OperatorOnErrorReturn$1;->this$0:Lrx/internal/operators/OperatorOnErrorReturn;

    iget-object v2, v2, Lrx/internal/operators/OperatorOnErrorReturn;->resultFunction:Lrx/functions/Func1;

    invoke-interface {v2, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 79
    .local v0, "result":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lrx/internal/operators/OperatorOnErrorReturn$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v2, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    iget-object v2, p0, Lrx/internal/operators/OperatorOnErrorReturn$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->onCompleted()V

    goto :goto_0

    .line 80
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v1

    .line 81
    .local v1, "x":Ljava/lang/Throwable;
    iget-object v2, p0, Lrx/internal/operators/OperatorOnErrorReturn$1;->val$child:Lrx/Subscriber;

    new-instance v3, Lrx/exceptions/CompositeException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    aput-object v1, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorReturn$1;, "Lrx/internal/operators/OperatorOnErrorReturn.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorOnErrorReturn$1;->done:Z

    if-eqz v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorReturn$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 2
    .param p1, "producer"    # Lrx/Producer;

    .prologue
    .line 98
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorReturn$1;, "Lrx/internal/operators/OperatorOnErrorReturn.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorReturn$1;->val$child:Lrx/Subscriber;

    new-instance v1, Lrx/internal/operators/OperatorOnErrorReturn$1$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/OperatorOnErrorReturn$1$1;-><init>(Lrx/internal/operators/OperatorOnErrorReturn$1;Lrx/Producer;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 104
    return-void
.end method
