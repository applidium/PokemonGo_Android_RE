.class public final Lrx/internal/operators/OnSubscribeCache;
.super Ljava/lang/Object;
.source "OnSubscribeCache.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final SRC_SUBSCRIBED_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<",
            "Lrx/internal/operators/OnSubscribeCache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final cache:Lrx/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/Subject",
            "<-TT;+TT;>;"
        }
    .end annotation
.end field

.field protected final source:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<+TT;>;"
        }
    .end annotation
.end field

.field volatile sourceSubscribed:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-class v0, Lrx/internal/operators/OnSubscribeCache;

    const-string v1, "sourceSubscribed"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OnSubscribeCache;->SRC_SUBSCRIBED_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lrx/Observable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lrx/internal/operators/OnSubscribeCache;, "Lrx/internal/operators/OnSubscribeCache<TT;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static {}, Lrx/subjects/ReplaySubject;->create()Lrx/subjects/ReplaySubject;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lrx/internal/operators/OnSubscribeCache;-><init>(Lrx/Observable;Lrx/subjects/Subject;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lrx/Observable;I)V
    .locals 1
    .param p2, "capacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lrx/internal/operators/OnSubscribeCache;, "Lrx/internal/operators/OnSubscribeCache<TT;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static {p2}, Lrx/subjects/ReplaySubject;->create(I)Lrx/subjects/ReplaySubject;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lrx/internal/operators/OnSubscribeCache;-><init>(Lrx/Observable;Lrx/subjects/Subject;)V

    .line 56
    return-void
.end method

.method constructor <init>(Lrx/Observable;Lrx/subjects/Subject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/subjects/Subject",
            "<-TT;+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lrx/internal/operators/OnSubscribeCache;, "Lrx/internal/operators/OnSubscribeCache<TT;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "cache":Lrx/subjects/Subject;, "Lrx/subjects/Subject<-TT;+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeCache;->source:Lrx/Observable;

    .line 60
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeCache;->cache:Lrx/subjects/Subject;

    .line 61
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 42
    .local p0, "this":Lrx/internal/operators/OnSubscribeCache;, "Lrx/internal/operators/OnSubscribeCache<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeCache;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lrx/internal/operators/OnSubscribeCache;, "Lrx/internal/operators/OnSubscribeCache<TT;>;"
    .local p1, "s":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    sget-object v0, Lrx/internal/operators/OnSubscribeCache;->SRC_SUBSCRIBED_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCache;->source:Lrx/Observable;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeCache;->cache:Lrx/subjects/Subject;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Observer;)Lrx/Subscription;

    .line 74
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCache;->cache:Lrx/subjects/Subject;

    invoke-virtual {v0, p1}, Lrx/subjects/Subject;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 75
    return-void
.end method
