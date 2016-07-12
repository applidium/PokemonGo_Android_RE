.class public Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig$Builder;
.super Ljava/lang/Object;
.source "RoutingConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mQueueConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mRoutes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig$Builder;->mQueueConfigs:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig$Builder;->mRoutes:Ljava/util/Map;

    .line 32
    return-void
.end method

.method static synthetic access$100(Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig$Builder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig$Builder;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig$Builder;->mQueueConfigs:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig$Builder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig$Builder;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig$Builder;->mRoutes:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public addQueueConfig(Ljava/lang/String;Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;)Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig$Builder;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig$Builder;->mQueueConfigs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Queue with name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig$Builder;->mQueueConfigs:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-object p0
.end method

.method public addRoute(Ljava/lang/String;Ljava/util/List;)Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig$Builder;
    .locals 3
    .param p1, "filter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig$Builder;"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "route":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig$Builder;->mRoutes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter with name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig$Builder;->mRoutes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-object p0
.end method

.method public build()Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;-><init>(Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig$Builder;Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig$1;)V

    return-object v0
.end method
