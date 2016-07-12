.class final Lrx/internal/util/IndexedRingBuffer$1;
.super Lrx/internal/util/ObjectPool;
.source "IndexedRingBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/IndexedRingBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/internal/util/ObjectPool",
        "<",
        "Lrx/internal/util/IndexedRingBuffer",
        "<*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lrx/internal/util/ObjectPool;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lrx/internal/util/IndexedRingBuffer$1;->createObject()Lrx/internal/util/IndexedRingBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected createObject()Lrx/internal/util/IndexedRingBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/util/IndexedRingBuffer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lrx/internal/util/IndexedRingBuffer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/internal/util/IndexedRingBuffer;-><init>(Lrx/internal/util/IndexedRingBuffer$1;)V

    return-object v0
.end method
