.class public final Lrx/internal/producers/ProducerArbiter;
.super Ljava/lang/Object;
.source "ProducerArbiter.java"

# interfaces
.implements Lrx/Producer;


# static fields
.field static final NULL_PRODUCER:Lrx/Producer;


# instance fields
.field currentProducer:Lrx/Producer;

.field emitting:Z

.field missedProduced:J

.field missedProducer:Lrx/Producer;

.field missedRequested:J

.field requested:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lrx/internal/producers/ProducerArbiter$1;

    invoke-direct {v0}, Lrx/internal/producers/ProducerArbiter$1;-><init>()V

    sput-object v0, Lrx/internal/producers/ProducerArbiter;->NULL_PRODUCER:Lrx/Producer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emitLoop()V
    .locals 14

    .prologue
    .line 145
    :cond_0
    :goto_0
    monitor-enter p0

    .line 146
    :try_start_0
    iget-wide v4, p0, Lrx/internal/producers/ProducerArbiter;->missedRequested:J

    .line 147
    .local v4, "localRequested":J
    iget-wide v0, p0, Lrx/internal/producers/ProducerArbiter;->missedProduced:J

    .line 148
    .local v0, "localProduced":J
    iget-object v2, p0, Lrx/internal/producers/ProducerArbiter;->missedProducer:Lrx/Producer;

    .line 149
    .local v2, "localProducer":Lrx/Producer;
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-nez v12, :cond_1

    const-wide/16 v12, 0x0

    cmp-long v12, v0, v12

    if-nez v12, :cond_1

    if-nez v2, :cond_1

    .line 152
    const/4 v12, 0x0

    iput-boolean v12, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    .line 153
    monitor-exit p0

    return-void

    .line 155
    :cond_1
    const-wide/16 v12, 0x0

    iput-wide v12, p0, Lrx/internal/producers/ProducerArbiter;->missedRequested:J

    .line 156
    const-wide/16 v12, 0x0

    iput-wide v12, p0, Lrx/internal/producers/ProducerArbiter;->missedProduced:J

    .line 157
    const/4 v12, 0x0

    iput-object v12, p0, Lrx/internal/producers/ProducerArbiter;->missedProducer:Lrx/Producer;

    .line 158
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    iget-wide v6, p0, Lrx/internal/producers/ProducerArbiter;->requested:J

    .line 162
    .local v6, "r":J
    const-wide v12, 0x7fffffffffffffffL

    cmp-long v12, v6, v12

    if-eqz v12, :cond_3

    .line 163
    add-long v8, v6, v4

    .line 164
    .local v8, "u":J
    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-ltz v12, :cond_2

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v12, v8, v12

    if-nez v12, :cond_4

    .line 165
    :cond_2
    const-wide v6, 0x7fffffffffffffffL

    .line 166
    iput-wide v6, p0, Lrx/internal/producers/ProducerArbiter;->requested:J

    .line 176
    .end local v8    # "u":J
    :cond_3
    :goto_1
    if-eqz v2, :cond_7

    .line 177
    sget-object v12, Lrx/internal/producers/ProducerArbiter;->NULL_PRODUCER:Lrx/Producer;

    if-ne v2, v12, :cond_6

    .line 178
    const/4 v12, 0x0

    iput-object v12, p0, Lrx/internal/producers/ProducerArbiter;->currentProducer:Lrx/Producer;

    goto :goto_0

    .line 158
    .end local v0    # "localProduced":J
    .end local v2    # "localProducer":Lrx/Producer;
    .end local v4    # "localRequested":J
    .end local v6    # "r":J
    :catchall_0
    move-exception v12

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v12

    .line 168
    .restart local v0    # "localProduced":J
    .restart local v2    # "localProducer":Lrx/Producer;
    .restart local v4    # "localRequested":J
    .restart local v6    # "r":J
    .restart local v8    # "u":J
    :cond_4
    sub-long v10, v8, v0

    .line 169
    .local v10, "v":J
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-gez v12, :cond_5

    .line 170
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "more produced than requested"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 172
    :cond_5
    move-wide v6, v10

    .line 173
    iput-wide v10, p0, Lrx/internal/producers/ProducerArbiter;->requested:J

    goto :goto_1

    .line 180
    .end local v8    # "u":J
    .end local v10    # "v":J
    :cond_6
    iput-object v2, p0, Lrx/internal/producers/ProducerArbiter;->currentProducer:Lrx/Producer;

    .line 181
    invoke-interface {v2, v6, v7}, Lrx/Producer;->request(J)V

    goto :goto_0

    .line 184
    :cond_7
    iget-object v3, p0, Lrx/internal/producers/ProducerArbiter;->currentProducer:Lrx/Producer;

    .line 185
    .local v3, "p":Lrx/Producer;
    if-eqz v3, :cond_0

    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-eqz v12, :cond_0

    .line 186
    invoke-interface {v3, v4, v5}, Lrx/Producer;->request(J)V

    goto :goto_0
.end method

.method public produced(J)V
    .locals 11
    .param p1, "n"    # J

    .prologue
    const-wide/16 v8, 0x0

    .line 81
    cmp-long v3, p1, v8

    if-gtz v3, :cond_0

    .line 82
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v6, "n > 0 required"

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 84
    :cond_0
    monitor-enter p0

    .line 85
    :try_start_0
    iget-boolean v3, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    if-eqz v3, :cond_2

    .line 86
    iget-wide v6, p0, Lrx/internal/producers/ProducerArbiter;->missedProduced:J

    add-long/2addr v6, p1

    iput-wide v6, p0, Lrx/internal/producers/ProducerArbiter;->missedProduced:J

    .line 87
    monitor-exit p0

    .line 112
    :cond_1
    :goto_0
    return-void

    .line 89
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    .line 90
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 92
    const/4 v2, 0x0

    .line 94
    .local v2, "skipFinal":Z
    :try_start_1
    iget-wide v0, p0, Lrx/internal/producers/ProducerArbiter;->requested:J

    .line 95
    .local v0, "r":J
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v3, v0, v6

    if-eqz v3, :cond_5

    .line 96
    sub-long v4, v0, p1

    .line 97
    .local v4, "u":J
    cmp-long v3, v4, v8

    if-gez v3, :cond_4

    .line 98
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v6, "more items arrived than were requested"

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    .end local v0    # "r":J
    .end local v4    # "u":J
    :catchall_0
    move-exception v3

    if-nez v2, :cond_3

    .line 107
    monitor-enter p0

    .line 108
    const/4 v6, 0x0

    :try_start_2
    iput-boolean v6, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    .line 109
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_3
    throw v3

    .line 90
    .end local v2    # "skipFinal":Z
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 100
    .restart local v0    # "r":J
    .restart local v2    # "skipFinal":Z
    .restart local v4    # "u":J
    :cond_4
    :try_start_4
    iput-wide v4, p0, Lrx/internal/producers/ProducerArbiter;->requested:J

    .line 103
    .end local v4    # "u":J
    :cond_5
    invoke-virtual {p0}, Lrx/internal/producers/ProducerArbiter;->emitLoop()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 104
    const/4 v2, 0x1

    .line 106
    if-nez v2, :cond_1

    .line 107
    monitor-enter p0

    .line 108
    const/4 v3, 0x0

    :try_start_5
    iput-boolean v3, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    .line 109
    monitor-exit p0

    goto :goto_0

    :catchall_2
    move-exception v3

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3

    .end local v0    # "r":J
    :catchall_3
    move-exception v3

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v3
.end method

.method public request(J)V
    .locals 11
    .param p1, "n"    # J

    .prologue
    const-wide/16 v8, 0x0

    .line 42
    cmp-long v6, p1, v8

    if-gez v6, :cond_0

    .line 43
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "n >= 0 required"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 45
    :cond_0
    cmp-long v6, p1, v8

    if-nez v6, :cond_2

    .line 78
    :cond_1
    :goto_0
    return-void

    .line 48
    :cond_2
    monitor-enter p0

    .line 49
    :try_start_0
    iget-boolean v6, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    if-eqz v6, :cond_3

    .line 50
    iget-wide v6, p0, Lrx/internal/producers/ProducerArbiter;->missedRequested:J

    add-long/2addr v6, p1

    iput-wide v6, p0, Lrx/internal/producers/ProducerArbiter;->missedRequested:J

    .line 51
    monitor-exit p0

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 53
    :cond_3
    const/4 v6, 0x1

    :try_start_1
    iput-boolean v6, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    .line 54
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    const/4 v1, 0x0

    .line 57
    .local v1, "skipFinal":Z
    :try_start_2
    iget-wide v2, p0, Lrx/internal/producers/ProducerArbiter;->requested:J

    .line 58
    .local v2, "r":J
    add-long v4, v2, p1

    .line 59
    .local v4, "u":J
    cmp-long v6, v4, v8

    if-gez v6, :cond_4

    .line 60
    const-wide v4, 0x7fffffffffffffffL

    .line 62
    :cond_4
    iput-wide v4, p0, Lrx/internal/producers/ProducerArbiter;->requested:J

    .line 64
    iget-object v0, p0, Lrx/internal/producers/ProducerArbiter;->currentProducer:Lrx/Producer;

    .line 65
    .local v0, "p":Lrx/Producer;
    if-eqz v0, :cond_5

    .line 66
    invoke-interface {v0, p1, p2}, Lrx/Producer;->request(J)V

    .line 69
    :cond_5
    invoke-virtual {p0}, Lrx/internal/producers/ProducerArbiter;->emitLoop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 70
    const/4 v1, 0x1

    .line 72
    if-nez v1, :cond_1

    .line 73
    monitor-enter p0

    .line 74
    const/4 v6, 0x0

    :try_start_3
    iput-boolean v6, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    .line 75
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v6

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    .line 72
    .end local v0    # "p":Lrx/Producer;
    .end local v2    # "r":J
    .end local v4    # "u":J
    :catchall_2
    move-exception v6

    if-nez v1, :cond_6

    .line 73
    monitor-enter p0

    .line 74
    const/4 v7, 0x0

    :try_start_4
    iput-boolean v7, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    .line 75
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_6
    throw v6

    :catchall_3
    move-exception v6

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v6
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 4
    .param p1, "newProducer"    # Lrx/Producer;

    .prologue
    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    iget-boolean v1, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    if-eqz v1, :cond_2

    .line 117
    if-nez p1, :cond_0

    sget-object p1, Lrx/internal/producers/ProducerArbiter;->NULL_PRODUCER:Lrx/Producer;

    .end local p1    # "newProducer":Lrx/Producer;
    :cond_0
    iput-object p1, p0, Lrx/internal/producers/ProducerArbiter;->missedProducer:Lrx/Producer;

    .line 118
    monitor-exit p0

    .line 138
    :cond_1
    :goto_0
    return-void

    .line 120
    .restart local p1    # "newProducer":Lrx/Producer;
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    .line 121
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 122
    const/4 v0, 0x0

    .line 124
    .local v0, "skipFinal":Z
    :try_start_1
    iput-object p1, p0, Lrx/internal/producers/ProducerArbiter;->currentProducer:Lrx/Producer;

    .line 125
    if-eqz p1, :cond_3

    .line 126
    iget-wide v2, p0, Lrx/internal/producers/ProducerArbiter;->requested:J

    invoke-interface {p1, v2, v3}, Lrx/Producer;->request(J)V

    .line 129
    :cond_3
    invoke-virtual {p0}, Lrx/internal/producers/ProducerArbiter;->emitLoop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 130
    const/4 v0, 0x1

    .line 132
    if-nez v0, :cond_1

    .line 133
    monitor-enter p0

    .line 134
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    .line 135
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 121
    .end local v0    # "skipFinal":Z
    .end local p1    # "newProducer":Lrx/Producer;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 132
    .restart local v0    # "skipFinal":Z
    .restart local p1    # "newProducer":Lrx/Producer;
    :catchall_2
    move-exception v1

    if-nez v0, :cond_4

    .line 133
    monitor-enter p0

    .line 134
    const/4 v2, 0x0

    :try_start_4
    iput-boolean v2, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    .line 135
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_4
    throw v1

    :catchall_3
    move-exception v1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v1
.end method
