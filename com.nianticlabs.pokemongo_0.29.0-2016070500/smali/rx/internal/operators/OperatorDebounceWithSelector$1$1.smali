.class Lrx/internal/operators/OperatorDebounceWithSelector$1$1;
.super Lrx/Subscriber;
.source "OperatorDebounceWithSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorDebounceWithSelector$1;->onNext(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TU;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorDebounceWithSelector$1;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorDebounceWithSelector$1;I)V
    .locals 0

    .prologue
    .line 69
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithSelector$1$1;, "Lrx/internal/operators/OperatorDebounceWithSelector$1.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorDebounceWithSelector$1$1;->this$1:Lrx/internal/operators/OperatorDebounceWithSelector$1;

    iput p2, p0, Lrx/internal/operators/OperatorDebounceWithSelector$1$1;->val$index:I

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 4

    .prologue
    .line 83
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithSelector$1$1;, "Lrx/internal/operators/OperatorDebounceWithSelector$1.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDebounceWithSelector$1$1;->this$1:Lrx/internal/operators/OperatorDebounceWithSelector$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorDebounceWithSelector$1;->state:Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;

    iget v1, p0, Lrx/internal/operators/OperatorDebounceWithSelector$1$1;->val$index:I

    iget-object v2, p0, Lrx/internal/operators/OperatorDebounceWithSelector$1$1;->this$1:Lrx/internal/operators/OperatorDebounceWithSelector$1;

    iget-object v2, v2, Lrx/internal/operators/OperatorDebounceWithSelector$1;->val$s:Lrx/observers/SerializedSubscriber;

    iget-object v3, p0, Lrx/internal/operators/OperatorDebounceWithSelector$1$1;->this$1:Lrx/internal/operators/OperatorDebounceWithSelector$1;

    iget-object v3, v3, Lrx/internal/operators/OperatorDebounceWithSelector$1;->self:Lrx/Subscriber;

    invoke-virtual {v0, v1, v2, v3}, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->emit(ILrx/Subscriber;Lrx/Subscriber;)V

    .line 84
    invoke-virtual {p0}, Lrx/internal/operators/OperatorDebounceWithSelector$1$1;->unsubscribe()V

    .line 85
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 78
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithSelector$1$1;, "Lrx/internal/operators/OperatorDebounceWithSelector$1.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDebounceWithSelector$1$1;->this$1:Lrx/internal/operators/OperatorDebounceWithSelector$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorDebounceWithSelector$1;->self:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 79
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithSelector$1$1;, "Lrx/internal/operators/OperatorDebounceWithSelector$1.1;"
    .local p1, "t":Ljava/lang/Object;, "TU;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorDebounceWithSelector$1$1;->onCompleted()V

    .line 74
    return-void
.end method
