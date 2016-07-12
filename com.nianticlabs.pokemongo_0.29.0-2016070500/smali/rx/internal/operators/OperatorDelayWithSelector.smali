.class public final Lrx/internal/operators/OperatorDelayWithSelector;
.super Ljava/lang/Object;
.source "OperatorDelayWithSelector.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final itemDelay:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field final source:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<+TT;>;"
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
            "<+TT;>;",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/OperatorDelayWithSelector;, "Lrx/internal/operators/OperatorDelayWithSelector<TT;TV;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "itemDelay":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lrx/internal/operators/OperatorDelayWithSelector;->source:Lrx/Observable;

    .line 40
    iput-object p2, p0, Lrx/internal/operators/OperatorDelayWithSelector;->itemDelay:Lrx/functions/Func1;

    .line 41
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    .local p0, "this":Lrx/internal/operators/OperatorDelayWithSelector;, "Lrx/internal/operators/OperatorDelayWithSelector<TT;TV;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorDelayWithSelector;->call(Lrx/Subscriber;)Lrx/Subscriber;

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
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/OperatorDelayWithSelector;, "Lrx/internal/operators/OperatorDelayWithSelector<TT;TV;>;"
    .local p1, "_child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/observers/SerializedSubscriber;

    invoke-direct {v0, p1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    .line 46
    .local v0, "child":Lrx/observers/SerializedSubscriber;, "Lrx/observers/SerializedSubscriber<TT;>;"
    invoke-static {}, Lrx/subjects/PublishSubject;->create()Lrx/subjects/PublishSubject;

    move-result-object v1

    .line 48
    .local v1, "delayedEmissions":Lrx/subjects/PublishSubject;, "Lrx/subjects/PublishSubject<Lrx/Observable<TT;>;>;"
    invoke-static {v1}, Lrx/Observable;->merge(Lrx/Observable;)Lrx/Observable;

    move-result-object v2

    invoke-static {v0}, Lrx/observers/Subscribers;->from(Lrx/Observer;)Lrx/Subscriber;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v2

    invoke-virtual {p1, v2}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 50
    new-instance v2, Lrx/internal/operators/OperatorDelayWithSelector$1;

    invoke-direct {v2, p0, p1, v1, v0}, Lrx/internal/operators/OperatorDelayWithSelector$1;-><init>(Lrx/internal/operators/OperatorDelayWithSelector;Lrx/Subscriber;Lrx/subjects/PublishSubject;Lrx/observers/SerializedSubscriber;)V

    return-object v2
.end method
