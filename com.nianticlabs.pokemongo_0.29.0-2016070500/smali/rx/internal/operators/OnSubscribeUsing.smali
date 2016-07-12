.class public final Lrx/internal/operators/OnSubscribeUsing;
.super Ljava/lang/Object;
.source "OnSubscribeUsing.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeUsing$1;,
        Lrx/internal/operators/OnSubscribeUsing$DisposeAction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "Resource:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final dispose:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1",
            "<-TResource;>;"
        }
    .end annotation
.end field

.field private final disposeEagerly:Z

.field private final observableFactory:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TResource;+",
            "Lrx/Observable",
            "<+TT;>;>;"
        }
    .end annotation
.end field

.field private final resourceFactory:Lrx/functions/Func0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func0",
            "<TResource;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;Z)V
    .locals 0
    .param p4, "disposeEagerly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func0",
            "<TResource;>;",
            "Lrx/functions/Func1",
            "<-TResource;+",
            "Lrx/Observable",
            "<+TT;>;>;",
            "Lrx/functions/Action1",
            "<-TResource;>;Z)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lrx/internal/operators/OnSubscribeUsing;, "Lrx/internal/operators/OnSubscribeUsing<TT;TResource;>;"
    .local p1, "resourceFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<TResource;>;"
    .local p2, "observableFactory":Lrx/functions/Func1;, "Lrx/functions/Func1<-TResource;+Lrx/Observable<+TT;>;>;"
    .local p3, "dispose":Lrx/functions/Action1;, "Lrx/functions/Action1<-TResource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeUsing;->resourceFactory:Lrx/functions/Func0;

    .line 41
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeUsing;->observableFactory:Lrx/functions/Func1;

    .line 42
    iput-object p3, p0, Lrx/internal/operators/OnSubscribeUsing;->dispose:Lrx/functions/Action1;

    .line 43
    iput-boolean p4, p0, Lrx/internal/operators/OnSubscribeUsing;->disposeEagerly:Z

    .line 44
    return-void
.end method

.method private disposeEagerlyIfRequested(Lrx/functions/Action0;)Ljava/lang/Throwable;
    .locals 2
    .param p1, "disposeOnceOnly"    # Lrx/functions/Action0;

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribeUsing;, "Lrx/internal/operators/OnSubscribeUsing<TT;TResource;>;"
    const/4 v0, 0x0

    .line 88
    iget-boolean v1, p0, Lrx/internal/operators/OnSubscribeUsing;->disposeEagerly:Z

    if-eqz v1, :cond_0

    .line 90
    :try_start_0
    invoke-interface {p1}, Lrx/functions/Action0;->call()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_0
    :goto_0
    return-object v0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Throwable;
    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    .local p0, "this":Lrx/internal/operators/OnSubscribeUsing;, "Lrx/internal/operators/OnSubscribeUsing<TT;TResource;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeUsing;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lrx/internal/operators/OnSubscribeUsing;, "Lrx/internal/operators/OnSubscribeUsing<TT;TResource;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :try_start_0
    iget-object v6, p0, Lrx/internal/operators/OnSubscribeUsing;->resourceFactory:Lrx/functions/Func0;

    invoke-interface {v6}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v4

    .line 54
    .local v4, "resource":Ljava/lang/Object;, "TResource;"
    new-instance v1, Lrx/internal/operators/OnSubscribeUsing$DisposeAction;

    iget-object v6, p0, Lrx/internal/operators/OnSubscribeUsing;->dispose:Lrx/functions/Action1;

    const/4 v7, 0x0

    invoke-direct {v1, v6, v4, v7}, Lrx/internal/operators/OnSubscribeUsing$DisposeAction;-><init>(Lrx/functions/Action1;Ljava/lang/Object;Lrx/internal/operators/OnSubscribeUsing$1;)V

    .line 57
    .local v1, "disposeOnceOnly":Lrx/internal/operators/OnSubscribeUsing$DisposeAction;, "Lrx/internal/operators/OnSubscribeUsing$DisposeAction<TResource;>;"
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 59
    iget-object v6, p0, Lrx/internal/operators/OnSubscribeUsing;->observableFactory:Lrx/functions/Func1;

    invoke-interface {v6, v4}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lrx/Observable;

    .line 64
    .local v5, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    iget-boolean v6, p0, Lrx/internal/operators/OnSubscribeUsing;->disposeEagerly:Z

    if-eqz v6, :cond_0

    .line 65
    invoke-virtual {v5, v1}, Lrx/Observable;->doOnTerminate(Lrx/functions/Action0;)Lrx/Observable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 72
    .local v3, "observable":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    :goto_0
    :try_start_1
    invoke-static {p1}, Lrx/observers/Subscribers;->wrap(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v6

    invoke-virtual {v3, v6}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 85
    .end local v1    # "disposeOnceOnly":Lrx/internal/operators/OnSubscribeUsing$DisposeAction;, "Lrx/internal/operators/OnSubscribeUsing$DisposeAction<TResource;>;"
    .end local v3    # "observable":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .end local v4    # "resource":Ljava/lang/Object;, "TResource;"
    .end local v5    # "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    :goto_1
    return-void

    .line 69
    .restart local v1    # "disposeOnceOnly":Lrx/internal/operators/OnSubscribeUsing$DisposeAction;, "Lrx/internal/operators/OnSubscribeUsing$DisposeAction<TResource;>;"
    .restart local v4    # "resource":Ljava/lang/Object;, "TResource;"
    .restart local v5    # "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    :cond_0
    move-object v3, v5

    .restart local v3    # "observable":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    goto :goto_0

    .line 73
    :catch_0
    move-exception v2

    .line 74
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-direct {p0, v1}, Lrx/internal/operators/OnSubscribeUsing;->disposeEagerlyIfRequested(Lrx/functions/Action0;)Ljava/lang/Throwable;

    move-result-object v0

    .line 75
    .local v0, "disposeError":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 76
    new-instance v6, Lrx/exceptions/CompositeException;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Throwable;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v6}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 81
    .end local v0    # "disposeError":Ljava/lang/Throwable;
    .end local v1    # "disposeOnceOnly":Lrx/internal/operators/OnSubscribeUsing$DisposeAction;, "Lrx/internal/operators/OnSubscribeUsing$DisposeAction<TResource;>;"
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v3    # "observable":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .end local v4    # "resource":Ljava/lang/Object;, "TResource;"
    .end local v5    # "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    :catch_1
    move-exception v2

    .line 83
    .restart local v2    # "e":Ljava/lang/Throwable;
    invoke-virtual {p1, v2}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 79
    .restart local v0    # "disposeError":Ljava/lang/Throwable;
    .restart local v1    # "disposeOnceOnly":Lrx/internal/operators/OnSubscribeUsing$DisposeAction;, "Lrx/internal/operators/OnSubscribeUsing$DisposeAction<TResource;>;"
    .restart local v3    # "observable":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .restart local v4    # "resource":Ljava/lang/Object;, "TResource;"
    .restart local v5    # "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    :cond_1
    :try_start_3
    invoke-virtual {p1, v2}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method
