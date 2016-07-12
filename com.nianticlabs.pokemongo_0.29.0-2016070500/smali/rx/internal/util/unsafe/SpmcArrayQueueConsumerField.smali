.class abstract Lrx/internal/util/unsafe/SpmcArrayQueueConsumerField;
.super Lrx/internal/util/unsafe/SpmcArrayQueueL2Pad;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/SpmcArrayQueueL2Pad",
        "<TE;>;"
    }
.end annotation


# static fields
.field protected static final C_INDEX_OFFSET:J


# instance fields
.field private volatile consumerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 68
    :try_start_0
    sget-object v1, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    const-class v2, Lrx/internal/util/unsafe/SpmcArrayQueueConsumerField;

    const-string v3, "consumerIndex"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lrx/internal/util/unsafe/SpmcArrayQueueConsumerField;->C_INDEX_OFFSET:J
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
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
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueueConsumerField;, "Lrx/internal/util/unsafe/SpmcArrayQueueConsumerField<TE;>;"
    invoke-direct {p0, p1}, Lrx/internal/util/unsafe/SpmcArrayQueueL2Pad;-><init>(I)V

    .line 78
    return-void
.end method


# virtual methods
.method protected final casHead(JJ)Z
    .locals 9
    .param p1, "expect"    # J
    .param p3, "newValue"    # J

    .prologue
    .line 85
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueueConsumerField;, "Lrx/internal/util/unsafe/SpmcArrayQueueConsumerField<TE;>;"
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/internal/util/unsafe/SpmcArrayQueueConsumerField;->C_INDEX_OFFSET:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method protected final lvConsumerIndex()J
    .locals 2

    .prologue
    .line 81
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueueConsumerField;, "Lrx/internal/util/unsafe/SpmcArrayQueueConsumerField<TE;>;"
    iget-wide v0, p0, Lrx/internal/util/unsafe/SpmcArrayQueueConsumerField;->consumerIndex:J

    return-wide v0
.end method
