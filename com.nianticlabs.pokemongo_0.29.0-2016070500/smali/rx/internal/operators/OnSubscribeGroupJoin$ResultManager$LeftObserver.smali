.class final Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;
.super Lrx/Subscriber;
.source "OnSubscribeGroupJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LeftObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT1;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;)V
    .locals 0

    .prologue
    .line 160
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.LeftObserver;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 5

    .prologue
    .line 201
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.LeftObserver;"
    const/4 v0, 0x0

    .line 202
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v3, v2, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 203
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->leftDone:Z

    .line 204
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-boolean v2, v2, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->rightDone:Z

    if-eqz v2, :cond_0

    .line 205
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v2, v2, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->leftMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    :try_start_1
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v2, v2, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->leftMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 207
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v2, v2, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->rightMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 209
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    :cond_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    invoke-virtual {v2, v0}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->complete(Ljava/util/List;)V

    .line 211
    return-void

    .line 209
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
    .line 215
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.LeftObserver;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->errorAll(Ljava/lang/Throwable;)V

    .line 216
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.LeftObserver;"
    .local p1, "args":Ljava/lang/Object;, "TT1;"
    :try_start_0
    invoke-static {}, Lrx/subjects/PublishSubject;->create()Lrx/subjects/PublishSubject;

    move-result-object v6

    .line 166
    .local v6, "subj":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT2;TT2;>;"
    new-instance v7, Lrx/observers/SerializedObserver;

    invoke-direct {v7, v6}, Lrx/observers/SerializedObserver;-><init>(Lrx/Observer;)V

    .line 168
    .local v7, "subjSerial":Lrx/Observer;, "Lrx/Observer<TT2;>;"
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v12, v11, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->guard:Ljava/lang/Object;

    monitor-enter v12
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :try_start_1
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget v3, v11, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->leftIds:I

    add-int/lit8 v13, v3, 0x1

    iput v13, v11, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->leftIds:I

    .line 170
    .local v3, "id":I
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v11, v11, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->leftMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v13, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    :try_start_2
    new-instance v11, Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc;

    iget-object v12, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v12, v12, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->cancel:Lrx/subscriptions/RefCountSubscription;

    invoke-direct {v11, v6, v12}, Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc;-><init>(Lrx/Observable;Lrx/subscriptions/RefCountSubscription;)V

    invoke-static {v11}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v10

    .line 175
    .local v10, "window":Lrx/Observable;, "Lrx/Observable<TT2;>;"
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v11, v11, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->this$0:Lrx/internal/operators/OnSubscribeGroupJoin;

    iget-object v11, v11, Lrx/internal/operators/OnSubscribeGroupJoin;->leftDuration:Lrx/functions/Func1;

    invoke-interface {v11, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable;

    .line 177
    .local v1, "duration":Lrx/Observable;, "Lrx/Observable<TD1;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftDurationObserver;

    iget-object v11, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    invoke-direct {v0, v11, v3}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftDurationObserver;-><init>(Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;I)V

    .line 178
    .local v0, "d1":Lrx/Subscriber;, "Lrx/Subscriber<TD1;>;"
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v11, v11, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->group:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v11, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 179
    invoke-virtual {v1, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 181
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v11, v11, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->this$0:Lrx/internal/operators/OnSubscribeGroupJoin;

    iget-object v11, v11, Lrx/internal/operators/OnSubscribeGroupJoin;->resultSelector:Lrx/functions/Func2;

    invoke-interface {v11, p1, v10}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 184
    .local v4, "result":Ljava/lang/Object;, "TR;"
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v12, v11, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->guard:Ljava/lang/Object;

    monitor-enter v12
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 185
    :try_start_3
    new-instance v5, Ljava/util/ArrayList;

    iget-object v11, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v11, v11, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->rightMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 186
    .local v5, "rightMapValues":Ljava/util/List;, "Ljava/util/List<TT2;>;"
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 188
    :try_start_4
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v11, v11, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->subscriber:Lrx/Subscriber;

    invoke-virtual {v11, v4}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 189
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 190
    .local v9, "t2":Ljava/lang/Object;, "TT2;"
    invoke-interface {v7, v9}, Lrx/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 194
    .end local v0    # "d1":Lrx/Subscriber;, "Lrx/Subscriber<TD1;>;"
    .end local v1    # "duration":Lrx/Observable;, "Lrx/Observable<TD1;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "id":I
    .end local v4    # "result":Ljava/lang/Object;, "TR;"
    .end local v5    # "rightMapValues":Ljava/util/List;, "Ljava/util/List<TT2;>;"
    .end local v6    # "subj":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT2;TT2;>;"
    .end local v7    # "subjSerial":Lrx/Observer;, "Lrx/Observer<TT2;>;"
    .end local v9    # "t2":Ljava/lang/Object;, "TT2;"
    .end local v10    # "window":Lrx/Observable;, "Lrx/Observable<TT2;>;"
    :catch_0
    move-exception v8

    .line 195
    .local v8, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, v8}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;->onError(Ljava/lang/Throwable;)V

    .line 197
    .end local v8    # "t":Ljava/lang/Throwable;
    :cond_0
    return-void

    .line 171
    .restart local v6    # "subj":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT2;TT2;>;"
    .restart local v7    # "subjSerial":Lrx/Observer;, "Lrx/Observer<TT2;>;"
    :catchall_0
    move-exception v11

    :try_start_5
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v11
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 186
    .restart local v0    # "d1":Lrx/Subscriber;, "Lrx/Subscriber<TD1;>;"
    .restart local v1    # "duration":Lrx/Observable;, "Lrx/Observable<TD1;>;"
    .restart local v3    # "id":I
    .restart local v4    # "result":Ljava/lang/Object;, "TR;"
    .restart local v10    # "window":Lrx/Observable;, "Lrx/Observable<TT2;>;"
    :catchall_1
    move-exception v11

    :try_start_7
    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v11
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
.end method
