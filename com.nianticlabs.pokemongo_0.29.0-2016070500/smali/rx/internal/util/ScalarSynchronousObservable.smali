.class public final Lrx/internal/util/ScalarSynchronousObservable;
.super Lrx/Observable;
.source "ScalarSynchronousObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/util/ScalarSynchronousObservable$ScalarSynchronousAction;,
        Lrx/internal/util/ScalarSynchronousObservable$NormalScheduledEmission;,
        Lrx/internal/util/ScalarSynchronousObservable$DirectScheduledEmission;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Observable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final t:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable;, "Lrx/internal/util/ScalarSynchronousObservable<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    new-instance v0, Lrx/internal/util/ScalarSynchronousObservable$1;

    invoke-direct {v0, p1}, Lrx/internal/util/ScalarSynchronousObservable$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lrx/Observable;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 51
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable;->t:Ljava/lang/Object;

    .line 52
    return-void
.end method

.method static synthetic access$100(Lrx/internal/util/ScalarSynchronousObservable;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lrx/internal/util/ScalarSynchronousObservable;

    .prologue
    .line 26
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable;->t:Ljava/lang/Object;

    return-object v0
.end method

.method public static final create(Ljava/lang/Object;)Lrx/internal/util/ScalarSynchronousObservable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/internal/util/ScalarSynchronousObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "t":Ljava/lang/Object;, "TT;"
    new-instance v0, Lrx/internal/util/ScalarSynchronousObservable;

    invoke-direct {v0, p0}, Lrx/internal/util/ScalarSynchronousObservable;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable;, "Lrx/internal/util/ScalarSynchronousObservable<TT;>;"
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable;->t:Ljava/lang/Object;

    return-object v0
.end method

.method public scalarFlatMap(Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<+TR;>;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable;, "Lrx/internal/util/ScalarSynchronousObservable<TT;>;"
    .local p1, "func":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    new-instance v0, Lrx/internal/util/ScalarSynchronousObservable$2;

    invoke-direct {v0, p0, p1}, Lrx/internal/util/ScalarSynchronousObservable$2;-><init>(Lrx/internal/util/ScalarSynchronousObservable;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/internal/util/ScalarSynchronousObservable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public scalarScheduleOn(Lrx/Scheduler;)Lrx/Observable;
    .locals 3
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable;, "Lrx/internal/util/ScalarSynchronousObservable<TT;>;"
    instance-of v1, p1, Lrx/internal/schedulers/EventLoopsScheduler;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 65
    check-cast v0, Lrx/internal/schedulers/EventLoopsScheduler;

    .line 66
    .local v0, "es":Lrx/internal/schedulers/EventLoopsScheduler;
    new-instance v1, Lrx/internal/util/ScalarSynchronousObservable$DirectScheduledEmission;

    iget-object v2, p0, Lrx/internal/util/ScalarSynchronousObservable;->t:Ljava/lang/Object;

    invoke-direct {v1, v0, v2}, Lrx/internal/util/ScalarSynchronousObservable$DirectScheduledEmission;-><init>(Lrx/internal/schedulers/EventLoopsScheduler;Ljava/lang/Object;)V

    invoke-static {v1}, Lrx/internal/util/ScalarSynchronousObservable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v1

    .line 68
    .end local v0    # "es":Lrx/internal/schedulers/EventLoopsScheduler;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lrx/internal/util/ScalarSynchronousObservable$NormalScheduledEmission;

    iget-object v2, p0, Lrx/internal/util/ScalarSynchronousObservable;->t:Ljava/lang/Object;

    invoke-direct {v1, p1, v2}, Lrx/internal/util/ScalarSynchronousObservable$NormalScheduledEmission;-><init>(Lrx/Scheduler;Ljava/lang/Object;)V

    invoke-static {v1}, Lrx/internal/util/ScalarSynchronousObservable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v1

    goto :goto_0
.end method
