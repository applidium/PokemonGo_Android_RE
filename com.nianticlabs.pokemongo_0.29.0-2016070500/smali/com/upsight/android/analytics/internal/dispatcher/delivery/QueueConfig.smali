.class public Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;
.super Ljava/lang/Object;
.source "QueueConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$1;,
        Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;
    }
.end annotation


# instance fields
.field private mBatchSenderConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;

.field private mBatcherConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

.field private mEndpointAddress:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;->mEndpointAddress:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;->access$100(Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mEndpointAddress:Ljava/lang/String;

    .line 71
    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;->mBatchSenderConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;->access$200(Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mBatchSenderConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;

    .line 72
    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;->mBatcherConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;->access$300(Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mBatcherConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    .line 73
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;
    .param p2, "x1"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$1;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;-><init>(Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    if-ne p0, p1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v1

    .line 112
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 114
    check-cast v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;

    .line 116
    .local v0, "that":Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mBatchSenderConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mBatchSenderConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;

    iget-object v4, v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mBatchSenderConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;

    invoke-virtual {v3, v4}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move v1, v2

    .line 117
    goto :goto_0

    .line 116
    :cond_5
    iget-object v3, v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mBatchSenderConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;

    if-nez v3, :cond_4

    .line 118
    :cond_6
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mBatcherConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mBatcherConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    iget-object v4, v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mBatcherConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    invoke-virtual {v3, v4}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_7
    move v1, v2

    .line 119
    goto :goto_0

    .line 118
    :cond_8
    iget-object v3, v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mBatcherConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    if-nez v3, :cond_7

    .line 120
    :cond_9
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mEndpointAddress:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mEndpointAddress:Ljava/lang/String;

    iget-object v4, v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mEndpointAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 121
    goto :goto_0

    .line 120
    :cond_a
    iget-object v3, v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mEndpointAddress:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getBatchSenderConfig()Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mBatchSenderConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;

    return-object v0
.end method

.method public getBatcherConfig()Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mBatcherConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    return-object v0
.end method

.method public getEndpointAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mEndpointAddress:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mEndpointAddress:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mEndpointAddress:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 129
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mBatchSenderConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mBatchSenderConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 130
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mBatcherConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mBatcherConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 131
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 128
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 129
    goto :goto_1
.end method

.method public isValid()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 101
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mEndpointAddress:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 102
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mBatcherConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mBatcherConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    invoke-virtual {v2}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mBatchSenderConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mBatchSenderConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;

    invoke-virtual {v2}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;->isValid()Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 105
    :cond_0
    :goto_0
    return v1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/net/MalformedURLException;
    goto :goto_0
.end method
