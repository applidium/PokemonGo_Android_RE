.class public Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;
.super Ljava/lang/Object;
.source "QueueConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBatchSenderConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;

.field private mBatcherConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

.field private mEndpointAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;->mEndpointAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;->mBatchSenderConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;

    return-object v0
.end method

.method static synthetic access$300(Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;->mBatcherConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;-><init>(Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$1;)V

    return-object v0
.end method

.method public setBatchSenderConfig(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;
    .locals 0
    .param p1, "retryConfig"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;->mBatchSenderConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;

    .line 39
    return-object p0
.end method

.method public setBatcherConfig(Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;
    .locals 0
    .param p1, "batcherConfig"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;->mBatcherConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    .line 48
    return-object p0
.end method

.method public setEndpointAddress(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;
    .locals 0
    .param p1, "endpointAddress"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;->mEndpointAddress:Ljava/lang/String;

    .line 30
    return-object p0
.end method
