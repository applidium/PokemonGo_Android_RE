.class Lrx/internal/operators/OperatorTake$1;
.super Lrx/Subscriber;
.source "OperatorTake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTake;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field completed:Z

.field count:I

.field final synthetic this$0:Lrx/internal/operators/OperatorTake;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorTake;Lrx/Subscriber;)V
    .locals 1

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorTake$1;, "Lrx/internal/operators/OperatorTake.1;"
    const/4 v0, 0x0

    .line 44
    iput-object p1, p0, Lrx/internal/operators/OperatorTake$1;->this$0:Lrx/internal/operators/OperatorTake;

    iput-object p2, p0, Lrx/internal/operators/OperatorTake$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 46
    iput v0, p0, Lrx/internal/operators/OperatorTake$1;->count:I

    .line 47
    iput-boolean v0, p0, Lrx/internal/operators/OperatorTake$1;->completed:Z

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lrx/internal/operators/OperatorTake$1;, "Lrx/internal/operators/OperatorTake.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorTake$1;->completed:Z

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lrx/internal/operators/OperatorTake$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 54
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 58
    .local p0, "this":Lrx/internal/operators/OperatorTake$1;, "Lrx/internal/operators/OperatorTake.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorTake$1;->completed:Z

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lrx/internal/operators/OperatorTake$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 61
    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lrx/internal/operators/OperatorTake$1;, "Lrx/internal/operators/OperatorTake.1;"
    .local p1, "i":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorTake$1;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    iget v0, p0, Lrx/internal/operators/OperatorTake$1;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/internal/operators/OperatorTake$1;->count:I

    iget-object v1, p0, Lrx/internal/operators/OperatorTake$1;->this$0:Lrx/internal/operators/OperatorTake;

    iget v1, v1, Lrx/internal/operators/OperatorTake;->limit:I

    if-lt v0, v1, :cond_0

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorTake$1;->completed:Z

    .line 69
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorTake$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 70
    iget-boolean v0, p0, Lrx/internal/operators/OperatorTake$1;->completed:Z

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lrx/internal/operators/OperatorTake$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 72
    invoke-virtual {p0}, Lrx/internal/operators/OperatorTake$1;->unsubscribe()V

    .line 75
    :cond_1
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 2
    .param p1, "producer"    # Lrx/Producer;

    .prologue
    .line 82
    .local p0, "this":Lrx/internal/operators/OperatorTake$1;, "Lrx/internal/operators/OperatorTake.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTake$1;->val$child:Lrx/Subscriber;

    new-instance v1, Lrx/internal/operators/OperatorTake$1$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/OperatorTake$1$1;-><init>(Lrx/internal/operators/OperatorTake$1;Lrx/Producer;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 105
    return-void
.end method
