.class final Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber;
.super Lrx/Subscriber;
.source "OperatorTakeTimed.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorTakeTimed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TakeSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;",
        "Lrx/functions/Action0;"
    }
.end annotation


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Subscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber;, "Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0, p1}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 57
    iput-object p1, p0, Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber;->child:Lrx/Subscriber;

    .line 58
    return-void
.end method


# virtual methods
.method public call()V
    .locals 0

    .prologue
    .line 79
    .local p0, "this":Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber;, "Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber;->onCompleted()V

    .line 80
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 73
    .local p0, "this":Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber;, "Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 74
    invoke-virtual {p0}, Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber;->unsubscribe()V

    .line 75
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 67
    .local p0, "this":Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber;, "Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 68
    invoke-virtual {p0}, Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber;->unsubscribe()V

    .line 69
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
    .line 62
    .local p0, "this":Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber;, "Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 63
    return-void
.end method
