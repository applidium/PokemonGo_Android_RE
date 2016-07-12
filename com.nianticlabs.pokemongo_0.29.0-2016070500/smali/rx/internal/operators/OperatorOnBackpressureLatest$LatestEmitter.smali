.class final Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OperatorOnBackpressureLatest.java"

# interfaces
.implements Lrx/Observer;
.implements Lrx/Producer;
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorOnBackpressureLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LatestEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/Producer;",
        "Lrx/Subscription;",
        "Lrx/Observer",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:Ljava/lang/Object;

.field static final NOT_REQUESTED:J = -0x4000000000000000L

.field private static final serialVersionUID:J = -0x12ef4cd3e08498a2L


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field volatile done:Z

.field emitting:Z

.field missed:Z

.field parent:Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field terminal:Ljava/lang/Throwable;

.field final value:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->EMPTY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 72
    iput-object p1, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->child:Lrx/Subscriber;

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->EMPTY:Ljava/lang/Object;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->value:Ljava/util/concurrent/atomic/AtomicReference;

    .line 74
    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->lazySet(J)V

    .line 75
    return-void
.end method


# virtual methods
.method emit()V
    .locals 8

    .prologue
    .line 143
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    monitor-enter p0

    .line 144
    :try_start_0
    iget-boolean v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->emitting:Z

    if-eqz v6, :cond_1

    .line 145
    const/4 v6, 0x1

    iput-boolean v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->missed:Z

    .line 146
    monitor-exit p0

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->emitting:Z

    .line 149
    const/4 v6, 0x0

    iput-boolean v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->missed:Z

    .line 150
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 151
    const/4 v1, 0x0

    .line 154
    .local v1, "skipFinal":Z
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->get()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-wide v2

    .line 155
    .local v2, "r":J
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, v2, v6

    if-nez v6, :cond_2

    .line 156
    const/4 v1, 0x1

    .line 186
    :goto_2
    if-nez v1, :cond_0

    .line 187
    monitor-enter p0

    .line 188
    const/4 v6, 0x0

    :try_start_2
    iput-boolean v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->emitting:Z

    .line 189
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 150
    .end local v1    # "skipFinal":Z
    .end local v2    # "r":J
    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    .line 159
    .restart local v1    # "skipFinal":Z
    .restart local v2    # "r":J
    :cond_2
    :try_start_4
    iget-object v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    .line 160
    .local v4, "v":Ljava/lang/Object;
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_3

    sget-object v6, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->EMPTY:Ljava/lang/Object;

    if-eq v4, v6, :cond_3

    .line 162
    move-object v5, v4

    .line 163
    .local v5, "v2":Ljava/lang/Object;, "TT;"
    iget-object v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->child:Lrx/Subscriber;

    invoke-virtual {v6, v5}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 164
    iget-object v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->value:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v7, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->EMPTY:Ljava/lang/Object;

    invoke-virtual {v6, v4, v7}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 165
    const-wide/16 v6, 0x1

    invoke-virtual {p0, v6, v7}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->produced(J)J

    .line 166
    sget-object v4, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->EMPTY:Ljava/lang/Object;

    .line 168
    .end local v5    # "v2":Ljava/lang/Object;, "TT;"
    :cond_3
    sget-object v6, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->EMPTY:Ljava/lang/Object;

    if-ne v4, v6, :cond_4

    iget-boolean v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->done:Z

    if-eqz v6, :cond_4

    .line 169
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->terminal:Ljava/lang/Throwable;

    .line 170
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_6

    .line 171
    iget-object v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->child:Lrx/Subscriber;

    invoke-virtual {v6, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 176
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_4
    :goto_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 177
    :try_start_5
    iget-boolean v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->missed:Z

    if-nez v6, :cond_7

    .line 178
    const/4 v6, 0x0

    iput-boolean v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->emitting:Z

    .line 179
    const/4 v1, 0x1

    .line 180
    monitor-exit p0

    goto :goto_2

    .line 183
    :catchall_2
    move-exception v6

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 186
    .end local v2    # "r":J
    .end local v4    # "v":Ljava/lang/Object;
    :catchall_3
    move-exception v6

    if-nez v1, :cond_5

    .line 187
    monitor-enter p0

    .line 188
    const/4 v7, 0x0

    :try_start_7
    iput-boolean v7, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->emitting:Z

    .line 189
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :cond_5
    throw v6

    .line 173
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v2    # "r":J
    .restart local v4    # "v":Ljava/lang/Object;
    :cond_6
    :try_start_8
    iget-object v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->child:Lrx/Subscriber;

    invoke-virtual {v6}, Lrx/Subscriber;->onCompleted()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_3

    .line 182
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_7
    const/4 v6, 0x0

    :try_start_9
    iput-boolean v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->missed:Z

    .line 183
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_1

    .line 189
    .end local v2    # "r":J
    .end local v4    # "v":Ljava/lang/Object;
    :catchall_4
    move-exception v6

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v6
.end method

.method public isUnsubscribed()Z
    .locals 4

    .prologue
    .line 117
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 139
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->done:Z

    .line 140
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->emit()V

    .line 141
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 133
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->terminal:Ljava/lang/Throwable;

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->done:Z

    .line 135
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->emit()V

    .line 136
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 129
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->emit()V

    .line 130
    return-void
.end method

.method produced(J)J
    .locals 7
    .param p1, "n"    # J

    .prologue
    .line 105
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->get()J

    move-result-wide v0

    .line 106
    .local v0, "r":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    .line 111
    .end local v0    # "r":J
    :goto_0
    return-wide v0

    .line 109
    .restart local v0    # "r":J
    :cond_1
    sub-long v2, v0, p1

    .line 110
    .local v2, "u":J
    invoke-virtual {p0, v0, v1, v2, v3}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    move-wide v0, v2

    .line 111
    goto :goto_0
.end method

.method public request(J)V
    .locals 11
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    const-wide/16 v8, 0x0

    const-wide/high16 v6, -0x4000000000000000L    # -2.0

    .line 78
    cmp-long v4, p1, v8

    if-ltz v4, :cond_1

    .line 80
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->get()J

    move-result-wide v0

    .line 81
    .local v0, "r":J
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v0, v4

    if-nez v4, :cond_2

    .line 102
    .end local v0    # "r":J
    :cond_1
    :goto_0
    return-void

    .line 85
    .restart local v0    # "r":J
    :cond_2
    cmp-long v4, v0, v6

    if-nez v4, :cond_5

    .line 86
    move-wide v2, p1

    .line 93
    .local v2, "u":J
    :cond_3
    :goto_1
    invoke-virtual {p0, v0, v1, v2, v3}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 94
    cmp-long v4, v0, v6

    if-nez v4, :cond_4

    .line 95
    iget-object v4, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->parent:Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;

    const-wide v6, 0x7fffffffffffffffL

    invoke-virtual {v4, v6, v7}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;->requestMore(J)V

    .line 97
    :cond_4
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->emit()V

    goto :goto_0

    .line 88
    .end local v2    # "u":J
    :cond_5
    add-long v2, v0, p1

    .line 89
    .restart local v2    # "u":J
    cmp-long v4, v2, v8

    if-gez v4, :cond_3

    .line 90
    const-wide v2, 0x7fffffffffffffffL

    goto :goto_1
.end method

.method public unsubscribe()V
    .locals 4

    .prologue
    .line 121
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 122
    const-wide/high16 v0, -0x8000000000000000L

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->getAndSet(J)J

    .line 124
    :cond_0
    return-void
.end method
