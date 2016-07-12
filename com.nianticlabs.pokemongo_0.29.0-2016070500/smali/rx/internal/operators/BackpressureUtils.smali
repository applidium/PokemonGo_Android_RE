.class public final Lrx/internal/operators/BackpressureUtils;
.super Ljava/lang/Object;
.source "BackpressureUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J
    .locals 7
    .param p0, "requested"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p1, "n"    # J

    .prologue
    .line 74
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 75
    .local v0, "current":J
    add-long v2, v0, p1

    .line 77
    .local v2, "next":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 78
    const-wide v2, 0x7fffffffffffffffL

    .line 80
    :cond_1
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 81
    return-wide v0
.end method

.method public static getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;Ljava/lang/Object;J)J
    .locals 6
    .param p2, "n"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
            "<TT;>;TT;J)J"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "requested":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    .line 47
    .local v2, "current":J
    add-long v4, v2, p2

    .line 49
    .local v4, "next":J
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-gez v0, :cond_1

    .line 50
    const-wide v4, 0x7fffffffffffffffL

    :cond_1
    move-object v0, p0

    move-object v1, p1

    .line 52
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    return-wide v2
.end method
