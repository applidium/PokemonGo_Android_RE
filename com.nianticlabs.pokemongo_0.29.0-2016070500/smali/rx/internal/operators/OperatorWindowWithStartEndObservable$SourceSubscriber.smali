.class final Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;
.super Lrx/Subscriber;
.source "OperatorWindowWithStartEndObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorWindowWithStartEndObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SourceSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final chunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final csub:Lrx/subscriptions/CompositeSubscription;

.field done:Z

.field final guard:Ljava/lang/Object;

.field final synthetic this$0:Lrx/internal/operators/OperatorWindowWithStartEndObservable;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorWindowWithStartEndObservable;Lrx/Subscriber;Lrx/subscriptions/CompositeSubscription;)V
    .locals 1
    .param p3, "csub"    # Lrx/subscriptions/CompositeSubscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lrx/Observable",
            "<TT;>;>;",
            "Lrx/subscriptions/CompositeSubscription;",
            ")V"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable<TT;TU;TV;>.SourceSubscriber;"
    .local p2, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/Observable<TT;>;>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithStartEndObservable;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 104
    new-instance v0, Lrx/observers/SerializedSubscriber;

    invoke-direct {v0, p2}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->child:Lrx/Subscriber;

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->guard:Ljava/lang/Object;

    .line 106
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->chunks:Ljava/util/List;

    .line 107
    iput-object p3, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->csub:Lrx/subscriptions/CompositeSubscription;

    .line 108
    return-void
.end method


# virtual methods
.method beginWindow(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable<TT;TU;TV;>.SourceSubscriber;"
    .local p1, "token":Ljava/lang/Object;, "TU;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->createSerializedSubject()Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;

    move-result-object v2

    .line 173
    .local v2, "s":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;"
    iget-object v5, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v5

    .line 174
    :try_start_0
    iget-boolean v4, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->done:Z

    if-eqz v4, :cond_0

    .line 175
    monitor-exit v5

    .line 214
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->child:Lrx/Subscriber;

    iget-object v5, v2, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;->producer:Lrx/Observable;

    invoke-virtual {v4, v5}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 183
    :try_start_1
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithStartEndObservable;

    iget-object v4, v4, Lrx/internal/operators/OperatorWindowWithStartEndObservable;->windowClosingSelector:Lrx/functions/Func1;

    invoke-interface {v4, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 189
    .local v1, "end":Lrx/Observable;, "Lrx/Observable<+TV;>;"
    new-instance v3, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber$1;

    invoke-direct {v3, p0, v2}, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber$1;-><init>(Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;)V

    .line 211
    .local v3, "v":Lrx/Subscriber;, "Lrx/Subscriber<TV;>;"
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->csub:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v4, v3}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 213
    invoke-virtual {v1, v3}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_0

    .line 178
    .end local v1    # "end":Lrx/Observable;, "Lrx/Observable<+TV;>;"
    .end local v3    # "v":Lrx/Subscriber;, "Lrx/Subscriber<TV;>;"
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method createSerializedSubject()Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable<TT;TU;TV;>.SourceSubscriber;"
    invoke-static {}, Lrx/internal/operators/BufferUntilSubscriber;->create()Lrx/internal/operators/BufferUntilSubscriber;

    move-result-object v0

    .line 237
    .local v0, "bus":Lrx/internal/operators/BufferUntilSubscriber;, "Lrx/internal/operators/BufferUntilSubscriber<TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;

    invoke-direct {v1, v0, v0}, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;-><init>(Lrx/Observer;Lrx/Observable;)V

    return-object v1
.end method

.method endWindow(Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable<TT;TU;TV;>.SourceSubscriber;"
    .local p1, "window":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;"
    const/4 v2, 0x0

    .line 217
    .local v2, "terminate":Z
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 218
    :try_start_0
    iget-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->done:Z

    if-eqz v3, :cond_1

    .line 219
    monitor-exit v4

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 222
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 223
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;

    .line 224
    .local v1, "s":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;"
    if-ne v1, p1, :cond_2

    .line 225
    const/4 v2, 0x1

    .line 226
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 230
    .end local v1    # "s":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;"
    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    if-eqz v2, :cond_0

    .line 232
    iget-object v3, p1, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;->consumer:Lrx/Observer;

    invoke-interface {v3}, Lrx/Observer;->onCompleted()V

    goto :goto_0

    .line 230
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public onCompleted()V
    .locals 5

    .prologue
    .line 154
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable<TT;TU;TV;>.SourceSubscriber;"
    :try_start_0
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :try_start_1
    iget-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->done:Z

    if-eqz v3, :cond_0

    .line 156
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 167
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->csub:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v3}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 169
    :goto_0
    return-void

    .line 158
    :cond_0
    const/4 v3, 0x1

    :try_start_2
    iput-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->done:Z

    .line 159
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->chunks:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 160
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;>;"
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 161
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 162
    :try_start_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;

    .line 163
    .local v0, "cs":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;"
    iget-object v3, v0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;->consumer:Lrx/Observer;

    invoke-interface {v3}, Lrx/Observer;->onCompleted()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 167
    .end local v0    # "cs":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;>;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->csub:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v4}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    throw v3

    .line 161
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v3

    .line 165
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;>;"
    :cond_1
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v3}, Lrx/Subscriber;->onCompleted()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 167
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->csub:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v3}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 133
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable<TT;TU;TV;>.SourceSubscriber;"
    :try_start_0
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :try_start_1
    iget-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->done:Z

    if-eqz v3, :cond_0

    .line 135
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 146
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->csub:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v3}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 148
    :goto_0
    return-void

    .line 137
    :cond_0
    const/4 v3, 0x1

    :try_start_2
    iput-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->done:Z

    .line 138
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->chunks:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 139
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;>;"
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 140
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 141
    :try_start_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;

    .line 142
    .local v0, "cs":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;"
    iget-object v3, v0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;->consumer:Lrx/Observer;

    invoke-interface {v3, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 146
    .end local v0    # "cs":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;>;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->csub:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v4}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    throw v3

    .line 140
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v3

    .line 144
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;>;"
    :cond_1
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v3, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 146
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->csub:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v3}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable<TT;TU;TV;>.SourceSubscriber;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 119
    :try_start_0
    iget-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->done:Z

    if-eqz v3, :cond_1

    .line 120
    monitor-exit v4

    .line 127
    :cond_0
    return-void

    .line 122
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->chunks:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 123
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;>;"
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;

    .line 125
    .local v0, "cs":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;"
    iget-object v3, v0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;->consumer:Lrx/Observer;

    invoke-interface {v3, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 123
    .end local v0    # "cs":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 112
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable<TT;TU;TV;>.SourceSubscriber;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->request(J)V

    .line 113
    return-void
.end method
