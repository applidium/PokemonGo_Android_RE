.class public final Lrx/internal/operators/OnSubscribeDefer;
.super Ljava/lang/Object;
.source "OnSubscribeDefer.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final observableFactory:Lrx/functions/Func0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func0",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Func0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func0",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lrx/internal/operators/OnSubscribeDefer;, "Lrx/internal/operators/OnSubscribeDefer<TT;>;"
    .local p1, "observableFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<+Lrx/Observable<+TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeDefer;->observableFactory:Lrx/functions/Func0;

    .line 39
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    .local p0, "this":Lrx/internal/operators/OnSubscribeDefer;, "Lrx/internal/operators/OnSubscribeDefer<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeDefer;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/OnSubscribeDefer;, "Lrx/internal/operators/OnSubscribeDefer<TT;>;"
    .local p1, "s":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeDefer;->observableFactory:Lrx/functions/Func0;

    invoke-interface {v2}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Observable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .local v0, "o":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static {p1}, Lrx/observers/Subscribers;->wrap(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 51
    .end local v0    # "o":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {p1, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
