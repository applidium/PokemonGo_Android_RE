.class public Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;
.super Ljava/lang/Object;
.source "Batcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field public final batchCapacity:I

.field public final maxBatchAge:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "batchCapacity"    # I
    .param p2, "maxBatchAge"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;->batchCapacity:I

    .line 54
    iput p2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;->maxBatchAge:I

    .line 55
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    if-ne p0, p1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v1

    .line 74
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 75
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 78
    check-cast v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    .line 80
    .local v0, "that":Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;
    iget v3, v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;->batchCapacity:I

    iget v4, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;->batchCapacity:I

    if-ne v3, v4, :cond_4

    iget v3, v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;->maxBatchAge:I

    iget v4, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;->maxBatchAge:I

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;->maxBatchAge:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;->batchCapacity:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
