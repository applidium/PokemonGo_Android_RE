.class final Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;
.super Lrx/Subscriber;
.source "OnSubscribeGroupJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RightObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT2;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;)V
    .locals 0

    .prologue
    .line 221
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.RightObserver;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 5

    .prologue
    .line 251
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.RightObserver;"
    const/4 v0, 0x0

    .line 252
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v3, v2, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 253
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->rightDone:Z

    .line 254
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-boolean v2, v2, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->leftDone:Z

    if-eqz v2, :cond_0

    .line 255
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v2, v2, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->leftMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    :try_start_1
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v2, v2, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->leftMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 257
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v2, v2, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->rightMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 259
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    :cond_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 260
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    invoke-virtual {v2, v0}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->complete(Ljava/util/List;)V

    .line 261
    return-void

    .line 259
    :catchall_0
    move-exception v2

    :goto_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 265
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.RightObserver;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->errorAll(Ljava/lang/Throwable;)V

    .line 266
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.RightObserver;"
    .local p1, "args":Ljava/lang/Object;, "TT2;"
    :try_start_0
    iget-object v7, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v8, v7, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->guard:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :try_start_1
    iget-object v7, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget v3, v7, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->rightIds:I

    add-int/lit8 v9, v3, 0x1

    iput v9, v7, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->rightIds:I

    .line 228
    .local v3, "id":I
    iget-object v7, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v7, v7, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->rightMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    :try_start_2
    iget-object v7, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v7, v7, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->this$0:Lrx/internal/operators/OnSubscribeGroupJoin;

    iget-object v7, v7, Lrx/internal/operators/OnSubscribeGroupJoin;->rightDuration:Lrx/functions/Func1;

    invoke-interface {v7, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable;

    .line 232
    .local v1, "duration":Lrx/Observable;, "Lrx/Observable<TD2;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;

    iget-object v7, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    invoke-direct {v0, v7, v3}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;-><init>(Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;I)V

    .line 234
    .local v0, "d2":Lrx/Subscriber;, "Lrx/Subscriber<TD2;>;"
    iget-object v7, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v7, v7, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->group:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v7, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 235
    invoke-virtual {v1, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 238
    iget-object v7, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v8, v7, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->guard:Ljava/lang/Object;

    monitor-enter v8
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 239
    :try_start_3
    new-instance v4, Ljava/util/ArrayList;

    iget-object v7, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v7, v7, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->leftMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 240
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 241
    :try_start_4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lrx/Observer;

    .line 242
    .local v5, "o":Lrx/Observer;, "Lrx/Observer<TT2;>;"
    invoke-interface {v5, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 244
    .end local v0    # "d2":Lrx/Subscriber;, "Lrx/Subscriber<TD2;>;"
    .end local v1    # "duration":Lrx/Observable;, "Lrx/Observable<TD2;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "id":I
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    .end local v5    # "o":Lrx/Observer;, "Lrx/Observer<TT2;>;"
    :catch_0
    move-exception v6

    .line 245
    .local v6, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, v6}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;->onError(Ljava/lang/Throwable;)V

    .line 247
    .end local v6    # "t":Ljava/lang/Throwable;
    :cond_0
    return-void

    .line 229
    :catchall_0
    move-exception v7

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v7
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 240
    .restart local v0    # "d2":Lrx/Subscriber;, "Lrx/Subscriber<TD2;>;"
    .restart local v1    # "duration":Lrx/Observable;, "Lrx/Observable<TD2;>;"
    .restart local v3    # "id":I
    :catchall_1
    move-exception v7

    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v7
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
.end method
