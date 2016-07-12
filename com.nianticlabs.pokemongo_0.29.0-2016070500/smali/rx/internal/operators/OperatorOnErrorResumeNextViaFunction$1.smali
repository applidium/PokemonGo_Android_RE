.class Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;
.super Lrx/Subscriber;
.source "OperatorOnErrorResumeNextViaFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;->call(Lrx/Subscriber;)Lrx/Subscriber;
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

.field final synthetic this$0:Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;

.field final synthetic val$child:Lrx/Subscriber;

.field final synthetic val$pa:Lrx/internal/producers/ProducerArbiter;

.field final synthetic val$ssub:Lrx/subscriptions/SerialSubscription;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;Lrx/Subscriber;Lrx/internal/producers/ProducerArbiter;Lrx/subscriptions/SerialSubscription;)V
    .locals 1

    .prologue
    .line 56
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;->this$0:Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;

    iput-object p2, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;->val$child:Lrx/Subscriber;

    iput-object p3, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;->val$pa:Lrx/internal/producers/ProducerArbiter;

    iput-object p4, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;->val$ssub:Lrx/subscriptions/SerialSubscription;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;->done:Z

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 62
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;->done:Z

    if-eqz v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;->done:Z

    .line 66
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 71
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction.1;"
    iget-boolean v3, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;->done:Z

    if-eqz v3, :cond_0

    .line 72
    invoke-static {p1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 104
    :goto_0
    return-void

    .line 75
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;->done:Z

    .line 77
    :try_start_0
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v3

    invoke-virtual {v3}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v3

    invoke-virtual {v3, p1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 78
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;->unsubscribe()V

    .line 79
    new-instance v1, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1$1;

    invoke-direct {v1, p0}, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1$1;-><init>(Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;)V

    .line 97
    .local v1, "next":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    iget-object v3, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;->val$ssub:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v3, v1}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 99
    iget-object v3, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;->this$0:Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;

    # getter for: Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;->resumeFunction:Lrx/functions/Func1;
    invoke-static {v3}, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;->access$000(Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;)Lrx/functions/Func1;

    move-result-object v3

    invoke-interface {v3, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/Observable;

    .line 100
    .local v2, "resume":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-virtual {v2, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    .end local v1    # "next":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    .end local v2    # "resume":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e2":Ljava/lang/Throwable;
    iget-object v3, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v3, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

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
    .line 108
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;->done:Z

    if-eqz v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 1
    .param p1, "producer"    # Lrx/Producer;

    .prologue
    .line 116
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;->val$pa:Lrx/internal/producers/ProducerArbiter;

    invoke-virtual {v0, p1}, Lrx/internal/producers/ProducerArbiter;->setProducer(Lrx/Producer;)V

    .line 117
    return-void
.end method
