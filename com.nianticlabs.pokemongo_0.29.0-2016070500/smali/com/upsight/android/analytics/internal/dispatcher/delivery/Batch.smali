.class Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;
.super Ljava/lang/Object;
.source "Batch.java"


# instance fields
.field private mCapacityLeft:I

.field private mPackets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;->mCapacityLeft:I

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;->mPackets:Ljava/util/Set;

    .line 28
    return-void
.end method


# virtual methods
.method public addPacket(Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;)V
    .locals 1
    .param p1, "packet"    # Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;->mPackets:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    iget v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;->mCapacityLeft:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;->mCapacityLeft:I

    .line 45
    return-void
.end method

.method public capacityLeft()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;->mCapacityLeft:I

    return v0
.end method

.method public getPackets()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;->mPackets:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
