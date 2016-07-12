.class final Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;
.super Lrx/Subscriber;
.source "OperatorRetryWithPredicate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorRetryWithPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SourceSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<",
        "Lrx/Observable",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field static final ATTEMPTS_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<",
            "Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile attempts:I

.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final inner:Lrx/Scheduler$Worker;

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

.field final serialSubscription:Lrx/subscriptions/SerialSubscription;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    const-class v0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;

    const-string v1, "attempts"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;->ATTEMPTS_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;Lrx/functions/Func2;Lrx/Scheduler$Worker;Lrx/subscriptions/SerialSubscription;)V
    .locals 0
    .param p3, "inner"    # Lrx/Scheduler$Worker;
    .param p4, "serialSubscription"    # Lrx/subscriptions/SerialSubscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Lrx/functions/Func2",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lrx/Scheduler$Worker;",
            "Lrx/subscriptions/SerialSubscription;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;, "Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p2, "predicate":Lrx/functions/Func2;, "Lrx/functions/Func2<Ljava/lang/Integer;Ljava/lang/Throwable;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 58
    iput-object p1, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;->child:Lrx/Subscriber;

    .line 59
    iput-object p2, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;->predicate:Lrx/functions/Func2;

    .line 60
    iput-object p3, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;->inner:Lrx/Scheduler$Worker;

    .line 61
    iput-object p4, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;->serialSubscription:Lrx/subscriptions/SerialSubscription;

    .line 62
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    .prologue
    .line 68
    .local p0, "this":Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;, "Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber<TT;>;"
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 72
    .local p0, "this":Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;, "Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 73
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;, "Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber<TT;>;"
    check-cast p1, Lrx/Observable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;->onNext(Lrx/Observable;)V

    return-void
.end method

.method public onNext(Lrx/Observable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;, "Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber<TT;>;"
    .local p1, "o":Lrx/Observable;, "Lrx/Observable<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;->inner:Lrx/Scheduler$Worker;

    new-instance v1, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;-><init>(Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;Lrx/Observable;)V

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 123
    return-void
.end method
