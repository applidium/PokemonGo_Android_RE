.class Lrx/internal/operators/OperatorSkip$1;
.super Lrx/Subscriber;
.source "OperatorSkip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSkip;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field skipped:I

.field final synthetic this$0:Lrx/internal/operators/OperatorSkip;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorSkip;Lrx/Subscriber;Lrx/Subscriber;)V
    .locals 1

    .prologue
    .line 43
    .local p0, "this":Lrx/internal/operators/OperatorSkip$1;, "Lrx/internal/operators/OperatorSkip.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSkip$1;->this$0:Lrx/internal/operators/OperatorSkip;

    iput-object p3, p0, Lrx/internal/operators/OperatorSkip$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lrx/internal/operators/OperatorSkip$1;->skipped:I

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lrx/internal/operators/OperatorSkip$1;, "Lrx/internal/operators/OperatorSkip.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSkip$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 50
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 54
    .local p0, "this":Lrx/internal/operators/OperatorSkip$1;, "Lrx/internal/operators/OperatorSkip.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSkip$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 55
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
    .line 59
    .local p0, "this":Lrx/internal/operators/OperatorSkip$1;, "Lrx/internal/operators/OperatorSkip.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lrx/internal/operators/OperatorSkip$1;->skipped:I

    iget-object v1, p0, Lrx/internal/operators/OperatorSkip$1;->this$0:Lrx/internal/operators/OperatorSkip;

    iget v1, v1, Lrx/internal/operators/OperatorSkip;->toSkip:I

    if-lt v0, v1, :cond_0

    .line 60
    iget-object v0, p0, Lrx/internal/operators/OperatorSkip$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iget v0, p0, Lrx/internal/operators/OperatorSkip$1;->skipped:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/internal/operators/OperatorSkip$1;->skipped:I

    goto :goto_0
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 2
    .param p1, "producer"    # Lrx/Producer;

    .prologue
    .line 68
    .local p0, "this":Lrx/internal/operators/OperatorSkip$1;, "Lrx/internal/operators/OperatorSkip.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSkip$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 69
    iget-object v0, p0, Lrx/internal/operators/OperatorSkip$1;->this$0:Lrx/internal/operators/OperatorSkip;

    iget v0, v0, Lrx/internal/operators/OperatorSkip;->toSkip:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lrx/Producer;->request(J)V

    .line 70
    return-void
.end method
