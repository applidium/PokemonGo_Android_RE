.class public final Lrx/internal/operators/OperatorWindowWithStartEndObservable;
.super Ljava/lang/Object;
.source "OperatorWindowWithStartEndObservable.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;,
        Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<",
        "Lrx/Observable",
        "<TT;>;TT;>;"
    }
.end annotation


# instance fields
.field final windowClosingSelector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TU;+",
            "Lrx/Observable",
            "<+TV;>;>;"
        }
    .end annotation
.end field

.field final windowOpenings:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;Lrx/functions/Func1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TU;>;",
            "Lrx/functions/Func1",
            "<-TU;+",
            "Lrx/Observable",
            "<+TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithStartEndObservable;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable<TT;TU;TV;>;"
    .local p1, "windowOpenings":Lrx/Observable;, "Lrx/Observable<+TU;>;"
    .local p2, "windowClosingSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TU;+Lrx/Observable<+TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable;->windowOpenings:Lrx/Observable;

    .line 44
    iput-object p2, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable;->windowClosingSelector:Lrx/functions/Func1;

    .line 45
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 37
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithStartEndObservable;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable<TT;TU;TV;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorWindowWithStartEndObservable;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lrx/Observable",
            "<TT;>;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithStartEndObservable;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable<TT;TU;TV;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/Observable<TT;>;>;"
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    .line 50
    .local v0, "csub":Lrx/subscriptions/CompositeSubscription;
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 52
    new-instance v2, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;

    invoke-direct {v2, p0, p1, v0}, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;-><init>(Lrx/internal/operators/OperatorWindowWithStartEndObservable;Lrx/Subscriber;Lrx/subscriptions/CompositeSubscription;)V

    .line 54
    .local v2, "sub":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable<TT;TU;TV;>.SourceSubscriber;"
    new-instance v1, Lrx/internal/operators/OperatorWindowWithStartEndObservable$1;

    invoke-direct {v1, p0, v2}, Lrx/internal/operators/OperatorWindowWithStartEndObservable$1;-><init>(Lrx/internal/operators/OperatorWindowWithStartEndObservable;Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;)V

    .line 77
    .local v1, "open":Lrx/Subscriber;, "Lrx/Subscriber<TU;>;"
    invoke-virtual {v0, v2}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 78
    invoke-virtual {v0, v1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 80
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable;->windowOpenings:Lrx/Observable;

    invoke-virtual {v3, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 82
    return-object v2
.end method
