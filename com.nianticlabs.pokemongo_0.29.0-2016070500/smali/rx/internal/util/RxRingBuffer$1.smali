.class final Lrx/internal/util/RxRingBuffer$1;
.super Lrx/internal/util/ObjectPool;
.source "RxRingBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/RxRingBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/internal/util/ObjectPool",
        "<",
        "Ljava/util/Queue",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 278
    invoke-direct {p0}, Lrx/internal/util/ObjectPool;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 278
    invoke-virtual {p0}, Lrx/internal/util/RxRingBuffer$1;->createObject()Lrx/internal/util/unsafe/SpscArrayQueue;

    move-result-object v0

    return-object v0
.end method

.method protected createObject()Lrx/internal/util/unsafe/SpscArrayQueue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/util/unsafe/SpscArrayQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    new-instance v0, Lrx/internal/util/unsafe/SpscArrayQueue;

    sget v1, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-direct {v0, v1}, Lrx/internal/util/unsafe/SpscArrayQueue;-><init>(I)V

    return-object v0
.end method
