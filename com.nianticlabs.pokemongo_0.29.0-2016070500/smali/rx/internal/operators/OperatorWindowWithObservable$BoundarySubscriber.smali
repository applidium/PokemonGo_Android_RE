.class final Lrx/internal/operators/OperatorWindowWithObservable$BoundarySubscriber;
.super Lrx/Subscriber;
.source "OperatorWindowWithObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorWindowWithObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BoundarySubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TU;>;"
    }
.end annotation


# instance fields
.field final sub:Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Subscriber;Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<*>;",
            "Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservable$BoundarySubscriber;, "Lrx/internal/operators/OperatorWindowWithObservable$BoundarySubscriber<TT;TU;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    .local p2, "sub":Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber<TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 272
    iput-object p2, p0, Lrx/internal/operators/OperatorWindowWithObservable$BoundarySubscriber;->sub:Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;

    .line 273
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 292
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservable$BoundarySubscriber;, "Lrx/internal/operators/OperatorWindowWithObservable$BoundarySubscriber<TT;TU;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservable$BoundarySubscriber;->sub:Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->onCompleted()V

    .line 293
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 287
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservable$BoundarySubscriber;, "Lrx/internal/operators/OperatorWindowWithObservable$BoundarySubscriber<TT;TU;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservable$BoundarySubscriber;->sub:Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 288
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 282
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservable$BoundarySubscriber;, "Lrx/internal/operators/OperatorWindowWithObservable$BoundarySubscriber<TT;TU;>;"
    .local p1, "t":Ljava/lang/Object;, "TU;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservable$BoundarySubscriber;->sub:Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->replaceWindow()V

    .line 283
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 277
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservable$BoundarySubscriber;, "Lrx/internal/operators/OperatorWindowWithObservable$BoundarySubscriber<TT;TU;>;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorWindowWithObservable$BoundarySubscriber;->request(J)V

    .line 278
    return-void
.end method
