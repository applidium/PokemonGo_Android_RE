.class abstract Lrx/internal/util/unsafe/SpmcArrayQueueProducerField;
.super Lrx/internal/util/unsafe/SpmcArrayQueueL1Pad;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/SpmcArrayQueueL1Pad",
        "<TE;>;"
    }
.end annotation


# static fields
.field protected static final P_INDEX_OFFSET:J


# instance fields
.field private volatile producerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 34
    :try_start_0
    sget-object v1, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    const-class v2, Lrx/internal/util/unsafe/SpmcArrayQueueProducerField;

    const-string v3, "producerIndex"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lrx/internal/util/unsafe/SpmcArrayQueueProducerField;->P_INDEX_OFFSET:J
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
    .line 51
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueueProducerField;, "Lrx/internal/util/unsafe/SpmcArrayQueueProducerField<TE;>;"
    invoke-direct {p0, p1}, Lrx/internal/util/unsafe/SpmcArrayQueueL1Pad;-><init>(I)V

    .line 52
    return-void
.end method


# virtual methods
.method protected final lvProducerIndex()J
    .locals 2

    .prologue
    .line 43
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueueProducerField;, "Lrx/internal/util/unsafe/SpmcArrayQueueProducerField<TE;>;"
    iget-wide v0, p0, Lrx/internal/util/unsafe/SpmcArrayQueueProducerField;->producerIndex:J

    return-wide v0
.end method

.method protected final soTail(J)V
    .locals 7
    .param p1, "v"    # J

    .prologue
    .line 47
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueueProducerField;, "Lrx/internal/util/unsafe/SpmcArrayQueueProducerField<TE;>;"
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/internal/util/unsafe/SpmcArrayQueueProducerField;->P_INDEX_OFFSET:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 48
    return-void
.end method
