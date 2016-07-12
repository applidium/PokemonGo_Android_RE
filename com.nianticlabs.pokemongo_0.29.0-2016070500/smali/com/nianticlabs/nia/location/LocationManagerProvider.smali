.class public Lcom/nianticlabs/nia/location/LocationManagerProvider;
.super Ljava/lang/Object;
.source "LocationManagerProvider.java"

# interfaces
.implements Lcom/nianticlabs/nia/location/GpsProvider;


# static fields
.field private static final ENABLE_VERBOSE_LOGS:Z = false

.field private static final TAG:Ljava/lang/String; = "LocationManagerProvider"


# instance fields
.field private final context:Landroid/content/Context;

.field private firstLocationUpdate:Z

.field private final gpsStatusListener:Landroid/location/GpsStatus$Listener;

.field private listener:Landroid/location/LocationListener;

.field private locationManager:Landroid/location/LocationManager;

.field private final provider:Ljava/lang/String;

.field private providerListener:Lcom/nianticlabs/nia/location/Provider$ProviderListener;

.field private running:Z

.field private final updateDistance:F

.field private final updateTime:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IF)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "provider"    # Ljava/lang/String;
    .param p3, "updateTime"    # I
    .param p4, "updateDistance"    # F

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v0, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider;->running:Z

    .line 29
    iput-boolean v0, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider;->firstLocationUpdate:Z

    .line 99
    new-instance v0, Lcom/nianticlabs/nia/location/LocationManagerProvider$1;

    invoke-direct {v0, p0}, Lcom/nianticlabs/nia/location/LocationManagerProvider$1;-><init>(Lcom/nianticlabs/nia/location/LocationManagerProvider;)V

    iput-object v0, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider;->listener:Landroid/location/LocationListener;

    .line 139
    new-instance v0, Lcom/nianticlabs/nia/location/LocationManagerProvider$2;

    invoke-direct {v0, p0}, Lcom/nianticlabs/nia/location/LocationManagerProvider$2;-><init>(Lcom/nianticlabs/nia/location/LocationManagerProvider;)V

    iput-object v0, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider;->gpsStatusListener:Landroid/location/GpsStatus$Listener;

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider;->providerListener:Lcom/nianticlabs/nia/location/Provider$ProviderListener;

    .line 33
    iput-object p1, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider;->context:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider;->provider:Ljava/lang/String;

    .line 35
    iput p3, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider;->updateTime:I

    .line 36
    iput p4, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider;->updateDistance:F

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/nianticlabs/nia/location/LocationManagerProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/nia/location/LocationManagerProvider;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider;->running:Z

    return v0
.end method

.method static synthetic access$100(Lcom/nianticlabs/nia/location/LocationManagerProvider;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/nia/location/LocationManagerProvider;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/nianticlabs/nia/location/LocationManagerProvider;->updateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nianticlabs/nia/location/LocationManagerProvider;Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/nia/location/LocationManagerProvider;
    .param p1, "x1"    # Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/nianticlabs/nia/location/LocationManagerProvider;->updateStatus(Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V

    return-void
.end method

.method static synthetic access$300(Lcom/nianticlabs/nia/location/LocationManagerProvider;)Landroid/location/LocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/nia/location/LocationManagerProvider;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider;->locationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nianticlabs/nia/location/LocationManagerProvider;I[Landroid/location/GpsSatellite;)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/nia/location/LocationManagerProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # [Landroid/location/GpsSatellite;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/nianticlabs/nia/location/LocationManagerProvider;->updateGpsStatus(I[Landroid/location/GpsSatellite;)V

    return-void
.end method

.method private updateGpsStatus(I[Landroid/location/GpsSatellite;)V
    .locals 2
    .param p1, "timeToFix"    # I
    .param p2, "satellites"    # [Landroid/location/GpsSatellite;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider;->providerListener:Lcom/nianticlabs/nia/location/Provider$ProviderListener;

    .line 188
    .local v0, "listener":Lcom/nianticlabs/nia/location/Provider$ProviderListener;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/nianticlabs/nia/location/GpsProvider$GpsProviderListener;

    if-eqz v1, :cond_0

    .line 189
    check-cast v0, Lcom/nianticlabs/nia/location/GpsProvider$GpsProviderListener;

    .end local v0    # "listener":Lcom/nianticlabs/nia/location/Provider$ProviderListener;
    invoke-interface {v0, p1, p2}, Lcom/nianticlabs/nia/location/GpsProvider$GpsProviderListener;->onGpsStatusUpdate(I[Landroid/location/GpsSatellite;)V

    .line 191
    :cond_0
    return-void
.end method

.method private updateLocation(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider;->providerListener:Lcom/nianticlabs/nia/location/Provider$ProviderListener;

    .line 177
    .local v0, "listener":Lcom/nianticlabs/nia/location/Provider$ProviderListener;
    if-eqz v0, :cond_1

    .line 178
    iget-boolean v1, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider;->firstLocationUpdate:Z

    if-eqz v1, :cond_0

    .line 179
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider;->firstLocationUpdate:Z

    .line 180
    sget-object v1, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->RUNNING:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    invoke-direct {p0, v1}, Lcom/nianticlabs/nia/location/LocationManagerProvider;->updateStatus(Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V

    .line 182
    :cond_0
    invoke-interface {v0, p1}, Lcom/nianticlabs/nia/location/Provider$ProviderListener;->onProviderLocation(Landroid/location/Location;)V

    .line 184
    :cond_1
    return-void
.end method

.method private updateStatus(Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V
    .locals 1
    .param p1, "status"    # Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider;->providerListener:Lcom/nianticlabs/nia/location/Provider$ProviderListener;

    .line 170
    .local v0, "listener":Lcom/nianticlabs/nia/location/Provider$ProviderListener;
    if-eqz v0, :cond_0

    .line 171
    invoke-interface {v0, p1}, Lcom/nianticlabs/nia/location/Provider$ProviderListener;->onProviderStatus(Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V

    .line 173
    :cond_0
    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 4

    .prologue
    .line 51
    iget-boolean v1, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider;->running:Z

    if-eqz v1, :cond_0

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider;->locationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider;->listener:Landroid/location/LocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 54
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider;->running:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    sget-object v1, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->STOPPED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    invoke-direct {p0, v1}, Lcom/nianticlabs/nia/location/LocationManagerProvider;->updateStatus(Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V

    .line 61
    :cond_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "LocationManagerProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allowed to access "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider;->provider:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for updates"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider;->firstLocationUpdate:Z

    .line 67
    sget-object v8, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->FAILED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    .line 70
    .local v8, "statusFailed":Lcom/nianticlabs/nia/contextservice/ServiceStatus;
    :try_start_0
    iget-object v0, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider;->provider:Ljava/lang/String;

    iget v2, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider;->updateTime:I

    int-to-long v2, v2

    iget v4, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider;->updateDistance:F

    iget-object v5, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider;->listener:Landroid/location/LocationListener;

    invoke-static {}, Lcom/nianticlabs/nia/contextservice/ContextService;->getServiceLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 71
    const-string v0, "LocationManagerProvider"

    const-string v1, "Location manager initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider;->provider:Ljava/lang/String;

    const-string v1, "gps"

    if-ne v0, v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider;->gpsStatusListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 77
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider;->running:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 85
    :goto_0
    move-object v9, v8

    .line 87
    .local v9, "statusFailedCapture":Lcom/nianticlabs/nia/contextservice/ServiceStatus;
    iget-boolean v0, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider;->running:Z

    if-eqz v0, :cond_1

    .line 88
    sget-object v0, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->INITIALIZED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/location/LocationManagerProvider;->updateStatus(Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V

    .line 90
    :try_start_1
    iget-object v0, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/location/LocationManagerProvider;->updateLocation(Landroid/location/Location;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    .line 96
    :goto_1
    return-void

    .line 78
    .end local v9    # "statusFailedCapture":Lcom/nianticlabs/nia/contextservice/ServiceStatus;
    :catch_0
    move-exception v7

    .line 79
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string v0, "LocationManagerProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider;->provider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " updates"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 80
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v7

    .line 81
    .local v7, "e":Ljava/lang/SecurityException;
    const-string v0, "LocationManagerProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowed to access "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider;->provider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for updates"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    sget-object v8, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->PERMISSION_DENIED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    goto :goto_0

    .line 94
    .end local v7    # "e":Ljava/lang/SecurityException;
    .restart local v9    # "statusFailedCapture":Lcom/nianticlabs/nia/contextservice/ServiceStatus;
    :cond_1
    invoke-direct {p0, v9}, Lcom/nianticlabs/nia/location/LocationManagerProvider;->updateStatus(Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V

    goto :goto_1

    .line 91
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider;->context:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider;->locationManager:Landroid/location/LocationManager;

    .line 42
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider;->locationManager:Landroid/location/LocationManager;

    .line 47
    return-void
.end method

.method public setListener(Lcom/nianticlabs/nia/location/Provider$ProviderListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/nianticlabs/nia/location/Provider$ProviderListener;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider;->providerListener:Lcom/nianticlabs/nia/location/Provider$ProviderListener;

    .line 166
    return-void
.end method
