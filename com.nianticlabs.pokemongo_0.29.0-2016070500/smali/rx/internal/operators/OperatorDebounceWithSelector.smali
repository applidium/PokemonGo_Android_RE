.class public final Lrx/internal/operators/OperatorDebounceWithSelector;
.super Ljava/lang/Object;
.source "OperatorDebounceWithSelector.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final selector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<TU;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Func1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<TU;>;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithSelector;, "Lrx/internal/operators/OperatorDebounceWithSelector<TT;TU;>;"
    .local p1, "selector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<TU;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lrx/internal/operators/OperatorDebounceWithSelector;->selector:Lrx/functions/Func1;

    .line 37
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithSelector;, "Lrx/internal/operators/OperatorDebounceWithSelector<TT;TU;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorDebounceWithSelector;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 3
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
    .line 41
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithSelector;, "Lrx/internal/operators/OperatorDebounceWithSelector<TT;TU;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/observers/SerializedSubscriber;

    invoke-direct {v0, p1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    .line 42
    .local v0, "s":Lrx/observers/SerializedSubscriber;, "Lrx/observers/SerializedSubscriber<TT;>;"
    new-instance v1, Lrx/subscriptions/SerialSubscription;

    invoke-direct {v1}, Lrx/subscriptions/SerialSubscription;-><init>()V

    .line 43
    .local v1, "ssub":Lrx/subscriptions/SerialSubscription;
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 45
    new-instance v2, Lrx/internal/operators/OperatorDebounceWithSelector$1;

    invoke-direct {v2, p0, p1, v0, v1}, Lrx/internal/operators/OperatorDebounceWithSelector$1;-><init>(Lrx/internal/operators/OperatorDebounceWithSelector;Lrx/Subscriber;Lrx/observers/SerializedSubscriber;Lrx/subscriptions/SerialSubscription;)V

    return-object v2
.end method
