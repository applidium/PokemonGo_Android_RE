.class public final Lrx/internal/operators/OnSubscribeMulticastSelector;
.super Ljava/lang/Object;
.source "OnSubscribeMulticastSelector.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TInput:",
        "Ljava/lang/Object;",
        "TIntermediate:",
        "Ljava/lang/Object;",
        "TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TTResult;>;"
    }
.end annotation


# instance fields
.field final resultSelector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<TTIntermediate;>;+",
            "Lrx/Observable",
            "<TTResult;>;>;"
        }
    .end annotation
.end field

.field final source:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<+TTInput;>;"
        }
    .end annotation
.end field

.field final subjectFactory:Lrx/functions/Func0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func0",
            "<+",
            "Lrx/subjects/Subject",
            "<-TTInput;+TTIntermediate;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;Lrx/functions/Func0;Lrx/functions/Func1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TTInput;>;",
            "Lrx/functions/Func0",
            "<+",
            "Lrx/subjects/Subject",
            "<-TTInput;+TTIntermediate;>;>;",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<TTIntermediate;>;+",
            "Lrx/Observable",
            "<TTResult;>;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lrx/internal/operators/OnSubscribeMulticastSelector;, "Lrx/internal/operators/OnSubscribeMulticastSelector<TTInput;TTIntermediate;TTResult;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<+TTInput;>;"
    .local p2, "subjectFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<+Lrx/subjects/Subject<-TTInput;+TTIntermediate;>;>;"
    .local p3, "resultSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<TTIntermediate;>;+Lrx/Observable<TTResult;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeMulticastSelector;->source:Lrx/Observable;

    .line 48
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeMulticastSelector;->subjectFactory:Lrx/functions/Func0;

    .line 49
    iput-object p3, p0, Lrx/internal/operators/OnSubscribeMulticastSelector;->resultSelector:Lrx/functions/Func1;

    .line 50
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 39
    .local p0, "this":Lrx/internal/operators/OnSubscribeMulticastSelector;, "Lrx/internal/operators/OnSubscribeMulticastSelector<TTInput;TTIntermediate;TTResult;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeMulticastSelector;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TTResult;>;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lrx/internal/operators/OnSubscribeMulticastSelector;, "Lrx/internal/operators/OnSubscribeMulticastSelector<TTInput;TTIntermediate;TTResult;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TTResult;>;"
    :try_start_0
    new-instance v0, Lrx/internal/operators/OperatorMulticast;

    iget-object v4, p0, Lrx/internal/operators/OnSubscribeMulticastSelector;->source:Lrx/Observable;

    iget-object v5, p0, Lrx/internal/operators/OnSubscribeMulticastSelector;->subjectFactory:Lrx/functions/Func0;

    invoke-direct {v0, v4, v5}, Lrx/internal/operators/OperatorMulticast;-><init>(Lrx/Observable;Lrx/functions/Func0;)V

    .line 59
    .local v0, "connectable":Lrx/observables/ConnectableObservable;, "Lrx/observables/ConnectableObservable<TTIntermediate;>;"
    iget-object v4, p0, Lrx/internal/operators/OnSubscribeMulticastSelector;->resultSelector:Lrx/functions/Func1;

    invoke-interface {v4, v0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .local v1, "observable":Lrx/Observable;, "Lrx/Observable<TTResult;>;"
    new-instance v2, Lrx/observers/SafeSubscriber;

    invoke-direct {v2, p1}, Lrx/observers/SafeSubscriber;-><init>(Lrx/Subscriber;)V

    .line 67
    .local v2, "s":Lrx/observers/SafeSubscriber;, "Lrx/observers/SafeSubscriber<TTResult;>;"
    invoke-virtual {v1, v2}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 69
    new-instance v4, Lrx/internal/operators/OnSubscribeMulticastSelector$1;

    invoke-direct {v4, p0, v2}, Lrx/internal/operators/OnSubscribeMulticastSelector$1;-><init>(Lrx/internal/operators/OnSubscribeMulticastSelector;Lrx/observers/SafeSubscriber;)V

    invoke-virtual {v0, v4}, Lrx/observables/ConnectableObservable;->connect(Lrx/functions/Action1;)V

    .line 75
    .end local v0    # "connectable":Lrx/observables/ConnectableObservable;, "Lrx/observables/ConnectableObservable<TTIntermediate;>;"
    .end local v1    # "observable":Lrx/Observable;, "Lrx/Observable<TTResult;>;"
    .end local v2    # "s":Lrx/observers/SafeSubscriber;, "Lrx/observers/SafeSubscriber<TTResult;>;"
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v3

    .line 61
    .local v3, "t":Ljava/lang/Throwable;
    invoke-virtual {p1, v3}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
