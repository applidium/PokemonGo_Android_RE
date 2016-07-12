.class public final Lrx/internal/util/SubscriptionIndexedRingBuffer;
.super Ljava/lang/Object;
.source "SubscriptionIndexedRingBuffer.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lrx/Subscription;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field private static final UNSUBSCRIBE:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Lrx/Subscription;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNSUBSCRIBED:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<",
            "Lrx/internal/util/SubscriptionIndexedRingBuffer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile subscriptions:Lrx/internal/util/IndexedRingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/util/IndexedRingBuffer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile unsubscribed:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-class v0, Lrx/internal/util/SubscriptionIndexedRingBuffer;

    const-string v1, "unsubscribed"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->UNSUBSCRIBED:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 136
    new-instance v0, Lrx/internal/util/SubscriptionIndexedRingBuffer$1;

    invoke-direct {v0}, Lrx/internal/util/SubscriptionIndexedRingBuffer$1;-><init>()V

    sput-object v0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->UNSUBSCRIBE:Lrx/functions/Func1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Lrx/internal/util/SubscriptionIndexedRingBuffer;, "Lrx/internal/util/SubscriptionIndexedRingBuffer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lrx/internal/util/IndexedRingBuffer;->getInstance()Lrx/internal/util/IndexedRingBuffer;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->subscriptions:Lrx/internal/util/IndexedRingBuffer;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->unsubscribed:I

    .line 36
    return-void
.end method

.method private static unsubscribeFromAll(Lrx/internal/util/IndexedRingBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/util/IndexedRingBuffer",
            "<+",
            "Lrx/Subscription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "subscriptions":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<+Lrx/Subscription;>;"
    if-nez p0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 133
    :cond_0
    sget-object v0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->UNSUBSCRIBE:Lrx/functions/Func1;

    invoke-virtual {p0, v0}, Lrx/internal/util/IndexedRingBuffer;->forEach(Lrx/functions/Func1;)I

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized add(Lrx/Subscription;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/util/SubscriptionIndexedRingBuffer;, "Lrx/internal/util/SubscriptionIndexedRingBuffer<TT;>;"
    .local p1, "s":Lrx/Subscription;, "TT;"
    const/4 v2, 0x1

    .line 55
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->unsubscribed:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->subscriptions:Lrx/internal/util/IndexedRingBuffer;

    if-nez v1, :cond_2

    .line 56
    :cond_0
    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    const/4 v0, -0x1

    .line 64
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    .line 59
    :cond_2
    :try_start_1
    iget-object v1, p0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->subscriptions:Lrx/internal/util/IndexedRingBuffer;

    invoke-virtual {v1, p1}, Lrx/internal/util/IndexedRingBuffer;->add(Ljava/lang/Object;)I

    move-result v0

    .line 61
    .local v0, "n":I
    iget v1, p0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->unsubscribed:I

    if-ne v1, v2, :cond_1

    .line 62
    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 55
    .end local v0    # "n":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public forEach(Lrx/functions/Func1;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<TT;",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lrx/internal/util/SubscriptionIndexedRingBuffer;, "Lrx/internal/util/SubscriptionIndexedRingBuffer<TT;>;"
    .local p1, "action":Lrx/functions/Func1;, "Lrx/functions/Func1<TT;Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lrx/internal/util/SubscriptionIndexedRingBuffer;->forEach(Lrx/functions/Func1;I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized forEach(Lrx/functions/Func1;I)I
    .locals 2
    .param p2, "startIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<TT;",
            "Ljava/lang/Boolean;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lrx/internal/util/SubscriptionIndexedRingBuffer;, "Lrx/internal/util/SubscriptionIndexedRingBuffer<TT;>;"
    .local p1, "action":Lrx/functions/Func1;, "Lrx/functions/Func1<TT;Ljava/lang/Boolean;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->unsubscribed:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->subscriptions:Lrx/internal/util/IndexedRingBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 122
    :cond_0
    const/4 v0, 0x0

    .line 124
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->subscriptions:Lrx/internal/util/IndexedRingBuffer;

    invoke-virtual {v0, p1, p2}, Lrx/internal/util/IndexedRingBuffer;->forEach(Lrx/functions/Func1;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isUnsubscribed()Z
    .locals 2

    .prologue
    .local p0, "this":Lrx/internal/util/SubscriptionIndexedRingBuffer;, "Lrx/internal/util/SubscriptionIndexedRingBuffer<TT;>;"
    const/4 v0, 0x1

    .line 40
    iget v1, p0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->unsubscribed:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(I)V
    .locals 3
    .param p1, "n"    # I

    .prologue
    .line 74
    .local p0, "this":Lrx/internal/util/SubscriptionIndexedRingBuffer;, "Lrx/internal/util/SubscriptionIndexedRingBuffer<TT;>;"
    iget v1, p0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->unsubscribed:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->subscriptions:Lrx/internal/util/IndexedRingBuffer;

    if-eqz v1, :cond_0

    if-gez p1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v1, p0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->subscriptions:Lrx/internal/util/IndexedRingBuffer;

    invoke-virtual {v1, p1}, Lrx/internal/util/IndexedRingBuffer;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Subscription;

    .line 78
    .local v0, "t":Lrx/Subscription;
    if-eqz v0, :cond_0

    .line 80
    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    goto :goto_0
.end method

.method public removeSilently(I)V
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 92
    .local p0, "this":Lrx/internal/util/SubscriptionIndexedRingBuffer;, "Lrx/internal/util/SubscriptionIndexedRingBuffer<TT;>;"
    iget v0, p0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->unsubscribed:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->subscriptions:Lrx/internal/util/IndexedRingBuffer;

    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->subscriptions:Lrx/internal/util/IndexedRingBuffer;

    invoke-virtual {v0, p1}, Lrx/internal/util/IndexedRingBuffer;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public unsubscribe()V
    .locals 4

    .prologue
    .line 100
    .local p0, "this":Lrx/internal/util/SubscriptionIndexedRingBuffer;, "Lrx/internal/util/SubscriptionIndexedRingBuffer<TT;>;"
    sget-object v1, Lrx/internal/util/SubscriptionIndexedRingBuffer;->UNSUBSCRIBED:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->subscriptions:Lrx/internal/util/IndexedRingBuffer;

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->subscriptions:Lrx/internal/util/IndexedRingBuffer;

    invoke-static {v1}, Lrx/internal/util/SubscriptionIndexedRingBuffer;->unsubscribeFromAll(Lrx/internal/util/IndexedRingBuffer;)V

    .line 104
    iget-object v0, p0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->subscriptions:Lrx/internal/util/IndexedRingBuffer;

    .line 105
    .local v0, "s":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TT;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->subscriptions:Lrx/internal/util/IndexedRingBuffer;

    .line 106
    invoke-virtual {v0}, Lrx/internal/util/IndexedRingBuffer;->unsubscribe()V

    .line 108
    .end local v0    # "s":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TT;>;"
    :cond_0
    return-void
.end method
