.class Lrx/internal/operators/OperatorOnErrorFlatMap$1$1;
.super Lrx/Subscriber;
.source "OperatorOnErrorFlatMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorOnErrorFlatMap$1;->onError(Ljava/lang/Throwable;)V
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
.field final synthetic this$1:Lrx/internal/operators/OperatorOnErrorFlatMap$1;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorOnErrorFlatMap$1;)V
    .locals 0

    .prologue
    .line 52
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorFlatMap$1$1;, "Lrx/internal/operators/OperatorOnErrorFlatMap$1.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorOnErrorFlatMap$1$1;->this$1:Lrx/internal/operators/OperatorOnErrorFlatMap$1;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    .prologue
    .line 57
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorFlatMap$1$1;, "Lrx/internal/operators/OperatorOnErrorFlatMap$1.1;"
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 62
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorFlatMap$1$1;, "Lrx/internal/operators/OperatorOnErrorFlatMap$1.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorFlatMap$1$1;->this$1:Lrx/internal/operators/OperatorOnErrorFlatMap$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorOnErrorFlatMap$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 63
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
    .line 67
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorFlatMap$1$1;, "Lrx/internal/operators/OperatorOnErrorFlatMap$1.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorFlatMap$1$1;->this$1:Lrx/internal/operators/OperatorOnErrorFlatMap$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorOnErrorFlatMap$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 68
    return-void
.end method
