.class public final Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable;
.super Ljava/lang/Object;
.source "OperatorOnExceptionResumeNextViaObservable.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final resumeSequence:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable;, "Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable<TT;>;"
    .local p1, "resumeSequence":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable;->resumeSequence:Lrx/Observable;

    .line 54
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 49
    .local p0, "this":Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable;, "Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable;, "Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable$1;-><init>(Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable;Lrx/Subscriber;)V

    .line 107
    .local v0, "s":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 109
    return-object v0
.end method
