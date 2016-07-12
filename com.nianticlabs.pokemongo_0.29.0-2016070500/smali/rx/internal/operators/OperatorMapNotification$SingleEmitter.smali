.class final Lrx/internal/operators/OperatorMapNotification$SingleEmitter;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OperatorMapNotification.java"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorMapNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SingleEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/Producer;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x377b72469ea2724L


# instance fields
.field final cancel:Lrx/Subscription;

.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field volatile complete:Z

.field emitting:Z

.field missed:Z

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field final producer:Lrx/Producer;

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Subscriber;Lrx/Producer;Lrx/Subscription;)V
    .locals 2
    .param p2, "producer"    # Lrx/Producer;
    .param p3, "cancel"    # Lrx/Subscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Lrx/Producer;",
            "Lrx/Subscription;",
            ")V"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lrx/internal/operators/OperatorMapNotification$SingleEmitter;, "Lrx/internal/operators/OperatorMapNotification$SingleEmitter<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 107
    iput-object p1, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->child:Lrx/Subscriber;

    .line 108
    iput-object p2, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->producer:Lrx/Producer;

    .line 109
    iput-object p3, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->cancel:Lrx/Subscription;

    .line 110
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lrx/internal/util/unsafe/SpscArrayQueue;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lrx/internal/util/unsafe/SpscArrayQueue;-><init>(I)V

    :goto_0
    iput-object v0, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->queue:Ljava/util/Queue;

    .line 114
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->nl:Lrx/internal/operators/NotificationLite;

    .line 115
    return-void

    .line 110
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method drain()V
    .locals 8

    .prologue
    .line 170
    .local p0, "this":Lrx/internal/operators/OperatorMapNotification$SingleEmitter;, "Lrx/internal/operators/OperatorMapNotification$SingleEmitter<TT;>;"
    monitor-enter p0

    .line 171
    :try_start_0
    iget-boolean v6, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->emitting:Z

    if-eqz v6, :cond_1

    .line 172
    const/4 v6, 0x1

    iput-boolean v6, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->missed:Z

    .line 173
    monitor-exit p0

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->emitting:Z

    .line 176
    const/4 v6, 0x0

    iput-boolean v6, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->missed:Z

    .line 177
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 178
    const/4 v4, 0x0

    .line 182
    .local v4, "skipFinal":Z
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->get()J

    move-result-wide v2

    .line 183
    .local v2, "r":J
    iget-boolean v0, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->complete:Z

    .line 184
    .local v0, "c":Z
    iget-object v6, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->queue:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    .line 186
    .local v1, "empty":Z
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 187
    iget-object v6, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->child:Lrx/Subscriber;

    invoke-virtual {v6}, Lrx/Subscriber;->onCompleted()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 188
    const/4 v4, 0x1

    .line 214
    if-nez v4, :cond_0

    .line 215
    monitor-enter p0

    .line 216
    const/4 v6, 0x0

    :try_start_2
    iput-boolean v6, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->emitting:Z

    .line 217
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 177
    .end local v0    # "c":Z
    .end local v1    # "empty":Z
    .end local v2    # "r":J
    .end local v4    # "skipFinal":Z
    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    .line 191
    .restart local v0    # "c":Z
    .restart local v1    # "empty":Z
    .restart local v2    # "r":J
    .restart local v4    # "skipFinal":Z
    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_3

    .line 192
    :try_start_4
    iget-object v6, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->queue:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    .line 193
    .local v5, "v":Ljava/lang/Object;
    if-eqz v5, :cond_4

    .line 194
    iget-object v6, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->child:Lrx/Subscriber;

    iget-object v7, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v7, v5}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 195
    const-wide/16 v6, 0x1

    invoke-virtual {p0, v6, v7}, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->produced(J)V

    .line 204
    .end local v5    # "v":Ljava/lang/Object;
    :cond_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 205
    :try_start_5
    iget-boolean v6, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->missed:Z

    if-nez v6, :cond_5

    .line 206
    const/4 v4, 0x1

    .line 207
    const/4 v6, 0x0

    iput-boolean v6, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->emitting:Z

    .line 208
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 214
    if-nez v4, :cond_0

    .line 215
    monitor-enter p0

    .line 216
    const/4 v6, 0x0

    :try_start_6
    iput-boolean v6, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->emitting:Z

    .line 217
    monitor-exit p0

    goto :goto_0

    :catchall_2
    move-exception v6

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v6

    .line 197
    .restart local v5    # "v":Ljava/lang/Object;
    :cond_4
    if-eqz v0, :cond_3

    .line 198
    :try_start_7
    iget-object v6, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->child:Lrx/Subscriber;

    invoke-virtual {v6}, Lrx/Subscriber;->onCompleted()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 199
    const/4 v4, 0x1

    .line 214
    if-nez v4, :cond_0

    .line 215
    monitor-enter p0

    .line 216
    const/4 v6, 0x0

    :try_start_8
    iput-boolean v6, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->emitting:Z

    .line 217
    monitor-exit p0

    goto :goto_0

    :catchall_3
    move-exception v6

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v6

    .line 210
    .end local v5    # "v":Ljava/lang/Object;
    :cond_5
    const/4 v6, 0x0

    :try_start_9
    iput-boolean v6, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->missed:Z

    .line 211
    monitor-exit p0

    goto :goto_1

    :catchall_4
    move-exception v6

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    throw v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 214
    .end local v0    # "c":Z
    .end local v1    # "empty":Z
    .end local v2    # "r":J
    :catchall_5
    move-exception v6

    if-nez v4, :cond_6

    .line 215
    monitor-enter p0

    .line 216
    const/4 v7, 0x0

    :try_start_b
    iput-boolean v7, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->emitting:Z

    .line 217
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :cond_6
    throw v6

    :catchall_6
    move-exception v6

    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    throw v6
.end method

.method public isUnsubscribed()Z
    .locals 4

    .prologue
    .line 224
    .local p0, "this":Lrx/internal/operators/OperatorMapNotification$SingleEmitter;, "Lrx/internal/operators/OperatorMapNotification$SingleEmitter<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public offer(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lrx/internal/operators/OperatorMapNotification$SingleEmitter;, "Lrx/internal/operators/OperatorMapNotification$SingleEmitter<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->child:Lrx/Subscriber;

    new-instance v1, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v1}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 154
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->unsubscribe()V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->drain()V

    goto :goto_0
.end method

.method public offerAndComplete(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, "this":Lrx/internal/operators/OperatorMapNotification$SingleEmitter;, "Lrx/internal/operators/OperatorMapNotification$SingleEmitter<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->child:Lrx/Subscriber;

    new-instance v1, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v1}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 162
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->unsubscribe()V

    .line 167
    :goto_0
    return-void

    .line 164
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->complete:Z

    .line 165
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->drain()V

    goto :goto_0
.end method

.method produced(J)V
    .locals 9
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorMapNotification$SingleEmitter;, "Lrx/internal/operators/OperatorMapNotification$SingleEmitter<TT;>;"
    const-wide/16 v6, 0x0

    .line 137
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->get()J

    move-result-wide v0

    .line 138
    .local v0, "r":J
    cmp-long v4, v0, v6

    if-gez v4, :cond_1

    .line 146
    :goto_0
    return-void

    .line 141
    :cond_1
    sub-long v2, v0, p1

    .line 142
    .local v2, "u":J
    cmp-long v4, v2, v6

    if-gez v4, :cond_2

    .line 143
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "More produced ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") than requested ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 145
    :cond_2
    invoke-virtual {p0, v0, v1, v2, v3}, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0
.end method

.method public request(J)V
    .locals 9
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorMapNotification$SingleEmitter;, "Lrx/internal/operators/OperatorMapNotification$SingleEmitter<TT;>;"
    const-wide/16 v6, 0x0

    .line 119
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->get()J

    move-result-wide v0

    .line 120
    .local v0, "r":J
    cmp-long v4, v0, v6

    if-gez v4, :cond_1

    .line 130
    :goto_0
    return-void

    .line 123
    :cond_1
    add-long v2, v0, p1

    .line 124
    .local v2, "u":J
    cmp-long v4, v2, v6

    if-gez v4, :cond_2

    .line 125
    const-wide v2, 0x7fffffffffffffffL

    .line 127
    :cond_2
    invoke-virtual {p0, v0, v1, v2, v3}, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    iget-object v4, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->producer:Lrx/Producer;

    invoke-interface {v4, p1, p2}, Lrx/Producer;->request(J)V

    .line 129
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->drain()V

    goto :goto_0
.end method

.method public unsubscribe()V
    .locals 6

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorMapNotification$SingleEmitter;, "Lrx/internal/operators/OperatorMapNotification$SingleEmitter<TT;>;"
    const-wide/high16 v4, -0x8000000000000000L

    .line 228
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->get()J

    move-result-wide v0

    .line 229
    .local v0, "r":J
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 230
    invoke-virtual {p0, v4, v5}, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->getAndSet(J)J

    move-result-wide v0

    .line 231
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 232
    iget-object v2, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->cancel:Lrx/Subscription;

    invoke-interface {v2}, Lrx/Subscription;->unsubscribe()V

    .line 235
    :cond_0
    return-void
.end method
