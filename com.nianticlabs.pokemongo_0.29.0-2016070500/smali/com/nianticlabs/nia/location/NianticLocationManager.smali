.class public Lcom/nianticlabs/nia/location/NianticLocationManager;
.super Lcom/nianticlabs/nia/contextservice/ContextService;
.source "NianticLocationManager.java"


# static fields
.field static final ENABLE_VERBOSE_LOGS:Z = false

.field private static final FUSED_PROVIDER_NAME:Ljava/lang/String; = "fused"

.field private static final GPS_UPDATE_DISTANCE_M:F = 0.0f

.field private static final GPS_UPDATE_TIME_MSEC:I = 0x3e8

.field private static final INITIALIZATION_WAIT_TIME_MS:J = 0x7d0L

.field private static final NET_UPDATE_DISTANCE_M:F = 0.0f

.field private static final NET_UPDATE_TIME_MSEC:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "NianticLocationManager"


# instance fields
.field private gpsUpdateDistanceM:F

.field private gpsUpdateTimeMs:I

.field private netUpdateDistanceM:F

.field private netUpdateTimeMs:I

.field private final providers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticlabs/nia/location/Provider;",
            ">;"
        }
    .end annotation
.end field

.field private started:Z

.field private final statusMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticlabs/nia/contextservice/ServiceStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nativeClassPointer"    # J

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/nianticlabs/nia/contextservice/ContextService;-><init>(Landroid/content/Context;J)V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nianticlabs/nia/location/NianticLocationManager;->statusMap:Ljava/util/Map;

    .line 48
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/nianticlabs/nia/location/NianticLocationManager;->gpsUpdateTimeMs:I

    .line 49
    iput v1, p0, Lcom/nianticlabs/nia/location/NianticLocationManager;->gpsUpdateDistanceM:F

    .line 50
    const/16 v0, 0x1388

    iput v0, p0, Lcom/nianticlabs/nia/location/NianticLocationManager;->netUpdateTimeMs:I

    .line 51
    iput v1, p0, Lcom/nianticlabs/nia/location/NianticLocationManager;->netUpdateDistanceM:F

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticlabs/nia/location/NianticLocationManager;->started:Z

    .line 58
    iget-object v0, p0, Lcom/nianticlabs/nia/location/NianticLocationManager;->statusMap:Ljava/util/Map;

    const-string v1, "gps"

    sget-object v2, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->UNDEFINED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/nianticlabs/nia/location/NianticLocationManager;->statusMap:Ljava/util/Map;

    const-string v1, "network"

    sget-object v2, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->UNDEFINED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/nianticlabs/nia/location/NianticLocationManager;->statusMap:Ljava/util/Map;

    const-string v1, "fused"

    sget-object v2, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->UNDEFINED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/nianticlabs/nia/location/NianticLocationManager;->providers:Ljava/util/List;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/nianticlabs/nia/location/NianticLocationManager;I[Landroid/location/GpsSatellite;)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/nia/location/NianticLocationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # [Landroid/location/GpsSatellite;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/nianticlabs/nia/location/NianticLocationManager;->gpsStatusUpdate(I[Landroid/location/GpsSatellite;)V

    return-void
.end method

.method static synthetic access$100(Lcom/nianticlabs/nia/location/NianticLocationManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/nia/location/NianticLocationManager;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/nianticlabs/nia/location/NianticLocationManager;->statusMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nianticlabs/nia/location/NianticLocationManager;)[I
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/nia/location/NianticLocationManager;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/nianticlabs/nia/location/NianticLocationManager;->statusArray()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/nianticlabs/nia/location/NianticLocationManager;Landroid/location/Location;[I)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/nia/location/NianticLocationManager;
    .param p1, "x1"    # Landroid/location/Location;
    .param p2, "x2"    # [I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/nianticlabs/nia/location/NianticLocationManager;->locationUpdate(Landroid/location/Location;[I)V

    return-void
.end method

.method static synthetic access$400(Lcom/nianticlabs/nia/location/NianticLocationManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/nia/location/NianticLocationManager;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/nianticlabs/nia/location/NianticLocationManager;->started:Z

    return v0
.end method

.method static synthetic access$502(Lcom/nianticlabs/nia/location/NianticLocationManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/nia/location/NianticLocationManager;
    .param p1, "x1"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/nianticlabs/nia/location/NianticLocationManager;->gpsUpdateTimeMs:I

    return p1
.end method

.method static synthetic access$602(Lcom/nianticlabs/nia/location/NianticLocationManager;F)F
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/nia/location/NianticLocationManager;
    .param p1, "x1"    # F

    .prologue
    .line 20
    iput p1, p0, Lcom/nianticlabs/nia/location/NianticLocationManager;->gpsUpdateDistanceM:F

    return p1
.end method

.method static synthetic access$702(Lcom/nianticlabs/nia/location/NianticLocationManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/nia/location/NianticLocationManager;
    .param p1, "x1"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/nianticlabs/nia/location/NianticLocationManager;->netUpdateTimeMs:I

    return p1
.end method

.method static synthetic access$802(Lcom/nianticlabs/nia/location/NianticLocationManager;F)F
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/nia/location/NianticLocationManager;
    .param p1, "x1"    # F

    .prologue
    .line 20
    iput p1, p0, Lcom/nianticlabs/nia/location/NianticLocationManager;->netUpdateDistanceM:F

    return p1
.end method

.method static synthetic access$900(Lcom/nianticlabs/nia/location/NianticLocationManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/nia/location/NianticLocationManager;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/nianticlabs/nia/location/NianticLocationManager;->doStart()V

    return-void
.end method

.method private addProvider(Ljava/lang/String;Lcom/nianticlabs/nia/location/Provider;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "provider"    # Lcom/nianticlabs/nia/location/Provider;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/nianticlabs/nia/location/NianticLocationManager;->providers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    instance-of v0, p2, Lcom/nianticlabs/nia/location/GpsProvider;

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Lcom/nianticlabs/nia/location/NianticLocationManager$1;

    invoke-direct {v0, p0, p1}, Lcom/nianticlabs/nia/location/NianticLocationManager$1;-><init>(Lcom/nianticlabs/nia/location/NianticLocationManager;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/nianticlabs/nia/location/Provider;->setListener(Lcom/nianticlabs/nia/location/Provider$ProviderListener;)V

    .line 121
    :goto_0
    return-void

    .line 109
    :cond_0
    new-instance v0, Lcom/nianticlabs/nia/location/NianticLocationManager$2;

    invoke-direct {v0, p0, p1}, Lcom/nianticlabs/nia/location/NianticLocationManager$2;-><init>(Lcom/nianticlabs/nia/location/NianticLocationManager;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/nianticlabs/nia/location/Provider;->setListener(Lcom/nianticlabs/nia/location/Provider$ProviderListener;)V

    goto :goto_0
.end method

.method private createProviders()V
    .locals 5

    .prologue
    .line 66
    iget-object v1, p0, Lcom/nianticlabs/nia/location/NianticLocationManager;->providers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 83
    :goto_0
    return-void

    .line 70
    :cond_0
    new-instance v0, Lcom/nianticlabs/nia/location/FusedLocationProvider;

    iget-object v1, p0, Lcom/nianticlabs/nia/location/NianticLocationManager;->context:Landroid/content/Context;

    iget v2, p0, Lcom/nianticlabs/nia/location/NianticLocationManager;->gpsUpdateTimeMs:I

    iget v3, p0, Lcom/nianticlabs/nia/location/NianticLocationManager;->gpsUpdateDistanceM:F

    invoke-direct {v0, v1, v2, v3}, Lcom/nianticlabs/nia/location/FusedLocationProvider;-><init>(Landroid/content/Context;IF)V

    .line 71
    .local v0, "provider":Lcom/nianticlabs/nia/location/Provider;
    const-string v1, "fused"

    invoke-direct {p0, v1, v0}, Lcom/nianticlabs/nia/location/NianticLocationManager;->addProvider(Ljava/lang/String;Lcom/nianticlabs/nia/location/Provider;)V

    .line 74
    new-instance v0, Lcom/nianticlabs/nia/location/LocationManagerProvider;

    .end local v0    # "provider":Lcom/nianticlabs/nia/location/Provider;
    iget-object v1, p0, Lcom/nianticlabs/nia/location/NianticLocationManager;->context:Landroid/content/Context;

    const-string v2, "gps"

    iget v3, p0, Lcom/nianticlabs/nia/location/NianticLocationManager;->gpsUpdateTimeMs:I

    iget v4, p0, Lcom/nianticlabs/nia/location/NianticLocationManager;->gpsUpdateDistanceM:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nianticlabs/nia/location/LocationManagerProvider;-><init>(Landroid/content/Context;Ljava/lang/String;IF)V

    .line 76
    .restart local v0    # "provider":Lcom/nianticlabs/nia/location/Provider;
    const-string v1, "gps"

    invoke-direct {p0, v1, v0}, Lcom/nianticlabs/nia/location/NianticLocationManager;->addProvider(Ljava/lang/String;Lcom/nianticlabs/nia/location/Provider;)V

    .line 79
    new-instance v0, Lcom/nianticlabs/nia/location/LocationManagerProvider;

    .end local v0    # "provider":Lcom/nianticlabs/nia/location/Provider;
    iget-object v1, p0, Lcom/nianticlabs/nia/location/NianticLocationManager;->context:Landroid/content/Context;

    const-string v2, "network"

    iget v3, p0, Lcom/nianticlabs/nia/location/NianticLocationManager;->netUpdateTimeMs:I

    iget v4, p0, Lcom/nianticlabs/nia/location/NianticLocationManager;->netUpdateDistanceM:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nianticlabs/nia/location/LocationManagerProvider;-><init>(Landroid/content/Context;Ljava/lang/String;IF)V

    .line 81
    .restart local v0    # "provider":Lcom/nianticlabs/nia/location/Provider;
    const-string v1, "network"

    invoke-direct {p0, v1, v0}, Lcom/nianticlabs/nia/location/NianticLocationManager;->addProvider(Ljava/lang/String;Lcom/nianticlabs/nia/location/Provider;)V

    goto :goto_0
.end method

.method private doStart()V
    .locals 3

    .prologue
    .line 138
    iget-boolean v1, p0, Lcom/nianticlabs/nia/location/NianticLocationManager;->started:Z

    if-nez v1, :cond_1

    .line 139
    invoke-direct {p0}, Lcom/nianticlabs/nia/location/NianticLocationManager;->createProviders()V

    .line 140
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/nianticlabs/nia/location/NianticLocationManager;->statusArray()[I

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/nianticlabs/nia/location/NianticLocationManager;->locationUpdate(Landroid/location/Location;[I)V

    .line 142
    iget-object v1, p0, Lcom/nianticlabs/nia/location/NianticLocationManager;->providers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticlabs/nia/location/Provider;

    .line 143
    .local v0, "provider":Lcom/nianticlabs/nia/location/Provider;
    invoke-interface {v0}, Lcom/nianticlabs/nia/location/Provider;->onStart()V

    goto :goto_0

    .line 145
    .end local v0    # "provider":Lcom/nianticlabs/nia/location/Provider;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nianticlabs/nia/location/NianticLocationManager;->started:Z

    .line 147
    :cond_1
    return-void
.end method

.method private gpsStatusUpdate(I[Landroid/location/GpsSatellite;)V
    .locals 2
    .param p1, "timeToFix"    # I
    .param p2, "satellites"    # [Landroid/location/GpsSatellite;

    .prologue
    .line 209
    iget-object v1, p0, Lcom/nianticlabs/nia/location/NianticLocationManager;->callbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 210
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/nianticlabs/nia/location/NianticLocationManager;->nativeGpsStatusUpdate(I[Landroid/location/GpsSatellite;)V

    .line 211
    monitor-exit v1

    .line 212
    return-void

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private locationUpdate(Landroid/location/Location;[I)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "status"    # [I

    .prologue
    .line 200
    iget-object v1, p0, Lcom/nianticlabs/nia/location/NianticLocationManager;->callbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/nianticlabs/nia/location/NianticLocationManager;->context:Landroid/content/Context;

    invoke-direct {p0, p1, p2, v0}, Lcom/nianticlabs/nia/location/NianticLocationManager;->nativeLocationUpdate(Landroid/location/Location;[ILandroid/content/Context;)V

    .line 202
    monitor-exit v1

    .line 203
    return-void

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private native nativeGpsStatusUpdate(I[Landroid/location/GpsSatellite;)V
.end method

.method private native nativeLocationUpdate(Landroid/location/Location;[ILandroid/content/Context;)V
.end method

.method private statusArray()[I
    .locals 4

    .prologue
    .line 124
    const/4 v0, 0x3

    new-array v1, v0, [I

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nianticlabs/nia/location/NianticLocationManager;->statusMap:Ljava/util/Map;

    const-string v3, "gps"

    .line 125
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    invoke-virtual {v0}, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->ordinal()I

    move-result v0

    aput v0, v1, v2

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/nianticlabs/nia/location/NianticLocationManager;->statusMap:Ljava/util/Map;

    const-string v3, "network"

    .line 126
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    invoke-virtual {v0}, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->ordinal()I

    move-result v0

    aput v0, v1, v2

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/nianticlabs/nia/location/NianticLocationManager;->statusMap:Ljava/util/Map;

    const-string v3, "fused"

    .line 127
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    invoke-virtual {v0}, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->ordinal()I

    move-result v0

    aput v0, v1, v2

    return-object v1
.end method


# virtual methods
.method public configureLocationParameters(DII)V
    .locals 7
    .param p1, "update_distance"    # D
    .param p3, "gps_update_time_ms"    # I
    .param p4, "net_update_time_ms"    # I

    .prologue
    .line 180
    new-instance v1, Lcom/nianticlabs/nia/location/NianticLocationManager$3;

    move-object v2, p0

    move v3, p3

    move-wide v4, p1

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/nianticlabs/nia/location/NianticLocationManager$3;-><init>(Lcom/nianticlabs/nia/location/NianticLocationManager;IDI)V

    invoke-static {v1}, Lcom/nianticlabs/nia/contextservice/ContextService;->runOnServiceHandler(Ljava/lang/Runnable;)V

    .line 194
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 159
    iget-object v1, p0, Lcom/nianticlabs/nia/location/NianticLocationManager;->providers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticlabs/nia/location/Provider;

    .line 160
    .local v0, "provider":Lcom/nianticlabs/nia/location/Provider;
    invoke-interface {v0}, Lcom/nianticlabs/nia/location/Provider;->onPause()V

    goto :goto_0

    .line 162
    .end local v0    # "provider":Lcom/nianticlabs/nia/location/Provider;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 166
    iget-boolean v1, p0, Lcom/nianticlabs/nia/location/NianticLocationManager;->started:Z

    if-nez v1, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/nianticlabs/nia/location/NianticLocationManager;->doStart()V

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/nianticlabs/nia/location/NianticLocationManager;->providers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticlabs/nia/location/Provider;

    .line 170
    .local v0, "provider":Lcom/nianticlabs/nia/location/Provider;
    invoke-interface {v0}, Lcom/nianticlabs/nia/location/Provider;->onResume()V

    goto :goto_0

    .line 172
    .end local v0    # "provider":Lcom/nianticlabs/nia/location/Provider;
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 151
    iget-object v1, p0, Lcom/nianticlabs/nia/location/NianticLocationManager;->providers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticlabs/nia/location/Provider;

    .line 152
    .local v0, "provider":Lcom/nianticlabs/nia/location/Provider;
    invoke-interface {v0}, Lcom/nianticlabs/nia/location/Provider;->onStop()V

    goto :goto_0

    .line 154
    .end local v0    # "provider":Lcom/nianticlabs/nia/location/Provider;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nianticlabs/nia/location/NianticLocationManager;->started:Z

    .line 155
    return-void
.end method
