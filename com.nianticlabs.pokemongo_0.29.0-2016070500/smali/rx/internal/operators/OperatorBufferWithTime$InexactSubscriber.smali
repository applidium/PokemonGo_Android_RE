.class final Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;
.super Lrx/Subscriber;
.source "OperatorBufferWithTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorBufferWithTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InexactSubscriber"
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
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final chunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field done:Z

.field final inner:Lrx/Scheduler$Worker;

.field final synthetic this$0:Lrx/internal/operators/OperatorBufferWithTime;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorBufferWithTime;Lrx/Subscriber;Lrx/Scheduler$Worker;)V
    .locals 1
    .param p3, "inner"    # Lrx/Scheduler$Worker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;",
            "Lrx/Scheduler$Worker;",
            ")V"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.InexactSubscriber;"
    .local p2, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/util/List<TT;>;>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorBufferWithTime;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 101
    iput-object p2, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->child:Lrx/Subscriber;

    .line 102
    iput-object p3, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->inner:Lrx/Scheduler$Worker;

    .line 103
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    .line 104
    return-void
.end method


# virtual methods
.method emitChunk(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.InexactSubscriber;"
    .local p1, "chunkToEmit":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    .line 193
    .local v1, "emit":Z
    monitor-enter p0

    .line 194
    :try_start_0
    iget-boolean v4, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->done:Z

    if-eqz v4, :cond_1

    .line 195
    monitor-exit p0

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 198
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<TT;>;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 199
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 200
    .local v0, "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-ne v0, p1, :cond_2

    .line 201
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 202
    const/4 v1, 0x1

    .line 206
    .end local v0    # "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    if-eqz v1, :cond_0

    .line 209
    :try_start_1
    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v4, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 210
    :catch_0
    move-exception v3

    .line 211
    .local v3, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, v3}, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 206
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<TT;>;>;"
    .end local v3    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public onCompleted()V
    .locals 5

    .prologue
    .line 150
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.InexactSubscriber;"
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :try_start_1
    iget-boolean v4, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->done:Z

    if-eqz v4, :cond_0

    .line 152
    monitor-exit p0

    .line 167
    :goto_0
    return-void

    .line 154
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->done:Z

    .line 155
    new-instance v2, Ljava/util/LinkedList;

    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-direct {v2, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 156
    .local v2, "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 157
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    :try_start_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 159
    .local v0, "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v4, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 161
    .end local v0    # "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    :catch_0
    move-exception v3

    .line 162
    .local v3, "t":Ljava/lang/Throwable;
    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v4, v3}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 157
    .end local v3    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 165
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    :cond_1
    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v4}, Lrx/Subscriber;->onCompleted()V

    .line 166
    invoke-virtual {p0}, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->unsubscribe()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 135
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.InexactSubscriber;"
    monitor-enter p0

    .line 136
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 137
    monitor-exit p0

    .line 144
    :goto_0
    return-void

    .line 139
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->done:Z

    .line 140
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 141
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 143
    invoke-virtual {p0}, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->unsubscribe()V

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.InexactSubscriber;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    .line 109
    .local v3, "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    monitor-enter p0

    .line 110
    :try_start_0
    iget-boolean v5, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->done:Z

    if-eqz v5, :cond_0

    .line 111
    monitor-exit p0

    .line 131
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v5, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<TT;>;>;"
    move-object v4, v3

    .line 114
    .end local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .local v4, "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    :goto_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 115
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 116
    .local v0, "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorBufferWithTime;

    iget v6, v6, Lrx/internal/operators/OperatorBufferWithTime;->count:I

    if-ne v5, v6, :cond_4

    .line 118
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 119
    if-nez v4, :cond_3

    .line 120
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 122
    .end local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    :goto_2
    :try_start_2
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    move-object v4, v3

    .line 124
    .end local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    goto :goto_1

    .line 125
    .end local v0    # "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 126
    if-eqz v4, :cond_2

    .line 127
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 128
    .restart local v0    # "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v5, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v5, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_4

    .line 125
    .end local v0    # "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<TT;>;>;"
    .end local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    :catchall_0
    move-exception v5

    :goto_5
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .end local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<TT;>;>;"
    .restart local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    :cond_2
    move-object v3, v4

    .line 131
    .end local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    goto :goto_0

    .line 125
    .end local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    goto :goto_5

    .end local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v0    # "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .restart local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    :cond_3
    move-object v3, v4

    .end local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    goto :goto_2

    .end local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    :cond_4
    move-object v3, v4

    .end local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    goto :goto_3
.end method

.method scheduleChunk()V
    .locals 7

    .prologue
    .line 169
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.InexactSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->inner:Lrx/Scheduler$Worker;

    new-instance v1, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber$1;

    invoke-direct {v1, p0}, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber$1;-><init>(Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;)V

    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorBufferWithTime;

    iget-wide v2, v2, Lrx/internal/operators/OperatorBufferWithTime;->timeshift:J

    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorBufferWithTime;

    iget-wide v4, v4, Lrx/internal/operators/OperatorBufferWithTime;->timeshift:J

    iget-object v6, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorBufferWithTime;

    iget-object v6, v6, Lrx/internal/operators/OperatorBufferWithTime;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lrx/Scheduler$Worker;->schedulePeriodically(Lrx/functions/Action0;JJLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    .line 175
    return-void
.end method

.method startNewChunk()V
    .locals 6

    .prologue
    .line 177
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.InexactSubscriber;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v0, "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    monitor-enter p0

    .line 179
    :try_start_0
    iget-boolean v1, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->done:Z

    if-eqz v1, :cond_0

    .line 180
    monitor-exit p0

    .line 190
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->inner:Lrx/Scheduler$Worker;

    new-instance v2, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber$2;

    invoke-direct {v2, p0, v0}, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber$2;-><init>(Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;Ljava/util/List;)V

    iget-object v3, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorBufferWithTime;

    iget-wide v4, v3, Lrx/internal/operators/OperatorBufferWithTime;->timespan:J

    iget-object v3, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorBufferWithTime;

    iget-object v3, v3, Lrx/internal/operators/OperatorBufferWithTime;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v4, v5, v3}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
