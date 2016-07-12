.class public final Lrx/internal/operators/OperatorReplay$SubjectWrapper;
.super Lrx/subjects/Subject;
.source "OperatorReplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubjectWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/subjects/Subject",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final subject:Lrx/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/Subject",
            "<TT;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable$OnSubscribe;Lrx/subjects/Subject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;",
            "Lrx/subjects/Subject",
            "<TT;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lrx/internal/operators/OperatorReplay$SubjectWrapper;, "Lrx/internal/operators/OperatorReplay$SubjectWrapper<TT;>;"
    .local p1, "func":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    .local p2, "subject":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TT;>;"
    invoke-direct {p0, p1}, Lrx/subjects/Subject;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 84
    iput-object p2, p0, Lrx/internal/operators/OperatorReplay$SubjectWrapper;->subject:Lrx/subjects/Subject;

    .line 85
    return-void
.end method


# virtual methods
.method public hasObservers()Z
    .locals 1

    .prologue
    .line 104
    .local p0, "this":Lrx/internal/operators/OperatorReplay$SubjectWrapper;, "Lrx/internal/operators/OperatorReplay$SubjectWrapper<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$SubjectWrapper;->subject:Lrx/subjects/Subject;

    invoke-virtual {v0}, Lrx/subjects/Subject;->hasObservers()Z

    move-result v0

    return v0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 99
    .local p0, "this":Lrx/internal/operators/OperatorReplay$SubjectWrapper;, "Lrx/internal/operators/OperatorReplay$SubjectWrapper<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$SubjectWrapper;->subject:Lrx/subjects/Subject;

    invoke-virtual {v0}, Lrx/subjects/Subject;->onCompleted()V

    .line 100
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 94
    .local p0, "this":Lrx/internal/operators/OperatorReplay$SubjectWrapper;, "Lrx/internal/operators/OperatorReplay$SubjectWrapper<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$SubjectWrapper;->subject:Lrx/subjects/Subject;

    invoke-virtual {v0, p1}, Lrx/subjects/Subject;->onError(Ljava/lang/Throwable;)V

    .line 95
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
    .line 89
    .local p0, "this":Lrx/internal/operators/OperatorReplay$SubjectWrapper;, "Lrx/internal/operators/OperatorReplay$SubjectWrapper<TT;>;"
    .local p1, "args":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$SubjectWrapper;->subject:Lrx/subjects/Subject;

    invoke-virtual {v0, p1}, Lrx/subjects/Subject;->onNext(Ljava/lang/Object;)V

    .line 90
    return-void
.end method
