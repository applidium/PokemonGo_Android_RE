.class Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1$1;
.super Lrx/Subscriber;
.source "OperatorOnErrorResumeNextViaFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;->onError(Ljava/lang/Throwable;)V
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
.field final synthetic this$1:Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;)V
    .locals 0

    .prologue
    .line 79
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1$1;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1$1;->this$1:Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 90
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1$1;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1$1;->this$1:Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 91
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 86
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1$1;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1$1;->this$1:Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 87
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1$1;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1$1;->this$1:Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 1
    .param p1, "producer"    # Lrx/Producer;

    .prologue
    .line 94
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1$1;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1$1;->this$1:Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;->val$pa:Lrx/internal/producers/ProducerArbiter;

    invoke-virtual {v0, p1}, Lrx/internal/producers/ProducerArbiter;->setProducer(Lrx/Producer;)V

    .line 95
    return-void
.end method
