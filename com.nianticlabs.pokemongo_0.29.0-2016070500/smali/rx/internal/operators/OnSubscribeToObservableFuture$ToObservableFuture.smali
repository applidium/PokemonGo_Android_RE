.class Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;
.super Ljava/lang/Object;
.source "OnSubscribeToObservableFuture.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeToObservableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ToObservableFuture"
.end annotation

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
.field private final that:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private final time:J

.field private final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;, "Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture<TT;>;"
    .local p1, "that":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;->that:Ljava/util/concurrent/Future;

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;->time:J

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;->unit:Ljava/util/concurrent/TimeUnit;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;, "Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture<TT;>;"
    .local p1, "that":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;->that:Ljava/util/concurrent/Future;

    .line 55
    iput-wide p2, p0, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;->time:J

    .line 56
    iput-object p4, p0, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;->unit:Ljava/util/concurrent/TimeUnit;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;)Ljava/util/concurrent/Future;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;

    .prologue
    .line 42
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;->that:Ljava/util/concurrent/Future;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 42
    .local p0, "this":Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;, "Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;, "Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v2, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture$1;

    invoke-direct {v2, p0}, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture$1;-><init>(Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;)V

    invoke-static {v2}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v2

    invoke-virtual {p1, v2}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 70
    :try_start_0
    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;->unit:Ljava/util/concurrent/TimeUnit;

    if-nez v2, :cond_2

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;->that:Ljava/util/concurrent/Future;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    .line 74
    .local v1, "value":Ljava/lang/Object;, "TT;"
    :goto_1
    invoke-virtual {p1, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 75
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    .end local v1    # "value":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 73
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;->that:Ljava/util/concurrent/Future;

    iget-wide v4, p0, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;->time:J

    iget-object v3, p0, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1
.end method
