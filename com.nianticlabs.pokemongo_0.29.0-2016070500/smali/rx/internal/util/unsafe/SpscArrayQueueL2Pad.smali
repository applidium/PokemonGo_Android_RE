.class abstract Lrx/internal/util/unsafe/SpscArrayQueueL2Pad;
.super Lrx/internal/util/unsafe/SpscArrayQueueProducerFields;
.source "SpscArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/SpscArrayQueueProducerFields",
        "<TE;>;"
    }
.end annotation


# instance fields
.field p20:J

.field p21:J

.field p22:J

.field p23:J

.field p24:J

.field p25:J

.field p26:J

.field p30:J

.field p31:J

.field p32:J

.field p33:J

.field p34:J

.field p35:J

.field p36:J

.field p37:J


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 61
    .local p0, "this":Lrx/internal/util/unsafe/SpscArrayQueueL2Pad;, "Lrx/internal/util/unsafe/SpscArrayQueueL2Pad<TE;>;"
    invoke-direct {p0, p1}, Lrx/internal/util/unsafe/SpscArrayQueueProducerFields;-><init>(I)V

    .line 62
    return-void
.end method
