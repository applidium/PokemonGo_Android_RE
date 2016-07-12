.class Lrx/internal/operators/OperatorOnErrorFlatMap$1;
.super Lrx/Subscriber;
.source "OperatorOnErrorFlatMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorOnErrorFlatMap;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field final synthetic this$0:Lrx/internal/operators/OperatorOnErrorFlatMap;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorOnErrorFlatMap;Lrx/Subscriber;Lrx/Subscriber;)V
    .locals 0

    .prologue
    .line 40
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorFlatMap$1;, "Lrx/internal/operators/OperatorOnErrorFlatMap.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorOnErrorFlatMap$1;->this$0:Lrx/internal/operators/OperatorOnErrorFlatMap;

    iput-object p3, p0, Lrx/internal/operators/OperatorOnErrorFlatMap$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 44
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorFlatMap$1;, "Lrx/internal/operators/OperatorOnErrorFlatMap.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorFlatMap$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 45
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 50
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorFlatMap$1;, "Lrx/internal/operators/OperatorOnErrorFlatMap.1;"
    :try_start_0
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v2

    invoke-virtual {v2}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v2

    invoke-virtual {v2, p1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 51
    iget-object v2, p0, Lrx/internal/operators/OperatorOnErrorFlatMap$1;->this$0:Lrx/internal/operators/OperatorOnErrorFlatMap;

    # getter for: Lrx/internal/operators/OperatorOnErrorFlatMap;->resumeFunction:Lrx/functions/Func1;
    invoke-static {v2}, Lrx/internal/operators/OperatorOnErrorFlatMap;->access$000(Lrx/internal/operators/OperatorOnErrorFlatMap;)Lrx/functions/Func1;

    move-result-object v2

    invoke-static {p1}, Lrx/exceptions/OnErrorThrowable;->from(Ljava/lang/Throwable;)Lrx/exceptions/OnErrorThrowable;

    move-result-object v3

    invoke-interface {v2, v3}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable;

    .line 52
    .local v1, "resume":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    new-instance v2, Lrx/internal/operators/OperatorOnErrorFlatMap$1$1;

    invoke-direct {v2, p0}, Lrx/internal/operators/OperatorOnErrorFlatMap$1$1;-><init>(Lrx/internal/operators/OperatorOnErrorFlatMap$1;)V

    invoke-virtual {v1, v2}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v1    # "resume":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e2":Ljava/lang/Throwable;
    iget-object v2, p0, Lrx/internal/operators/OperatorOnErrorFlatMap$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v2, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

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
    .line 78
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorFlatMap$1;, "Lrx/internal/operators/OperatorOnErrorFlatMap.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorFlatMap$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 79
    return-void
.end method
