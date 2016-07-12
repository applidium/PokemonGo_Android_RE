.class public final Lrx/internal/operators/OperatorReplay;
.super Ljava/lang/Object;
.source "OperatorReplay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorReplay$SubjectWrapper;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createScheduledSubject(Lrx/subjects/Subject;Lrx/Scheduler;)Lrx/subjects/Subject;
    .locals 3
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/subjects/Subject",
            "<TT;TT;>;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/subjects/Subject",
            "<TT;TT;>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "subject":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TT;>;"
    invoke-virtual {p0, p1}, Lrx/subjects/Subject;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 47
    .local v0, "observedOn":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorReplay$SubjectWrapper;

    new-instance v2, Lrx/internal/operators/OperatorReplay$1;

    invoke-direct {v2, v0}, Lrx/internal/operators/OperatorReplay$1;-><init>(Lrx/Observable;)V

    invoke-direct {v1, v2, p0}, Lrx/internal/operators/OperatorReplay$SubjectWrapper;-><init>(Lrx/Observable$OnSubscribe;Lrx/subjects/Subject;)V

    .line 55
    .local v1, "s":Lrx/internal/operators/OperatorReplay$SubjectWrapper;, "Lrx/internal/operators/OperatorReplay$SubjectWrapper<TT;>;"
    return-object v1
.end method

.method public static subscriberOf(Lrx/Observable;)Lrx/Observable$OnSubscribe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;)",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "target":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorReplay$2;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorReplay$2;-><init>(Lrx/Observable;)V

    return-object v0
.end method
