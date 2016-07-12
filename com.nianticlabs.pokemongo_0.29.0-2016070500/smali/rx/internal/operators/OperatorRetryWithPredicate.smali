.class public final Lrx/internal/operators/OperatorRetryWithPredicate;
.super Ljava/lang/Object;
.source "OperatorRetryWithPredicate.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;
    }
.end annotation

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
.field final predicate:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Func2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lrx/internal/operators/OperatorRetryWithPredicate;, "Lrx/internal/operators/OperatorRetryWithPredicate<TT;>;"
    .local p1, "predicate":Lrx/functions/Func2;, "Lrx/functions/Func2<Ljava/lang/Integer;Ljava/lang/Throwable;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lrx/internal/operators/OperatorRetryWithPredicate;->predicate:Lrx/functions/Func2;

    .line 31
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 27
    .local p0, "this":Lrx/internal/operators/OperatorRetryWithPredicate;, "Lrx/internal/operators/OperatorRetryWithPredicate<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorRetryWithPredicate;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 4
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
    .line 35
    .local p0, "this":Lrx/internal/operators/OperatorRetryWithPredicate;, "Lrx/internal/operators/OperatorRetryWithPredicate<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->trampoline()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v2}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    .line 36
    .local v0, "inner":Lrx/Scheduler$Worker;
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 38
    new-instance v1, Lrx/subscriptions/SerialSubscription;

    invoke-direct {v1}, Lrx/subscriptions/SerialSubscription;-><init>()V

    .line 40
    .local v1, "serialSubscription":Lrx/subscriptions/SerialSubscription;
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 42
    new-instance v2, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;

    iget-object v3, p0, Lrx/internal/operators/OperatorRetryWithPredicate;->predicate:Lrx/functions/Func2;

    invoke-direct {v2, p1, v3, v0, v1}, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;-><init>(Lrx/Subscriber;Lrx/functions/Func2;Lrx/Scheduler$Worker;Lrx/subscriptions/SerialSubscription;)V

    return-object v2
.end method
