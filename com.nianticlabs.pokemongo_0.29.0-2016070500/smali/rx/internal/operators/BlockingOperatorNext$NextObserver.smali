.class Lrx/internal/operators/BlockingOperatorNext$NextObserver;
.super Lrx/Subscriber;
.source "BlockingOperatorNext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/BlockingOperatorNext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NextObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<",
        "Lrx/Notification",
        "<+TT;>;>;"
    }
.end annotation


# static fields
.field static final WAITING_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<",
            "Lrx/internal/operators/BlockingOperatorNext$NextObserver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final buf:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lrx/Notification",
            "<+TT;>;>;"
        }
    .end annotation
.end field

.field volatile waiting:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 153
    const-class v0, Lrx/internal/operators/BlockingOperatorNext$NextObserver;

    const-string v1, "waiting"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->WAITING_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 148
    .local p0, "this":Lrx/internal/operators/BlockingOperatorNext$NextObserver;, "Lrx/internal/operators/BlockingOperatorNext$NextObserver<TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 149
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->buf:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Lrx/internal/operators/BlockingOperatorNext$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/internal/operators/BlockingOperatorNext$1;

    .prologue
    .line 148
    .local p0, "this":Lrx/internal/operators/BlockingOperatorNext$NextObserver;, "Lrx/internal/operators/BlockingOperatorNext$NextObserver<TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/BlockingOperatorNext$NextObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    .prologue
    .line 159
    .local p0, "this":Lrx/internal/operators/BlockingOperatorNext$NextObserver;, "Lrx/internal/operators/BlockingOperatorNext$NextObserver<TT;>;"
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 164
    .local p0, "this":Lrx/internal/operators/BlockingOperatorNext$NextObserver;, "Lrx/internal/operators/BlockingOperatorNext$NextObserver<TT;>;"
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 148
    .local p0, "this":Lrx/internal/operators/BlockingOperatorNext$NextObserver;, "Lrx/internal/operators/BlockingOperatorNext$NextObserver<TT;>;"
    check-cast p1, Lrx/Notification;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->onNext(Lrx/Notification;)V

    return-void
.end method

.method public onNext(Lrx/Notification;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Notification",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "this":Lrx/internal/operators/BlockingOperatorNext$NextObserver;, "Lrx/internal/operators/BlockingOperatorNext$NextObserver<TT;>;"
    .local p1, "args":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    sget-object v2, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->WAITING_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndSet(Ljava/lang/Object;I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Lrx/Notification;->isOnNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 170
    :cond_0
    move-object v1, p1

    .line 171
    .local v1, "toOffer":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    :cond_1
    :goto_0
    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->buf:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 172
    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->buf:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Notification;

    .line 175
    .local v0, "concurrentItem":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lrx/Notification;->isOnNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 176
    move-object v1, v0

    goto :goto_0

    .line 181
    .end local v0    # "concurrentItem":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    .end local v1    # "toOffer":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    :cond_2
    return-void
.end method

.method setWaiting(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 188
    .local p0, "this":Lrx/internal/operators/BlockingOperatorNext$NextObserver;, "Lrx/internal/operators/BlockingOperatorNext$NextObserver<TT;>;"
    iput p1, p0, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->waiting:I

    .line 189
    return-void
.end method

.method public takeNext()Lrx/Notification;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Notification",
            "<+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Lrx/internal/operators/BlockingOperatorNext$NextObserver;, "Lrx/internal/operators/BlockingOperatorNext$NextObserver<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->setWaiting(I)V

    .line 185
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->buf:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Notification;

    return-object v0
.end method
