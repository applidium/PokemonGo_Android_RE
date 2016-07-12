.class Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder$BatcherFactory;
.super Ljava/lang/Object;
.source "QueueBuilder.java"

# interfaces
.implements Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatcherFactory"
.end annotation


# instance fields
.field private mConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

.field final synthetic this$0:Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;


# direct methods
.method public constructor <init>(Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;)V
    .locals 0
    .param p2, "config"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder$BatcherFactory;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder$BatcherFactory;->mConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    .line 193
    return-void
.end method


# virtual methods
.method public create(Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;
    .locals 3
    .param p1, "schema"    # Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;
    .param p2, "batchSender"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    .prologue
    .line 206
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder$BatcherFactory;->mConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder$BatcherFactory;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;

    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;->mRetryExecutor:Lrx/Scheduler;
    invoke-static {v2}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;->access$000(Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;)Lrx/Scheduler;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;-><init>(Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;Lrx/Scheduler;)V

    return-object v0
.end method
