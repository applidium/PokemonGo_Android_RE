.class public Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;
.super Ljava/lang/Object;
.source "Batcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;,
        Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Factory;
    }
.end annotation


# static fields
.field private static final DISABLE_AGING_MAX_AGE:I


# instance fields
.field private mAgingExecutor:Lrx/Scheduler;

.field private mAgingRunnable:Lrx/functions/Action0;

.field private mAgingTask:Lrx/Subscription;

.field private mBatchSender:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

.field private mConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

.field private mCurrentBatch:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;

.field private mSchema:Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;


# direct methods
.method constructor <init>(Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;Lrx/Scheduler;)V
    .locals 1
    .param p1, "config"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;
    .param p2, "schema"    # Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;
    .param p3, "batchSender"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;
    .param p4, "executor"    # Lrx/Scheduler;

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$1;

    invoke-direct {v0, p0}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$1;-><init>(Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;)V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mAgingRunnable:Lrx/functions/Action0;

    .line 112
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mSchema:Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;

    .line 113
    iput-object p3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mBatchSender:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    .line 114
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    .line 115
    iput-object p4, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mAgingExecutor:Lrx/Scheduler;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->sendCurrentBatch()V

    return-void
.end method

.method private declared-synchronized sendCurrentBatch()V
    .locals 4

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mCurrentBatch:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;

    .line 149
    .local v0, "batch":Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;
    if-eqz v0, :cond_1

    .line 150
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mCurrentBatch:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;

    .line 152
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mAgingTask:Lrx/Subscription;

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mAgingTask:Lrx/Subscription;

    invoke-interface {v1}, Lrx/Subscription;->unsubscribe()V

    .line 154
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mAgingTask:Lrx/Subscription;

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mBatchSender:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    new-instance v2, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mSchema:Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;

    invoke-direct {v2, v0, v3}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;-><init>(Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;)V

    invoke-virtual {v1, v2}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->submitRequest(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :cond_1
    monitor-exit p0

    return-void

    .line 148
    .end local v0    # "batch":Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized addPacket(Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;)V
    .locals 6
    .param p1, "packet"    # Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mCurrentBatch:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;

    if-nez v1, :cond_0

    .line 125
    new-instance v1, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    iget v2, v2, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;->batchCapacity:I

    invoke-direct {v1, v2}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;-><init>(I)V

    iput-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mCurrentBatch:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;

    .line 127
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    iget v1, v1, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;->maxBatchAge:I

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mAgingExecutor:Lrx/Scheduler;

    invoke-virtual {v1}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mAgingRunnable:Lrx/functions/Action0;

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    iget v3, v3, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;->maxBatchAge:I

    int-to-long v4, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v4, v5, v3}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object v1

    iput-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mAgingTask:Lrx/Subscription;

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mCurrentBatch:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;

    invoke-virtual {v1, p1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;->addPacket(Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;)V

    .line 134
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mCurrentBatch:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;

    invoke-virtual {v1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;->capacityLeft()I

    move-result v0

    .line 135
    .local v0, "count":I
    if-nez v0, :cond_1

    .line 136
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->sendCurrentBatch()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :cond_1
    monitor-exit p0

    return-void

    .line 124
    .end local v0    # "count":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
