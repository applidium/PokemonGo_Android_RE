.class Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;
.super Lrx/Subscriber;
.source "OperatorOnErrorResumeNextViaObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable;->call(Lrx/Subscriber;)Lrx/Subscriber;
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

.field final synthetic this$0:Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable;Lrx/Subscriber;)V
    .locals 1

    .prologue
    .line 55
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;->this$0:Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable;

    iput-object p2, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;->done:Z

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 81
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;->done:Z

    if-eqz v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;->done:Z

    .line 85
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 69
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;->done:Z

    if-eqz v0, :cond_0

    .line 70
    invoke-static {p1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 77
    :goto_0
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;->done:Z

    .line 74
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 75
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;->unsubscribe()V

    .line 76
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;->this$0:Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable;

    iget-object v0, v0, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable;->resumeSequence:Lrx/Observable;

    iget-object v1, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

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
    .line 61
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;->done:Z

    if-eqz v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 2
    .param p1, "producer"    # Lrx/Producer;

    .prologue
    .line 90
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;->val$child:Lrx/Subscriber;

    new-instance v1, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1$1;-><init>(Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;Lrx/Producer;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 96
    return-void
.end method
