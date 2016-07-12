.class Lrx/internal/operators/OperatorMapPair$2;
.super Lrx/Subscriber;
.source "OperatorMapPair.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorMapPair;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field final synthetic this$0:Lrx/internal/operators/OperatorMapPair;

.field final synthetic val$o:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorMapPair;Lrx/Subscriber;Lrx/Subscriber;)V
    .locals 0

    .prologue
    .line 65
    .local p0, "this":Lrx/internal/operators/OperatorMapPair$2;, "Lrx/internal/operators/OperatorMapPair.2;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorMapPair$2;->this$0:Lrx/internal/operators/OperatorMapPair;

    iput-object p3, p0, Lrx/internal/operators/OperatorMapPair$2;->val$o:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 69
    .local p0, "this":Lrx/internal/operators/OperatorMapPair$2;, "Lrx/internal/operators/OperatorMapPair.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMapPair$2;->val$o:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 70
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 74
    .local p0, "this":Lrx/internal/operators/OperatorMapPair$2;, "Lrx/internal/operators/OperatorMapPair.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMapPair$2;->val$o:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 75
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
    .line 80
    .local p0, "this":Lrx/internal/operators/OperatorMapPair$2;, "Lrx/internal/operators/OperatorMapPair.2;"
    .local p1, "outer":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/OperatorMapPair$2;->val$o:Lrx/Subscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorMapPair$2;->this$0:Lrx/internal/operators/OperatorMapPair;

    iget-object v1, v1, Lrx/internal/operators/OperatorMapPair;->collectionSelector:Lrx/functions/Func1;

    invoke-interface {v1, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable;

    new-instance v3, Lrx/internal/operators/OperatorMapPair$2$1;

    invoke-direct {v3, p0, p1}, Lrx/internal/operators/OperatorMapPair$2$1;-><init>(Lrx/internal/operators/OperatorMapPair$2;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    invoke-virtual {v2, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lrx/internal/operators/OperatorMapPair$2;->val$o:Lrx/Subscriber;

    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
