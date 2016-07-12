.class Lrx/internal/operators/OperatorDebounceWithSelector$1;
.super Lrx/Subscriber;
.source "OperatorDebounceWithSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorDebounceWithSelector;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field final self:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<*>;"
        }
    .end annotation
.end field

.field final state:Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorDebounceWithTime$DebounceState",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lrx/internal/operators/OperatorDebounceWithSelector;

.field final synthetic val$s:Lrx/observers/SerializedSubscriber;

.field final synthetic val$ssub:Lrx/subscriptions/SerialSubscription;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorDebounceWithSelector;Lrx/Subscriber;Lrx/observers/SerializedSubscriber;Lrx/subscriptions/SerialSubscription;)V
    .locals 1

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithSelector$1;, "Lrx/internal/operators/OperatorDebounceWithSelector.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorDebounceWithSelector$1;->this$0:Lrx/internal/operators/OperatorDebounceWithSelector;

    iput-object p3, p0, Lrx/internal/operators/OperatorDebounceWithSelector$1;->val$s:Lrx/observers/SerializedSubscriber;

    iput-object p4, p0, Lrx/internal/operators/OperatorDebounceWithSelector$1;->val$ssub:Lrx/subscriptions/SerialSubscription;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 46
    new-instance v0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;

    invoke-direct {v0}, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorDebounceWithSelector$1;->state:Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;

    .line 47
    iput-object p0, p0, Lrx/internal/operators/OperatorDebounceWithSelector$1;->self:Lrx/Subscriber;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 102
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithSelector$1;, "Lrx/internal/operators/OperatorDebounceWithSelector.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDebounceWithSelector$1;->state:Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;

    iget-object v1, p0, Lrx/internal/operators/OperatorDebounceWithSelector$1;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0, v1, p0}, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->emitAndComplete(Lrx/Subscriber;Lrx/Subscriber;)V

    .line 103
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 95
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithSelector$1;, "Lrx/internal/operators/OperatorDebounceWithSelector.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDebounceWithSelector$1;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0, p1}, Lrx/observers/SerializedSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 96
    invoke-virtual {p0}, Lrx/internal/operators/OperatorDebounceWithSelector$1;->unsubscribe()V

    .line 97
    iget-object v0, p0, Lrx/internal/operators/OperatorDebounceWithSelector$1;->state:Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->clear()V

    .line 98
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithSelector$1;, "Lrx/internal/operators/OperatorDebounceWithSelector.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v4, p0, Lrx/internal/operators/OperatorDebounceWithSelector$1;->this$0:Lrx/internal/operators/OperatorDebounceWithSelector;

    iget-object v4, v4, Lrx/internal/operators/OperatorDebounceWithSelector;->selector:Lrx/functions/Func1;

    invoke-interface {v4, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .local v1, "debouncer":Lrx/Observable;, "Lrx/Observable<TU;>;"
    iget-object v4, p0, Lrx/internal/operators/OperatorDebounceWithSelector$1;->state:Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;

    invoke-virtual {v4, p1}, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->next(Ljava/lang/Object;)I

    move-result v3

    .line 69
    .local v3, "index":I
    new-instance v0, Lrx/internal/operators/OperatorDebounceWithSelector$1$1;

    invoke-direct {v0, p0, v3}, Lrx/internal/operators/OperatorDebounceWithSelector$1$1;-><init>(Lrx/internal/operators/OperatorDebounceWithSelector$1;I)V

    .line 87
    .local v0, "debounceSubscriber":Lrx/Subscriber;, "Lrx/Subscriber<TU;>;"
    iget-object v4, p0, Lrx/internal/operators/OperatorDebounceWithSelector$1;->val$ssub:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v4, v0}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 89
    invoke-virtual {v1, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 91
    .end local v0    # "debounceSubscriber":Lrx/Subscriber;, "Lrx/Subscriber<TU;>;"
    .end local v1    # "debouncer":Lrx/Observable;, "Lrx/Observable<TU;>;"
    .end local v3    # "index":I
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorDebounceWithSelector$1;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 52
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithSelector$1;, "Lrx/internal/operators/OperatorDebounceWithSelector.1;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorDebounceWithSelector$1;->request(J)V

    .line 53
    return-void
.end method
