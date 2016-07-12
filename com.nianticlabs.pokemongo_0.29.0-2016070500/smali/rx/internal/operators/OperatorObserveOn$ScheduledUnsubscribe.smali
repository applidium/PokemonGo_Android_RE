.class final Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;
.super Ljava/lang/Object;
.source "OperatorObserveOn.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorObserveOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScheduledUnsubscribe"
.end annotation


# static fields
.field static final ONCE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<",
            "Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile once:I

.field volatile unsubscribed:Z

.field final worker:Lrx/Scheduler$Worker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 232
    const-class v0, Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;

    const-string v1, "once"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;->ONCE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lrx/Scheduler$Worker;)V
    .locals 1
    .param p1, "worker"    # Lrx/Scheduler$Worker;

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;->unsubscribed:Z

    .line 236
    iput-object p1, p0, Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;->worker:Lrx/Scheduler$Worker;

    .line 237
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;->unsubscribed:Z

    return v0
.end method

.method public unsubscribe()V
    .locals 2

    .prologue
    .line 246
    sget-object v0, Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;->ONCE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndSet(Ljava/lang/Object;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;->worker:Lrx/Scheduler$Worker;

    new-instance v1, Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe$1;

    invoke-direct {v1, p0}, Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe$1;-><init>(Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;)V

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 255
    :cond_0
    return-void
.end method
