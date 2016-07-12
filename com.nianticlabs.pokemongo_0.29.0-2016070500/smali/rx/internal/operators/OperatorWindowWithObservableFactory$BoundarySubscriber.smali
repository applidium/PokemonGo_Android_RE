.class final Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber;
.super Lrx/Subscriber;
.source "OperatorWindowWithObservableFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorWindowWithObservableFactory;
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
.field done:Z

.field final sub:Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber",
            "<TT;TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Subscriber;Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<*>;",
            "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber",
            "<TT;TU;>;)V"
        }
    .end annotation

    .prologue
    .line 290
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber<TT;TU;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    .local p2, "sub":Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber<TT;TU;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 291
    iput-object p2, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber;->sub:Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;

    .line 292
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 314
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber<TT;TU;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber;->done:Z

    if-nez v0, :cond_0

    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber;->done:Z

    .line 316
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber;->sub:Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->onCompleted()V

    .line 318
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 309
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber<TT;TU;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber;->sub:Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 310
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
    .line 301
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber<TT;TU;>;"
    .local p1, "t":Ljava/lang/Object;, "TU;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber;->done:Z

    if-nez v0, :cond_0

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber;->done:Z

    .line 303
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber;->sub:Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->replaceWindow()V

    .line 305
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 296
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber<TT;TU;>;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber;->request(J)V

    .line 297
    return-void
.end method
