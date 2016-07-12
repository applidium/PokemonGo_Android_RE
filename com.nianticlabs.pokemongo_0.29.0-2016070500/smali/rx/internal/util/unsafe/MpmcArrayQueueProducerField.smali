.class abstract Lrx/internal/util/unsafe/MpmcArrayQueueProducerField;
.super Lrx/internal/util/unsafe/MpmcArrayQueueL1Pad;
.source "MpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/MpmcArrayQueueL1Pad",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final P_INDEX_OFFSET:J


# instance fields
.field private volatile producerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 34
    :try_start_0
    sget-object v1, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    const-class v2, Lrx/internal/util/unsafe/MpmcArrayQueueProducerField;

    const-string v3, "producerIndex"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lrx/internal/util/unsafe/MpmcArrayQueueProducerField;->P_INDEX_OFFSET:J
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 43
    .local p0, "this":Lrx/internal/util/unsafe/MpmcArrayQueueProducerField;, "Lrx/internal/util/unsafe/MpmcArrayQueueProducerField<TE;>;"
    invoke-direct {p0, p1}, Lrx/internal/util/unsafe/MpmcArrayQueueL1Pad;-><init>(I)V

    .line 44
    return-void
.end method


# virtual methods
.method protected final casProducerIndex(JJ)Z
    .locals 9
    .param p1, "expect"    # J
    .param p3, "newValue"    # J

    .prologue
    .line 51
    .local p0, "this":Lrx/internal/util/unsafe/MpmcArrayQueueProducerField;, "Lrx/internal/util/unsafe/MpmcArrayQueueProducerField<TE;>;"
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/internal/util/unsafe/MpmcArrayQueueProducerField;->P_INDEX_OFFSET:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method protected final lvProducerIndex()J
    .locals 2

    .prologue
    .line 47
    .local p0, "this":Lrx/internal/util/unsafe/MpmcArrayQueueProducerField;, "Lrx/internal/util/unsafe/MpmcArrayQueueProducerField<TE;>;"
    iget-wide v0, p0, Lrx/internal/util/unsafe/MpmcArrayQueueProducerField;->producerIndex:J

    return-wide v0
.end method
