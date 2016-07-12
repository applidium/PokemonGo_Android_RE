.class final Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;
.super Lrx/Subscriber;
.source "OnSubscribeJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeJoin$ResultSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RightSubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber$RightDurationSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TTRight;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeJoin$ResultSink;)V
    .locals 0

    .prologue
    .line 215
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.RightSubscriber;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 297
    return-void
.end method


# virtual methods
.method expire(ILrx/Subscription;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "resource"    # Lrx/Subscription;

    .prologue
    .line 218
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.RightSubscriber;"
    const/4 v0, 0x0

    .line 219
    .local v0, "complete":Z
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v2, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->guard:Ljava/lang/Object;

    monitor-enter v2

    .line 220
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->rightMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->rightMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-boolean v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->rightDone:Z

    if-eqz v1, :cond_0

    .line 221
    const/4 v0, 0x1

    .line 223
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    if-eqz v0, :cond_1

    .line 225
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    .line 226
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->unsubscribe()V

    .line 230
    :goto_0
    return-void

    .line 223
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 228
    :cond_1
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->group:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1, p2}, Lrx/subscriptions/CompositeSubscription;->remove(Lrx/Subscription;)V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 4

    .prologue
    .line 281
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.RightSubscriber;"
    const/4 v0, 0x0

    .line 282
    .local v0, "complete":Z
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v2, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->guard:Ljava/lang/Object;

    monitor-enter v2

    .line 283
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->rightDone:Z

    .line 284
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-boolean v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->leftDone:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->rightMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 285
    :cond_0
    const/4 v0, 0x1

    .line 287
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    if-eqz v0, :cond_2

    .line 289
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    .line 290
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->unsubscribe()V

    .line 294
    :goto_0
    return-void

    .line 287
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 292
    :cond_2
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->group:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1, p0}, Lrx/subscriptions/CompositeSubscription;->remove(Lrx/Subscription;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 275
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.RightSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 276
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->unsubscribe()V

    .line 277
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRight;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.RightSubscriber;"
    .local p1, "args":Ljava/lang/Object;, "TTRight;"
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v12, v11, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->guard:Ljava/lang/Object;

    monitor-enter v12

    .line 237
    :try_start_0
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget v5, v11, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->rightId:I

    add-int/lit8 v13, v5, 0x1

    iput v13, v11, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->rightId:I

    .line 238
    .local v5, "id":I
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v11, v11, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->rightMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v13, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget v3, v11, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->leftId:I

    .line 240
    .local v3, "highLeftId":I
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 241
    new-instance v8, Lrx/subscriptions/SerialSubscription;

    invoke-direct {v8}, Lrx/subscriptions/SerialSubscription;-><init>()V

    .line 242
    .local v8, "md":Lrx/subscriptions/SerialSubscription;
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v11, v11, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->group:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v11, v8}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 246
    :try_start_1
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v11, v11, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->this$0:Lrx/internal/operators/OnSubscribeJoin;

    iget-object v11, v11, Lrx/internal/operators/OnSubscribeJoin;->rightDurationSelector:Lrx/functions/Func1;

    invoke-interface {v11, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable;

    .line 248
    .local v1, "duration":Lrx/Observable;, "Lrx/Observable<TTRightDuration;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber$RightDurationSubscriber;

    invoke-direct {v0, p0, v5}, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber$RightDurationSubscriber;-><init>(Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;I)V

    .line 249
    .local v0, "d2":Lrx/Subscriber;, "Lrx/Subscriber<TTRightDuration;>;"
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v11, v11, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->group:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v11, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 251
    invoke-virtual {v1, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 254
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v6, "leftValues":Ljava/util/List;, "Ljava/util/List<TTLeft;>;"
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v12, v11, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->guard:Ljava/lang/Object;

    monitor-enter v12
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 256
    :try_start_2
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v11, v11, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->leftMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 257
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;TTLeft;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ge v11, v3, :cond_0

    .line 258
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 261
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;TTLeft;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v11
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 268
    .end local v0    # "d2":Lrx/Subscriber;, "Lrx/Subscriber<TTRightDuration;>;"
    .end local v1    # "duration":Lrx/Observable;, "Lrx/Observable<TTRightDuration;>;"
    .end local v6    # "leftValues":Ljava/util/List;, "Ljava/util/List<TTLeft;>;"
    :catch_0
    move-exception v10

    .line 269
    .local v10, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, v10}, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 271
    .end local v10    # "t":Ljava/lang/Throwable;
    :cond_1
    return-void

    .line 240
    .end local v3    # "highLeftId":I
    .end local v5    # "id":I
    .end local v8    # "md":Lrx/subscriptions/SerialSubscription;
    :catchall_1
    move-exception v11

    :try_start_4
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v11

    .line 261
    .restart local v0    # "d2":Lrx/Subscriber;, "Lrx/Subscriber<TTRightDuration;>;"
    .restart local v1    # "duration":Lrx/Observable;, "Lrx/Observable<TTRightDuration;>;"
    .restart local v3    # "highLeftId":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "id":I
    .restart local v6    # "leftValues":Ljava/util/List;, "Ljava/util/List<TTLeft;>;"
    .restart local v8    # "md":Lrx/subscriptions/SerialSubscription;
    :cond_2
    :try_start_5
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 263
    :try_start_6
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 264
    .local v7, "lv":Ljava/lang/Object;, "TTLeft;"
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v11, v11, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->this$0:Lrx/internal/operators/OnSubscribeJoin;

    iget-object v11, v11, Lrx/internal/operators/OnSubscribeJoin;->resultSelector:Lrx/functions/Func2;

    invoke-interface {v11, v7, p1}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 265
    .local v9, "result":Ljava/lang/Object;, "TR;"
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v11, v11, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Lrx/Subscriber;

    invoke-virtual {v11, v9}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1
.end method
