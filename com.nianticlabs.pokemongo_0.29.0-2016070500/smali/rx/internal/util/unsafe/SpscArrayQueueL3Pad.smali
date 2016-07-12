.class abstract Lrx/internal/util/unsafe/SpscArrayQueueL3Pad;
.super Lrx/internal/util/unsafe/SpscArrayQueueConsumerField;
.source "SpscArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/SpscArrayQueueConsumerField",
        "<TE;>;"
    }
.end annotation


# instance fields
.field p30:J

.field p31:J

.field p32:J

.field p33:J

.field p34:J

.field p35:J

.field p36:J

.field p37:J

.field p40:J

.field p41:J

.field p42:J

.field p43:J

.field p44:J

.field p45:J

.field p46:J


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 86
    .local p0, "this":Lrx/internal/util/unsafe/SpscArrayQueueL3Pad;, "Lrx/internal/util/unsafe/SpscArrayQueueL3Pad<TE;>;"
    invoke-direct {p0, p1}, Lrx/internal/util/unsafe/SpscArrayQueueConsumerField;-><init>(I)V

    .line 87
    return-void
.end method
