.class final Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;
.super Lrx/Subscriber;
.source "OperatorWindowWithObservableFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorWindowWithObservableFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SourceSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
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

.field consumer:Lrx/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observer",
            "<TT;>;"
        }
    .end annotation
.end field

.field emitting:Z

.field final guard:Ljava/lang/Object;

.field final otherFactory:Lrx/functions/Func0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func0",
            "<+",
            "Lrx/Observable",
            "<+TU;>;>;"
        }
    .end annotation
.end field

.field producer:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation
.end field

.field queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final ssub:Lrx/subscriptions/SerialSubscription;


# direct methods
.method public constructor <init>(Lrx/Subscriber;Lrx/functions/Func0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lrx/Observable",
            "<TT;>;>;",
            "Lrx/functions/Func0",
            "<+",
            "Lrx/Observable",
            "<+TU;>;>;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber<TT;TU;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/Observable<TT;>;>;"
    .local p2, "otherFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<+Lrx/Observable<+TU;>;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 76
    new-instance v0, Lrx/observers/SerializedSubscriber;

    invoke-direct {v0, p1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->child:Lrx/Subscriber;

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->guard:Ljava/lang/Object;

    .line 78
    new-instance v0, Lrx/subscriptions/SerialSubscription;

    invoke-direct {v0}, Lrx/subscriptions/SerialSubscription;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->ssub:Lrx/subscriptions/SerialSubscription;

    .line 79
    iput-object p2, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->otherFactory:Lrx/functions/Func0;

    .line 80
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->ssub:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->add(Lrx/Subscription;)V

    .line 81
    return-void
.end method


# virtual methods
.method complete()V
    .locals 2

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber<TT;TU;>;"
    const/4 v1, 0x0

    .line 264
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->consumer:Lrx/Observer;

    .line 265
    .local v0, "s":Lrx/Observer;, "Lrx/Observer<TT;>;"
    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->consumer:Lrx/Observer;

    .line 266
    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->producer:Lrx/Observable;

    .line 268
    if-eqz v0, :cond_0

    .line 269
    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    .line 271
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    .line 272
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->unsubscribe()V

    .line 273
    return-void
.end method

.method createNewWindow()V
    .locals 5

    .prologue
    .line 163
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber<TT;TU;>;"
    invoke-static {}, Lrx/internal/operators/BufferUntilSubscriber;->create()Lrx/internal/operators/BufferUntilSubscriber;

    move-result-object v1

    .line 164
    .local v1, "bus":Lrx/internal/operators/BufferUntilSubscriber;, "Lrx/internal/operators/BufferUntilSubscriber<TT;>;"
    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->consumer:Lrx/Observer;

    .line 165
    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->producer:Lrx/Observable;

    .line 168
    :try_start_0
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->otherFactory:Lrx/functions/Func0;

    invoke-interface {v4}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/Observable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .local v3, "other":Lrx/Observable;, "Lrx/Observable<+TU;>;"
    new-instance v0, Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber;

    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->child:Lrx/Subscriber;

    invoke-direct {v0, v4, p0}, Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber;-><init>(Lrx/Subscriber;Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;)V

    .line 176
    .local v0, "bs":Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber<TT;TU;>;"
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->ssub:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v4, v0}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 177
    invoke-virtual {v3, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 178
    .end local v0    # "bs":Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber<TT;TU;>;"
    .end local v3    # "other":Lrx/Observable;, "Lrx/Observable<+TU;>;"
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v2

    .line 170
    .local v2, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v4, v2}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 171
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->unsubscribe()V

    goto :goto_0
.end method

.method drain(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber<TT;TU;>;"
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-nez p1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 137
    .local v1, "o":Ljava/lang/Object;
    sget-object v3, Lrx/internal/operators/OperatorWindowWithObservableFactory;->NEXT_SUBJECT:Ljava/lang/Object;

    if-ne v1, v3, :cond_2

    .line 138
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->replaceSubject()V

    goto :goto_1

    .line 140
    :cond_2
    sget-object v3, Lrx/internal/operators/OperatorWindowWithObservableFactory;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3, v1}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 141
    sget-object v3, Lrx/internal/operators/OperatorWindowWithObservableFactory;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3, v1}, Lrx/internal/operators/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->error(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 144
    :cond_3
    sget-object v3, Lrx/internal/operators/OperatorWindowWithObservableFactory;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3, v1}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 145
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->complete()V

    goto :goto_0

    .line 149
    :cond_4
    move-object v2, v1

    .line 150
    .local v2, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->emitValue(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method emitValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber<TT;TU;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->consumer:Lrx/Observer;

    .line 181
    .local v0, "s":Lrx/Observer;, "Lrx/Observer<TT;>;"
    if-eqz v0, :cond_0

    .line 182
    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 184
    :cond_0
    return-void
.end method

.method error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber<TT;TU;>;"
    const/4 v1, 0x0

    .line 275
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->consumer:Lrx/Observer;

    .line 276
    .local v0, "s":Lrx/Observer;, "Lrx/Observer<TT;>;"
    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->consumer:Lrx/Observer;

    .line 277
    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->producer:Lrx/Observable;

    .line 279
    if-eqz v0, :cond_0

    .line 280
    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 282
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v1, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 283
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->unsubscribe()V

    .line 284
    return-void
.end method

.method public onCompleted()V
    .locals 5

    .prologue
    .line 202
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber<TT;TU;>;"
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 203
    :try_start_0
    iget-boolean v2, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->emitting:Z

    if-eqz v2, :cond_1

    .line 204
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->queue:Ljava/util/List;

    if-nez v2, :cond_0

    .line 205
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->queue:Ljava/util/List;

    .line 207
    :cond_0
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->queue:Ljava/util/List;

    sget-object v4, Lrx/internal/operators/OperatorWindowWithObservableFactory;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v4}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    monitor-exit v3

    .line 221
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->queue:Ljava/util/List;

    .line 211
    .local v1, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    iput-object v2, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->queue:Ljava/util/List;

    .line 212
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->emitting:Z

    .line 213
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :try_start_1
    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->drain(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 220
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->complete()V

    goto :goto_0

    .line 213
    .end local v1    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 216
    .restart local v1    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 188
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber<TT;TU;>;"
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v1

    .line 189
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->emitting:Z

    if-eqz v0, :cond_0

    .line 190
    sget-object v0, Lrx/internal/operators/OperatorWindowWithObservableFactory;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->queue:Ljava/util/List;

    .line 191
    monitor-exit v1

    .line 197
    :goto_0
    return-void

    .line 193
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->queue:Ljava/util/List;

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->emitting:Z

    .line 195
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->error(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 195
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber<TT;TU;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 92
    :try_start_0
    iget-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->emitting:Z

    if-eqz v3, :cond_2

    .line 93
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->queue:Ljava/util/List;

    if-nez v3, :cond_0

    .line 94
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->queue:Ljava/util/List;

    .line 96
    :cond_0
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->queue:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    monitor-exit v4

    .line 130
    :cond_1
    :goto_0
    return-void

    .line 99
    :cond_2
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->queue:Ljava/util/List;

    .line 100
    .local v0, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    iput-object v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->queue:Ljava/util/List;

    .line 101
    const/4 v3, 0x1

    iput-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->emitting:Z

    .line 102
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 103
    const/4 v1, 0x1

    .line 104
    .local v1, "once":Z
    const/4 v2, 0x0

    .line 107
    .local v2, "skipFinal":Z
    :cond_3
    :try_start_1
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->drain(Ljava/util/List;)V

    .line 108
    if-eqz v1, :cond_4

    .line 109
    const/4 v1, 0x0

    .line 110
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->emitValue(Ljava/lang/Object;)V

    .line 113
    :cond_4
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 114
    :try_start_2
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->queue:Ljava/util/List;

    .line 115
    const/4 v3, 0x0

    iput-object v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->queue:Ljava/util/List;

    .line 116
    if-nez v0, :cond_5

    .line 117
    const/4 v3, 0x0

    iput-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->emitting:Z

    .line 118
    const/4 v2, 0x1

    .line 119
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 124
    if-nez v2, :cond_1

    .line 125
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 126
    const/4 v3, 0x0

    :try_start_3
    iput-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->emitting:Z

    .line 127
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 102
    .end local v0    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v1    # "once":Z
    .end local v2    # "skipFinal":Z
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 121
    .restart local v0    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v1    # "once":Z
    .restart local v2    # "skipFinal":Z
    :cond_5
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 122
    :try_start_6
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v3}, Lrx/Subscriber;->isUnsubscribed()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-result v3

    if-eqz v3, :cond_3

    .line 124
    if-nez v2, :cond_1

    .line 125
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 126
    const/4 v3, 0x0

    :try_start_7
    iput-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->emitting:Z

    .line 127
    monitor-exit v4

    goto :goto_0

    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v3

    .line 121
    :catchall_3
    move-exception v3

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 124
    :catchall_4
    move-exception v3

    if-nez v2, :cond_6

    .line 125
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 126
    const/4 v5, 0x0

    :try_start_a
    iput-boolean v5, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->emitting:Z

    .line 127
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :cond_6
    throw v3

    :catchall_5
    move-exception v3

    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v3
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 85
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber<TT;TU;>;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->request(J)V

    .line 86
    return-void
.end method

.method replaceSubject()V
    .locals 3

    .prologue
    .line 155
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber<TT;TU;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->consumer:Lrx/Observer;

    .line 156
    .local v0, "s":Lrx/Observer;, "Lrx/Observer<TT;>;"
    if-eqz v0, :cond_0

    .line 157
    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    .line 159
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->createNewWindow()V

    .line 160
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->child:Lrx/Subscriber;

    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->producer:Lrx/Observable;

    invoke-virtual {v1, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 161
    return-void
.end method

.method replaceWindow()V
    .locals 6

    .prologue
    .line 224
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber<TT;TU;>;"
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 225
    :try_start_0
    iget-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->emitting:Z

    if-eqz v3, :cond_2

    .line 226
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->queue:Ljava/util/List;

    if-nez v3, :cond_0

    .line 227
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->queue:Ljava/util/List;

    .line 229
    :cond_0
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->queue:Ljava/util/List;

    sget-object v5, Lrx/internal/operators/OperatorWindowWithObservableFactory;->NEXT_SUBJECT:Ljava/lang/Object;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    monitor-exit v4

    .line 262
    :cond_1
    :goto_0
    return-void

    .line 232
    :cond_2
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->queue:Ljava/util/List;

    .line 233
    .local v0, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    iput-object v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->queue:Ljava/util/List;

    .line 234
    const/4 v3, 0x1

    iput-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->emitting:Z

    .line 235
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 236
    const/4 v1, 0x1

    .line 237
    .local v1, "once":Z
    const/4 v2, 0x0

    .line 240
    .local v2, "skipFinal":Z
    :cond_3
    :try_start_1
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->drain(Ljava/util/List;)V

    .line 241
    if-eqz v1, :cond_4

    .line 242
    const/4 v1, 0x0

    .line 243
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->replaceSubject()V

    .line 245
    :cond_4
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 246
    :try_start_2
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->queue:Ljava/util/List;

    .line 247
    const/4 v3, 0x0

    iput-object v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->queue:Ljava/util/List;

    .line 248
    if-nez v0, :cond_5

    .line 249
    const/4 v3, 0x0

    iput-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->emitting:Z

    .line 250
    const/4 v2, 0x1

    .line 251
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 256
    if-nez v2, :cond_1

    .line 257
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 258
    const/4 v3, 0x0

    :try_start_3
    iput-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->emitting:Z

    .line 259
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 235
    .end local v0    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v1    # "once":Z
    .end local v2    # "skipFinal":Z
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 253
    .restart local v0    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v1    # "once":Z
    .restart local v2    # "skipFinal":Z
    :cond_5
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 254
    :try_start_6
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v3}, Lrx/Subscriber;->isUnsubscribed()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-result v3

    if-eqz v3, :cond_3

    .line 256
    if-nez v2, :cond_1

    .line 257
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 258
    const/4 v3, 0x0

    :try_start_7
    iput-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->emitting:Z

    .line 259
    monitor-exit v4

    goto :goto_0

    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v3

    .line 253
    :catchall_3
    move-exception v3

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 256
    :catchall_4
    move-exception v3

    if-nez v2, :cond_6

    .line 257
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 258
    const/4 v5, 0x0

    :try_start_a
    iput-boolean v5, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->emitting:Z

    .line 259
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :cond_6
    throw v3

    :catchall_5
    move-exception v3

    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v3
.end method
