.class final Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;
.super Lrx/Subscriber;
.source "OperatorWindowWithTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorWindowWithTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ExactSubscriber"
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

.field emitting:Z

.field final guard:Ljava/lang/Object;

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

.field volatile state:Lrx/internal/operators/OperatorWindowWithTime$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorWindowWithTime$State",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lrx/internal/operators/OperatorWindowWithTime;

.field final worker:Lrx/Scheduler$Worker;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorWindowWithTime;Lrx/Subscriber;Lrx/Scheduler$Worker;)V
    .locals 1
    .param p3, "worker"    # Lrx/Scheduler$Worker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lrx/Observable",
            "<TT;>;>;",
            "Lrx/Scheduler$Worker;",
            ")V"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.ExactSubscriber;"
    .local p2, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/Observable<TT;>;>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithTime;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 118
    new-instance v0, Lrx/observers/SerializedSubscriber;

    invoke-direct {v0, p2}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->child:Lrx/Subscriber;

    .line 119
    iput-object p3, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->worker:Lrx/Scheduler$Worker;

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->guard:Ljava/lang/Object;

    .line 121
    invoke-static {}, Lrx/internal/operators/OperatorWindowWithTime$State;->empty()Lrx/internal/operators/OperatorWindowWithTime$State;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->state:Lrx/internal/operators/OperatorWindowWithTime$State;

    .line 122
    new-instance v0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber$1;-><init>(Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;Lrx/internal/operators/OperatorWindowWithTime;)V

    invoke-static {v0}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    invoke-virtual {p2, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 131
    return-void
.end method


# virtual methods
.method complete()V
    .locals 2

    .prologue
    .line 264
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.ExactSubscriber;"
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->state:Lrx/internal/operators/OperatorWindowWithTime$State;

    iget-object v0, v1, Lrx/internal/operators/OperatorWindowWithTime$State;->consumer:Lrx/Observer;

    .line 265
    .local v0, "s":Lrx/Observer;, "Lrx/Observer<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->state:Lrx/internal/operators/OperatorWindowWithTime$State;

    invoke-virtual {v1}, Lrx/internal/operators/OperatorWindowWithTime$State;->clear()Lrx/internal/operators/OperatorWindowWithTime$State;

    move-result-object v1

    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->state:Lrx/internal/operators/OperatorWindowWithTime$State;

    .line 266
    if-eqz v0, :cond_0

    .line 267
    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    .line 269
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    .line 270
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->unsubscribe()V

    .line 271
    return-void
.end method

.method drain(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.ExactSubscriber;"
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 180
    if-nez p1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return v3

    .line 183
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 184
    .local v1, "o":Ljava/lang/Object;
    sget-object v5, Lrx/internal/operators/OperatorWindowWithTime;->NEXT_SUBJECT:Ljava/lang/Object;

    if-ne v1, v5, :cond_3

    .line 185
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->replaceSubject()Z

    move-result v5

    if-nez v5, :cond_2

    move v3, v4

    .line 186
    goto :goto_0

    .line 189
    :cond_3
    sget-object v5, Lrx/internal/operators/OperatorWindowWithTime;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v5, v1}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 190
    sget-object v4, Lrx/internal/operators/OperatorWindowWithTime;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v4, v1}, Lrx/internal/operators/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->error(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 193
    :cond_4
    sget-object v5, Lrx/internal/operators/OperatorWindowWithTime;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v5, v1}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 194
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->complete()V

    goto :goto_0

    .line 198
    :cond_5
    move-object v2, v1

    .line 199
    .local v2, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->emitValue(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    move v3, v4

    .line 200
    goto :goto_0
.end method

.method emitValue(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 223
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.ExactSubscriber;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->state:Lrx/internal/operators/OperatorWindowWithTime$State;

    .line 224
    .local v0, "s":Lrx/internal/operators/OperatorWindowWithTime$State;, "Lrx/internal/operators/OperatorWindowWithTime$State<TT;>;"
    iget-object v1, v0, Lrx/internal/operators/OperatorWindowWithTime$State;->consumer:Lrx/Observer;

    if-nez v1, :cond_1

    .line 225
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->replaceSubject()Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    const/4 v1, 0x0

    .line 238
    :goto_0
    return v1

    .line 228
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->state:Lrx/internal/operators/OperatorWindowWithTime$State;

    .line 230
    :cond_1
    iget-object v1, v0, Lrx/internal/operators/OperatorWindowWithTime$State;->consumer:Lrx/Observer;

    invoke-interface {v1, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 231
    iget v1, v0, Lrx/internal/operators/OperatorWindowWithTime$State;->count:I

    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithTime;

    iget v2, v2, Lrx/internal/operators/OperatorWindowWithTime;->size:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    .line 232
    iget-object v1, v0, Lrx/internal/operators/OperatorWindowWithTime$State;->consumer:Lrx/Observer;

    invoke-interface {v1}, Lrx/Observer;->onCompleted()V

    .line 233
    invoke-virtual {v0}, Lrx/internal/operators/OperatorWindowWithTime$State;->clear()Lrx/internal/operators/OperatorWindowWithTime$State;

    move-result-object v0

    .line 237
    :goto_1
    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->state:Lrx/internal/operators/OperatorWindowWithTime$State;

    .line 238
    const/4 v1, 0x1

    goto :goto_0

    .line 235
    :cond_2
    invoke-virtual {v0}, Lrx/internal/operators/OperatorWindowWithTime$State;->next()Lrx/internal/operators/OperatorWindowWithTime$State;

    move-result-object v0

    goto :goto_1
.end method

.method error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 255
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.ExactSubscriber;"
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->state:Lrx/internal/operators/OperatorWindowWithTime$State;

    iget-object v0, v1, Lrx/internal/operators/OperatorWindowWithTime$State;->consumer:Lrx/Observer;

    .line 256
    .local v0, "s":Lrx/Observer;, "Lrx/Observer<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->state:Lrx/internal/operators/OperatorWindowWithTime$State;

    invoke-virtual {v1}, Lrx/internal/operators/OperatorWindowWithTime$State;->clear()Lrx/internal/operators/OperatorWindowWithTime$State;

    move-result-object v1

    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->state:Lrx/internal/operators/OperatorWindowWithTime$State;

    .line 257
    if-eqz v0, :cond_0

    .line 258
    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 260
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v1, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 261
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->unsubscribe()V

    .line 262
    return-void
.end method

.method nextWindow()V
    .locals 5

    .prologue
    .line 307
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.ExactSubscriber;"
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 308
    :try_start_0
    iget-boolean v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->emitting:Z

    if-eqz v2, :cond_2

    .line 309
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->queue:Ljava/util/List;

    if-nez v2, :cond_0

    .line 310
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->queue:Ljava/util/List;

    .line 312
    :cond_0
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->queue:Ljava/util/List;

    sget-object v4, Lrx/internal/operators/OperatorWindowWithTime;->NEXT_SUBJECT:Ljava/lang/Object;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    monitor-exit v3

    .line 342
    :cond_1
    :goto_0
    return-void

    .line 315
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->emitting:Z

    .line 316
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 317
    const/4 v1, 0x0

    .line 319
    .local v1, "skipFinal":Z
    :try_start_1
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->replaceSubject()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-result v2

    if-nez v2, :cond_3

    .line 339
    if-nez v1, :cond_1

    .line 340
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 341
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->emitting:Z

    .line 342
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 316
    .end local v1    # "skipFinal":Z
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 324
    .restart local v1    # "skipFinal":Z
    :cond_3
    :try_start_4
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 325
    :try_start_5
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->queue:Ljava/util/List;

    .line 326
    .local v0, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-nez v0, :cond_4

    .line 327
    const/4 v2, 0x0

    iput-boolean v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->emitting:Z

    .line 328
    const/4 v1, 0x1

    .line 329
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 339
    if-nez v1, :cond_1

    .line 340
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 341
    const/4 v2, 0x0

    :try_start_6
    iput-boolean v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->emitting:Z

    .line 342
    monitor-exit v3

    goto :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2

    .line 331
    :cond_4
    const/4 v2, 0x0

    :try_start_7
    iput-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->queue:Ljava/util/List;

    .line 332
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 334
    :try_start_8
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->drain(Ljava/util/List;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-result v2

    if-nez v2, :cond_3

    .line 339
    if-nez v1, :cond_1

    .line 340
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 341
    const/4 v2, 0x0

    :try_start_9
    iput-boolean v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->emitting:Z

    .line 342
    monitor-exit v3

    goto :goto_0

    :catchall_3
    move-exception v2

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v2

    .line 332
    .end local v0    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catchall_4
    move-exception v2

    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 339
    :catchall_5
    move-exception v2

    if-nez v1, :cond_5

    .line 340
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 341
    const/4 v4, 0x0

    :try_start_c
    iput-boolean v4, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->emitting:Z

    .line 342
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :cond_5
    throw v2

    :catchall_6
    move-exception v2

    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    throw v2
.end method

.method public onCompleted()V
    .locals 5

    .prologue
    .line 275
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.ExactSubscriber;"
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 276
    :try_start_0
    iget-boolean v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->emitting:Z

    if-eqz v2, :cond_1

    .line 277
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->queue:Ljava/util/List;

    if-nez v2, :cond_0

    .line 278
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->queue:Ljava/util/List;

    .line 280
    :cond_0
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->queue:Ljava/util/List;

    sget-object v4, Lrx/internal/operators/OperatorWindowWithTime;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v4}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    monitor-exit v3

    .line 294
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->queue:Ljava/util/List;

    .line 284
    .local v1, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    iput-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->queue:Ljava/util/List;

    .line 285
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->emitting:Z

    .line 286
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    :try_start_1
    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->drain(Ljava/util/List;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 293
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->complete()V

    goto :goto_0

    .line 286
    .end local v1    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 289
    .restart local v1    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 243
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.ExactSubscriber;"
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v1

    .line 244
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->emitting:Z

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Lrx/internal/operators/OperatorWindowWithTime;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->queue:Ljava/util/List;

    .line 247
    monitor-exit v1

    .line 253
    :goto_0
    return-void

    .line 249
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->queue:Ljava/util/List;

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->emitting:Z

    .line 251
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->error(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 251
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.ExactSubscriber;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 141
    :try_start_0
    iget-boolean v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->emitting:Z

    if-eqz v2, :cond_2

    .line 142
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->queue:Ljava/util/List;

    if-nez v2, :cond_0

    .line 143
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->queue:Ljava/util/List;

    .line 145
    :cond_0
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->queue:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    monitor-exit v3

    .line 175
    :cond_1
    :goto_0
    return-void

    .line 148
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->emitting:Z

    .line 149
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 150
    const/4 v1, 0x0

    .line 152
    .local v1, "skipFinal":Z
    :try_start_1
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->emitValue(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-result v2

    if-nez v2, :cond_3

    .line 172
    if-nez v1, :cond_1

    .line 173
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 174
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->emitting:Z

    .line 175
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 149
    .end local v1    # "skipFinal":Z
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 158
    .restart local v1    # "skipFinal":Z
    :cond_3
    :try_start_4
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 159
    :try_start_5
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->queue:Ljava/util/List;

    .line 160
    .local v0, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-nez v0, :cond_4

    .line 161
    const/4 v2, 0x0

    iput-boolean v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->emitting:Z

    .line 162
    const/4 v1, 0x1

    .line 163
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 172
    if-nez v1, :cond_1

    .line 173
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 174
    const/4 v2, 0x0

    :try_start_6
    iput-boolean v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->emitting:Z

    .line 175
    monitor-exit v3

    goto :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2

    .line 165
    :cond_4
    const/4 v2, 0x0

    :try_start_7
    iput-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->queue:Ljava/util/List;

    .line 166
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 167
    :try_start_8
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->drain(Ljava/util/List;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-result v2

    if-nez v2, :cond_3

    .line 172
    if-nez v1, :cond_1

    .line 173
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 174
    const/4 v2, 0x0

    :try_start_9
    iput-boolean v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->emitting:Z

    .line 175
    monitor-exit v3

    goto :goto_0

    :catchall_3
    move-exception v2

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v2

    .line 166
    .end local v0    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catchall_4
    move-exception v2

    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 172
    :catchall_5
    move-exception v2

    if-nez v1, :cond_5

    .line 173
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 174
    const/4 v4, 0x0

    :try_start_c
    iput-boolean v4, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->emitting:Z

    .line 175
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :cond_5
    throw v2

    :catchall_6
    move-exception v2

    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    throw v2
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 135
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.ExactSubscriber;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->request(J)V

    .line 136
    return-void
.end method

.method replaceSubject()Z
    .locals 3

    .prologue
    .line 207
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.ExactSubscriber;"
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->state:Lrx/internal/operators/OperatorWindowWithTime$State;

    iget-object v1, v2, Lrx/internal/operators/OperatorWindowWithTime$State;->consumer:Lrx/Observer;

    .line 208
    .local v1, "s":Lrx/Observer;, "Lrx/Observer<TT;>;"
    if-eqz v1, :cond_0

    .line 209
    invoke-interface {v1}, Lrx/Observer;->onCompleted()V

    .line 212
    :cond_0
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 213
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->state:Lrx/internal/operators/OperatorWindowWithTime$State;

    invoke-virtual {v2}, Lrx/internal/operators/OperatorWindowWithTime$State;->clear()Lrx/internal/operators/OperatorWindowWithTime$State;

    move-result-object v2

    iput-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->state:Lrx/internal/operators/OperatorWindowWithTime$State;

    .line 214
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->unsubscribe()V

    .line 215
    const/4 v2, 0x0

    .line 220
    :goto_0
    return v2

    .line 217
    :cond_1
    invoke-static {}, Lrx/internal/operators/BufferUntilSubscriber;->create()Lrx/internal/operators/BufferUntilSubscriber;

    move-result-object v0

    .line 218
    .local v0, "bus":Lrx/internal/operators/BufferUntilSubscriber;, "Lrx/internal/operators/BufferUntilSubscriber<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->state:Lrx/internal/operators/OperatorWindowWithTime$State;

    invoke-virtual {v2, v0, v0}, Lrx/internal/operators/OperatorWindowWithTime$State;->create(Lrx/Observer;Lrx/Observable;)Lrx/internal/operators/OperatorWindowWithTime$State;

    move-result-object v2

    iput-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->state:Lrx/internal/operators/OperatorWindowWithTime$State;

    .line 219
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v2, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 220
    const/4 v2, 0x1

    goto :goto_0
.end method

.method scheduleExact()V
    .locals 7

    .prologue
    .line 297
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.ExactSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->worker:Lrx/Scheduler$Worker;

    new-instance v1, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber$2;

    invoke-direct {v1, p0}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber$2;-><init>(Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;)V

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithTime;

    iget-wide v4, v4, Lrx/internal/operators/OperatorWindowWithTime;->timespan:J

    iget-object v6, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithTime;

    iget-object v6, v6, Lrx/internal/operators/OperatorWindowWithTime;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lrx/Scheduler$Worker;->schedulePeriodically(Lrx/functions/Action0;JJLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    .line 305
    return-void
.end method
