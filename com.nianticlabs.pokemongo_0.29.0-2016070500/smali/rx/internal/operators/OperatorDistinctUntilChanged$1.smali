.class Lrx/internal/operators/OperatorDistinctUntilChanged$1;
.super Lrx/Subscriber;
.source "OperatorDistinctUntilChanged.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorDistinctUntilChanged;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field hasPrevious:Z

.field previousKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lrx/internal/operators/OperatorDistinctUntilChanged;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorDistinctUntilChanged;Lrx/Subscriber;Lrx/Subscriber;)V
    .locals 0

    .prologue
    .line 53
    .local p0, "this":Lrx/internal/operators/OperatorDistinctUntilChanged$1;, "Lrx/internal/operators/OperatorDistinctUntilChanged.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->this$0:Lrx/internal/operators/OperatorDistinctUntilChanged;

    iput-object p3, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 81
    .local p0, "this":Lrx/internal/operators/OperatorDistinctUntilChanged$1;, "Lrx/internal/operators/OperatorDistinctUntilChanged.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 82
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 76
    .local p0, "this":Lrx/internal/operators/OperatorDistinctUntilChanged$1;, "Lrx/internal/operators/OperatorDistinctUntilChanged.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 77
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
    .line 58
    .local p0, "this":Lrx/internal/operators/OperatorDistinctUntilChanged$1;, "Lrx/internal/operators/OperatorDistinctUntilChanged.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->previousKey:Ljava/lang/Object;

    .line 59
    .local v0, "currentKey":Ljava/lang/Object;, "TU;"
    iget-object v2, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->this$0:Lrx/internal/operators/OperatorDistinctUntilChanged;

    iget-object v2, v2, Lrx/internal/operators/OperatorDistinctUntilChanged;->keySelector:Lrx/functions/Func1;

    invoke-interface {v2, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 60
    .local v1, "key":Ljava/lang/Object;, "TU;"
    iput-object v1, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->previousKey:Ljava/lang/Object;

    .line 62
    iget-boolean v2, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->hasPrevious:Z

    if-eqz v2, :cond_2

    .line 63
    if-eq v0, v1, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 64
    :cond_0
    iget-object v2, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v2, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 72
    :goto_0
    return-void

    .line 66
    :cond_1
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->request(J)V

    goto :goto_0

    .line 69
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->hasPrevious:Z

    .line 70
    iget-object v2, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v2, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method
