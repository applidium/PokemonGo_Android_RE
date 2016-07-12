.class final Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;
.super Lrx/Subscriber;
.source "OnSubscribeGroupJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RightDurationObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TD2;>;"
    }
.end annotation


# instance fields
.field final id:I

.field once:Z

.field final synthetic this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;I)V
    .locals 1
    .param p2, "id"    # I

    .prologue
    .line 308
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.RightDurationObserver;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;->once:Z

    .line 309
    iput p2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;->id:I

    .line 310
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    .prologue
    .line 314
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.RightDurationObserver;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;->once:Z

    if-eqz v0, :cond_0

    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;->once:Z

    .line 316
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v1, v0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->guard:Ljava/lang/Object;

    monitor-enter v1

    .line 317
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->rightMap:Ljava/util/Map;

    iget v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->group:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0, p0}, Lrx/subscriptions/CompositeSubscription;->remove(Lrx/Subscription;)V

    .line 321
    :cond_0
    return-void

    .line 318
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 325
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.RightDurationObserver;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->errorMain(Ljava/lang/Throwable;)V

    .line 326
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD2;)V"
        }
    .end annotation

    .prologue
    .line 330
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.RightDurationObserver;"
    .local p1, "args":Ljava/lang/Object;, "TD2;"
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;->onCompleted()V

    .line 331
    return-void
.end method
