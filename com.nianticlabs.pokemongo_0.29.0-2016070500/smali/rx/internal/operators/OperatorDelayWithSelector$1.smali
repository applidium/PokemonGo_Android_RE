.class Lrx/internal/operators/OperatorDelayWithSelector$1;
.super Lrx/Subscriber;
.source "OperatorDelayWithSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorDelayWithSelector;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field final synthetic this$0:Lrx/internal/operators/OperatorDelayWithSelector;

.field final synthetic val$child:Lrx/observers/SerializedSubscriber;

.field final synthetic val$delayedEmissions:Lrx/subjects/PublishSubject;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorDelayWithSelector;Lrx/Subscriber;Lrx/subjects/PublishSubject;Lrx/observers/SerializedSubscriber;)V
    .locals 0

    .prologue
    .line 50
    .local p0, "this":Lrx/internal/operators/OperatorDelayWithSelector$1;, "Lrx/internal/operators/OperatorDelayWithSelector.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorDelayWithSelector$1;->this$0:Lrx/internal/operators/OperatorDelayWithSelector;

    iput-object p3, p0, Lrx/internal/operators/OperatorDelayWithSelector$1;->val$delayedEmissions:Lrx/subjects/PublishSubject;

    iput-object p4, p0, Lrx/internal/operators/OperatorDelayWithSelector$1;->val$child:Lrx/observers/SerializedSubscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 54
    .local p0, "this":Lrx/internal/operators/OperatorDelayWithSelector$1;, "Lrx/internal/operators/OperatorDelayWithSelector.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDelayWithSelector$1;->val$delayedEmissions:Lrx/subjects/PublishSubject;

    invoke-virtual {v0}, Lrx/subjects/PublishSubject;->onCompleted()V

    .line 55
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/operators/OperatorDelayWithSelector$1;, "Lrx/internal/operators/OperatorDelayWithSelector.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDelayWithSelector$1;->val$child:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0, p1}, Lrx/observers/SerializedSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 60
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lrx/internal/operators/OperatorDelayWithSelector$1;, "Lrx/internal/operators/OperatorDelayWithSelector.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/OperatorDelayWithSelector$1;->val$delayedEmissions:Lrx/subjects/PublishSubject;

    iget-object v1, p0, Lrx/internal/operators/OperatorDelayWithSelector$1;->this$0:Lrx/internal/operators/OperatorDelayWithSelector;

    iget-object v1, v1, Lrx/internal/operators/OperatorDelayWithSelector;->itemDelay:Lrx/functions/Func1;

    invoke-interface {v1, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lrx/Observable;->take(I)Lrx/Observable;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lrx/Observable;->defaultIfEmpty(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v1

    new-instance v3, Lrx/internal/operators/OperatorDelayWithSelector$1$1;

    invoke-direct {v3, p0, p1}, Lrx/internal/operators/OperatorDelayWithSelector$1$1;-><init>(Lrx/internal/operators/OperatorDelayWithSelector$1;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    invoke-virtual {v2, v1}, Lrx/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorDelayWithSelector$1;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
