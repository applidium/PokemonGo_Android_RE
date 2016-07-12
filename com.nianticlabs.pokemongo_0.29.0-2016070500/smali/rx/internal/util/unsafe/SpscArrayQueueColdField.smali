.class abstract Lrx/internal/util/unsafe/SpscArrayQueueColdField;
.super Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;
.source "SpscArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final MAX_LOOK_AHEAD_STEP:Ljava/lang/Integer;


# instance fields
.field protected final lookAheadStep:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    const-string v0, "jctools.spsc.max.lookahead.step"

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lrx/internal/util/unsafe/SpscArrayQueueColdField;->MAX_LOOK_AHEAD_STEP:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .prologue
    .line 25
    .local p0, "this":Lrx/internal/util/unsafe/SpscArrayQueueColdField;, "Lrx/internal/util/unsafe/SpscArrayQueueColdField<TE;>;"
    invoke-direct {p0, p1}, Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;-><init>(I)V

    .line 26
    div-int/lit8 v0, p1, 0x4

    sget-object v1, Lrx/internal/util/unsafe/SpscArrayQueueColdField;->MAX_LOOK_AHEAD_STEP:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lrx/internal/util/unsafe/SpscArrayQueueColdField;->lookAheadStep:I

    .line 27
    return-void
.end method
