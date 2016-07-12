.class abstract Lrx/internal/util/unsafe/SpscArrayQueueConsumerField;
.super Lrx/internal/util/unsafe/SpscArrayQueueL2Pad;
.source "SpscArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/SpscArrayQueueL2Pad",
        "<TE;>;"
    }
.end annotation


# static fields
.field protected static final C_INDEX_OFFSET:J


# instance fields
.field protected consumerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 70
    :try_start_0
    sget-object v1, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    const-class v2, Lrx/internal/util/unsafe/SpscArrayQueueConsumerField;

    const-string v3, "consumerIndex"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lrx/internal/util/unsafe/SpscArrayQueueConsumerField;->C_INDEX_OFFSET:J
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 77
    .local p0, "this":Lrx/internal/util/unsafe/SpscArrayQueueConsumerField;, "Lrx/internal/util/unsafe/SpscArrayQueueConsumerField<TE;>;"
    invoke-direct {p0, p1}, Lrx/internal/util/unsafe/SpscArrayQueueL2Pad;-><init>(I)V

    .line 78
    return-void
.end method
