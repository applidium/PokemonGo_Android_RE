.class public Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;
.super Ljava/lang/Object;
.source "Router.java"

# interfaces
.implements Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnDeliveryListener;
.implements Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/dispatcher/routing/Router$3;
    }
.end annotation


# instance fields
.field private final mEventsInRouting:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mIsFinishRequested:Z

.field private final mRouteSelector:Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;",
            ">;"
        }
    .end annotation
.end field

.field private final mRoutingListener:Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingListener;

.field private final mWorker:Lrx/Scheduler$Worker;


# direct methods
.method constructor <init>(Lrx/Scheduler;Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector;Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingListener;)V
    .locals 1
    .param p1, "scheduler"    # Lrx/Scheduler;
    .param p3, "routingListener"    # Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Scheduler;",
            "Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;",
            ">;",
            "Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, "routeSelector":Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector;, "Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector<Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;->mEventsInRouting:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    invoke-virtual {p1}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;->mWorker:Lrx/Scheduler$Worker;

    .line 52
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;->mRouteSelector:Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector;

    .line 53
    iput-object p3, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;->mRoutingListener:Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingListener;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;)Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingListener;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;->mRoutingListener:Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;)V
    .locals 0
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;->finishPacket()V

    return-void
.end method

.method private finishPacket()V
    .locals 2

    .prologue
    .line 153
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;->mEventsInRouting:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 154
    .local v0, "eventsInRouting":I
    iget-boolean v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;->mIsFinishRequested:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 155
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;->mRoutingListener:Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingListener;

    invoke-interface {v1, p0}, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingListener;->onRoutingFinished(Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;)V

    .line 157
    :cond_0
    return-void
.end method


# virtual methods
.method public finishRouting()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;->mIsFinishRequested:Z

    .line 85
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;->mEventsInRouting:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;->mRoutingListener:Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingListener;

    invoke-interface {v0, p0}, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingListener;->onRoutingFinished(Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;)V

    .line 88
    :cond_0
    return-void
.end method

.method public onDelivery(Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;)V
    .locals 2
    .param p1, "packet"    # Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;->mWorker:Lrx/Scheduler$Worker;

    new-instance v1, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router$1;

    invoke-direct {v1, p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router$1;-><init>(Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;)V

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 132
    return-void
.end method

.method public onResponse(Lcom/upsight/android/analytics/dispatcher/EndpointResponse;)V
    .locals 2
    .param p1, "response"    # Lcom/upsight/android/analytics/dispatcher/EndpointResponse;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;->mWorker:Lrx/Scheduler$Worker;

    new-instance v1, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router$2;

    invoke-direct {v1, p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router$2;-><init>(Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;Lcom/upsight/android/analytics/dispatcher/EndpointResponse;)V

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 147
    return-void
.end method

.method public routeEvent(Lcom/upsight/android/analytics/internal/DataStoreRecord;)Z
    .locals 4
    .param p1, "record"    # Lcom/upsight/android/analytics/internal/DataStoreRecord;

    .prologue
    .line 63
    iget-boolean v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;->mIsFinishRequested:Z

    if-eqz v2, :cond_0

    .line 64
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Router is requested to finish routing"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_0
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;->mRouteSelector:Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector;

    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/DataStoreRecord;->getSourceType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector;->select(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;

    .line 68
    .local v1, "route":Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;->getStepsCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 69
    :cond_1
    const/4 v2, 0x0

    .line 75
    :goto_0
    return v2

    .line 72
    :cond_2
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;

    new-instance v2, Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;

    invoke-direct {v2, v1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;-><init>(Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;)V

    invoke-direct {v0, p1, v2}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;-><init>(Lcom/upsight/android/analytics/internal/DataStoreRecord;Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;)V

    .line 73
    .local v0, "packet":Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;
    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->routeToNext()V

    .line 74
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;->mEventsInRouting:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 75
    const/4 v2, 0x1

    goto :goto_0
.end method
