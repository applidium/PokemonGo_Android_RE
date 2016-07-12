.class public Lrx/internal/operators/OperatorSubscribeOn;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

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
        "<TT;",
        "Lrx/Observable",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final scheduler:Lrx/Scheduler;


# direct methods
.method public constructor <init>(Lrx/Scheduler;)V
    .locals 0
    .param p1, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 35
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn;, "Lrx/internal/operators/OperatorSubscribeOn<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lrx/internal/operators/OperatorSubscribeOn;->scheduler:Lrx/Scheduler;

    .line 37
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn;, "Lrx/internal/operators/OperatorSubscribeOn<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorSubscribeOn;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)",
            "Lrx/Subscriber",
            "<-",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn;, "Lrx/internal/operators/OperatorSubscribeOn<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v1, p0, Lrx/internal/operators/OperatorSubscribeOn;->scheduler:Lrx/Scheduler;

    invoke-virtual {v1}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    .line 42
    .local v0, "inner":Lrx/Scheduler$Worker;
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 43
    new-instance v1, Lrx/internal/operators/OperatorSubscribeOn$1;

    invoke-direct {v1, p0, p1, p1, v0}, Lrx/internal/operators/OperatorSubscribeOn$1;-><init>(Lrx/internal/operators/OperatorSubscribeOn;Lrx/Subscriber;Lrx/Subscriber;Lrx/Scheduler$Worker;)V

    return-object v1
.end method
