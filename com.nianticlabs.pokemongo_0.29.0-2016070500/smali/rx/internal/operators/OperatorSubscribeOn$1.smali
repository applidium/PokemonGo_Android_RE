.class Lrx/internal/operators/OperatorSubscribeOn$1;
.super Lrx/Subscriber;
.source "OperatorSubscribeOn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSubscribeOn;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<",
        "Lrx/Observable",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorSubscribeOn;

.field final synthetic val$inner:Lrx/Scheduler$Worker;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorSubscribeOn;Lrx/Subscriber;Lrx/Subscriber;Lrx/Scheduler$Worker;)V
    .locals 0

    .prologue
    .line 43
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1;, "Lrx/internal/operators/OperatorSubscribeOn.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSubscribeOn$1;->this$0:Lrx/internal/operators/OperatorSubscribeOn;

    iput-object p3, p0, Lrx/internal/operators/OperatorSubscribeOn$1;->val$subscriber:Lrx/Subscriber;

    iput-object p4, p0, Lrx/internal/operators/OperatorSubscribeOn$1;->val$inner:Lrx/Scheduler$Worker;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    .prologue
    .line 48
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1;, "Lrx/internal/operators/OperatorSubscribeOn.1;"
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 52
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1;, "Lrx/internal/operators/OperatorSubscribeOn.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSubscribeOn$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 53
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 43
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1;, "Lrx/internal/operators/OperatorSubscribeOn.1;"
    check-cast p1, Lrx/Observable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorSubscribeOn$1;->onNext(Lrx/Observable;)V

    return-void
.end method

.method public onNext(Lrx/Observable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1;, "Lrx/internal/operators/OperatorSubscribeOn.1;"
    .local p1, "o":Lrx/Observable;, "Lrx/Observable<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSubscribeOn$1;->val$inner:Lrx/Scheduler$Worker;

    new-instance v1, Lrx/internal/operators/OperatorSubscribeOn$1$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/OperatorSubscribeOn$1$1;-><init>(Lrx/internal/operators/OperatorSubscribeOn$1;Lrx/Observable;)V

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 106
    return-void
.end method
