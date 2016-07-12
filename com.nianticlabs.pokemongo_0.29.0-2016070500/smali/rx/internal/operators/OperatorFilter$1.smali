.class Lrx/internal/operators/OperatorFilter$1;
.super Lrx/Subscriber;
.source "OperatorFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorFilter;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field final synthetic this$0:Lrx/internal/operators/OperatorFilter;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorFilter;Lrx/Subscriber;Lrx/Subscriber;)V
    .locals 0

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/OperatorFilter$1;, "Lrx/internal/operators/OperatorFilter.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorFilter$1;->this$0:Lrx/internal/operators/OperatorFilter;

    iput-object p3, p0, Lrx/internal/operators/OperatorFilter$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 42
    .local p0, "this":Lrx/internal/operators/OperatorFilter$1;, "Lrx/internal/operators/OperatorFilter.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorFilter$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 43
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 47
    .local p0, "this":Lrx/internal/operators/OperatorFilter$1;, "Lrx/internal/operators/OperatorFilter.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorFilter$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 48
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
    .line 53
    .local p0, "this":Lrx/internal/operators/OperatorFilter$1;, "Lrx/internal/operators/OperatorFilter.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorFilter$1;->this$0:Lrx/internal/operators/OperatorFilter;

    # getter for: Lrx/internal/operators/OperatorFilter;->predicate:Lrx/functions/Func1;
    invoke-static {v1}, Lrx/internal/operators/OperatorFilter;->access$000(Lrx/internal/operators/OperatorFilter;)Lrx/functions/Func1;

    move-result-object v1

    invoke-interface {v1, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Lrx/internal/operators/OperatorFilter$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v1, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 62
    :goto_0
    return-void

    .line 57
    :cond_0
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/OperatorFilter$1;->request(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lrx/internal/operators/OperatorFilter$1;->val$child:Lrx/Subscriber;

    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
