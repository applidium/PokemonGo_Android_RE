.class final Lrx/internal/operators/BufferUntilSubscriber$State;
.super Ljava/lang/Object;
.source "BufferUntilSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/BufferUntilSubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final OBSERVER_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Lrx/internal/operators/BufferUntilSubscriber$State;",
            "Lrx/Observer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field emitting:Z

.field guard:Ljava/lang/Object;

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile observerRef:Lrx/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observer",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    const-class v0, Lrx/internal/operators/BufferUntilSubscriber$State;

    const-class v1, Lrx/Observer;

    const-string v2, "observerRef"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/BufferUntilSubscriber$State;->OBSERVER_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 62
    .local p0, "this":Lrx/internal/operators/BufferUntilSubscriber$State;, "Lrx/internal/operators/BufferUntilSubscriber$State<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/BufferUntilSubscriber$State;->observerRef:Lrx/Observer;

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/BufferUntilSubscriber$State;->guard:Ljava/lang/Object;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/BufferUntilSubscriber$State;->emitting:Z

    .line 77
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/BufferUntilSubscriber$State;->buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 78
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/BufferUntilSubscriber$State;->nl:Lrx/internal/operators/NotificationLite;

    return-void
.end method


# virtual methods
.method casObserverRef(Lrx/Observer;Lrx/Observer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer",
            "<-TT;>;",
            "Lrx/Observer",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lrx/internal/operators/BufferUntilSubscriber$State;, "Lrx/internal/operators/BufferUntilSubscriber$State<TT;>;"
    .local p1, "expected":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    .local p2, "next":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    sget-object v0, Lrx/internal/operators/BufferUntilSubscriber$State;->OBSERVER_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
