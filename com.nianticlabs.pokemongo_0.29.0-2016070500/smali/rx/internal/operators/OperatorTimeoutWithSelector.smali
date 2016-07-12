.class public Lrx/internal/operators/OperatorTimeoutWithSelector;
.super Lrx/internal/operators/OperatorTimeoutBase;
.source "OperatorTimeoutWithSelector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/OperatorTimeoutBase",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/Observable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func0",
            "<+",
            "Lrx/Observable",
            "<TU;>;>;",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<TV;>;>;",
            "Lrx/Observable",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector;, "Lrx/internal/operators/OperatorTimeoutWithSelector<TT;TU;TV;>;"
    .local p1, "firstTimeoutSelector":Lrx/functions/Func0;, "Lrx/functions/Func0<+Lrx/Observable<TU;>;>;"
    .local p2, "timeoutSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<TV;>;>;"
    .local p3, "other":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorTimeoutWithSelector$1;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorTimeoutWithSelector$1;-><init>(Lrx/functions/Func0;)V

    new-instance v1, Lrx/internal/operators/OperatorTimeoutWithSelector$2;

    invoke-direct {v1, p2}, Lrx/internal/operators/OperatorTimeoutWithSelector$2;-><init>(Lrx/functions/Func1;)V

    invoke-static {}, Lrx/schedulers/Schedulers;->immediate()Lrx/Scheduler;

    move-result-object v2

    invoke-direct {p0, v0, v1, p3, v2}, Lrx/internal/operators/OperatorTimeoutBase;-><init>(Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub;Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;Lrx/Observable;Lrx/Scheduler;)V

    .line 112
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 1
    .param p1, "x0"    # Lrx/Subscriber;

    .prologue
    .line 34
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector;, "Lrx/internal/operators/OperatorTimeoutWithSelector<TT;TU;TV;>;"
    invoke-super {p0, p1}, Lrx/internal/operators/OperatorTimeoutBase;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method
