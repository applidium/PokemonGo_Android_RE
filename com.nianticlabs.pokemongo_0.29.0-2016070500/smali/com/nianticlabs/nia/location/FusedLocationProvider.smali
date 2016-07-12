.class public Lcom/nianticlabs/nia/location/FusedLocationProvider;
.super Ljava/lang/Object;
.source "FusedLocationProvider.java"

# interfaces
.implements Lcom/nianticlabs/nia/location/Provider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;,
        Lcom/nianticlabs/nia/location/FusedLocationProvider$AppState;
    }
.end annotation


# static fields
.field private static final ENABLE_VERBOSE_LOGS:Z = false

.field private static final TAG:Ljava/lang/String; = "FusedLocationProvider"


# instance fields
.field private appState:Lcom/nianticlabs/nia/location/FusedLocationProvider$AppState;

.field private fusedListener:Lcom/google/android/gms/location/LocationListener;

.field googleApiListener:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$Listener;

.field private final googleApiManager:Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

.field private googleApiState:Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;

.field private locationRequest:Lcom/google/android/gms/location/LocationRequest;

.field private providerListener:Lcom/nianticlabs/nia/location/Provider$ProviderListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;IF)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "updateTime"    # I
    .param p3, "smallestDisplacement"    # F

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;->STOPPED:Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;

    iput-object v0, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider;->googleApiState:Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;

    .line 41
    sget-object v0, Lcom/nianticlabs/nia/location/FusedLocationProvider$AppState;->STOP:Lcom/nianticlabs/nia/location/FusedLocationProvider$AppState;

    iput-object v0, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider;->appState:Lcom/nianticlabs/nia/location/FusedLocationProvider$AppState;

    .line 43
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    iput-object v0, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider;->locationRequest:Lcom/google/android/gms/location/LocationRequest;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider;->providerListener:Lcom/nianticlabs/nia/location/Provider$ProviderListener;

    .line 62
    new-instance v0, Lcom/nianticlabs/nia/location/FusedLocationProvider$1;

    invoke-direct {v0, p0}, Lcom/nianticlabs/nia/location/FusedLocationProvider$1;-><init>(Lcom/nianticlabs/nia/location/FusedLocationProvider;)V

    iput-object v0, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider;->googleApiListener:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$Listener;

    .line 214
    new-instance v0, Lcom/nianticlabs/nia/location/FusedLocationProvider$4;

    invoke-direct {v0, p0}, Lcom/nianticlabs/nia/location/FusedLocationProvider$4;-><init>(Lcom/nianticlabs/nia/location/FusedLocationProvider;)V

    iput-object v0, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider;->fusedListener:Lcom/google/android/gms/location/LocationListener;

    .line 49
    iget-object v0, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider;->locationRequest:Lcom/google/android/gms/location/LocationRequest;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 50
    iget-object v0, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider;->locationRequest:Lcom/google/android/gms/location/LocationRequest;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 51
    iget-object v0, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider;->locationRequest:Lcom/google/android/gms/location/LocationRequest;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    .line 52
    iget-object v0, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider;->locationRequest:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/location/LocationRequest;->setSmallestDisplacement(F)Lcom/google/android/gms/location/LocationRequest;

    .line 54
    new-instance v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    invoke-direct {v0, p1}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider;->googleApiManager:Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    .line 56
    iget-object v0, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider;->googleApiManager:Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    iget-object v1, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider;->googleApiListener:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$Listener;

    invoke-virtual {v0, v1}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->setListener(Lcom/nianticlabs/nia/contextservice/GoogleApiManager$Listener;)V

    .line 58
    iget-object v0, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider;->googleApiManager:Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    invoke-virtual {v0}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->builder()Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 59
    iget-object v0, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider;->googleApiManager:Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    invoke-virtual {v0}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->build()V

    .line 60
    return-void
.end method

.method static synthetic access$002(Lcom/nianticlabs/nia/location/FusedLocationProvider;Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;)Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/nia/location/FusedLocationProvider;
    .param p1, "x1"    # Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider;->googleApiState:Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;

    return-object p1
.end method

.method static synthetic access$100(Lcom/nianticlabs/nia/location/FusedLocationProvider;Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/nia/location/FusedLocationProvider;
    .param p1, "x1"    # Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/nianticlabs/nia/location/FusedLocationProvider;->updateStatus(Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nianticlabs/nia/location/FusedLocationProvider;)Lcom/nianticlabs/nia/location/FusedLocationProvider$AppState;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/nia/location/FusedLocationProvider;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider;->appState:Lcom/nianticlabs/nia/location/FusedLocationProvider$AppState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nianticlabs/nia/location/FusedLocationProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/nia/location/FusedLocationProvider;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/nianticlabs/nia/location/FusedLocationProvider;->startProvider()V

    return-void
.end method

.method static synthetic access$400(Lcom/nianticlabs/nia/location/FusedLocationProvider;)Lcom/nianticlabs/nia/location/Provider$ProviderListener;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/nia/location/FusedLocationProvider;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider;->providerListener:Lcom/nianticlabs/nia/location/Provider$ProviderListener;

    return-object v0
.end method

.method private startProvider()V
    .locals 7

    .prologue
    .line 174
    :try_start_0
    sget-object v2, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v3, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider;->googleApiManager:Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    .line 175
    invoke-virtual {v3}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->getClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v3

    iget-object v4, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider;->locationRequest:Lcom/google/android/gms/location/LocationRequest;

    iget-object v5, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider;->fusedListener:Lcom/google/android/gms/location/LocationListener;

    invoke-static {}, Lcom/nianticlabs/nia/contextservice/ContextService;->getServiceLooper()Landroid/os/Looper;

    move-result-object v6

    .line 174
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v1

    .line 177
    .local v1, "pendingStatus":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/common/api/Status;>;"
    new-instance v2, Lcom/nianticlabs/nia/location/FusedLocationProvider$2;

    invoke-direct {v2, p0}, Lcom/nianticlabs/nia/location/FusedLocationProvider$2;-><init>(Lcom/nianticlabs/nia/location/FusedLocationProvider;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .end local v1    # "pendingStatus":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/common/api/Status;>;"
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v2, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->PERMISSION_DENIED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    invoke-direct {p0, v2}, Lcom/nianticlabs/nia/location/FusedLocationProvider;->updateStatus(Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V

    goto :goto_0
.end method

.method private stopProvider()V
    .locals 4

    .prologue
    .line 197
    sget-object v1, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v2, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider;->googleApiManager:Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    .line 198
    invoke-virtual {v2}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->getClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider;->fusedListener:Lcom/google/android/gms/location/LocationListener;

    .line 197
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/location/FusedLocationProviderApi;->removeLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 200
    .local v0, "pendingStatus":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/common/api/Status;>;"
    new-instance v1, Lcom/nianticlabs/nia/location/FusedLocationProvider$3;

    invoke-direct {v1, p0}, Lcom/nianticlabs/nia/location/FusedLocationProvider$3;-><init>(Lcom/nianticlabs/nia/location/FusedLocationProvider;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 212
    return-void
.end method

.method private updateStatus(Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V
    .locals 1
    .param p1, "status"    # Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider;->providerListener:Lcom/nianticlabs/nia/location/Provider$ProviderListener;

    .line 167
    .local v0, "listener":Lcom/nianticlabs/nia/location/Provider$ProviderListener;
    if-eqz v0, :cond_0

    .line 168
    invoke-interface {v0, p1}, Lcom/nianticlabs/nia/location/Provider$ProviderListener;->onProviderStatus(Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V

    .line 170
    :cond_0
    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 2

    .prologue
    .line 151
    sget-object v0, Lcom/nianticlabs/nia/location/FusedLocationProvider$AppState;->PAUSE:Lcom/nianticlabs/nia/location/FusedLocationProvider$AppState;

    iput-object v0, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider;->appState:Lcom/nianticlabs/nia/location/FusedLocationProvider$AppState;

    .line 153
    iget-object v0, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider;->googleApiState:Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;

    sget-object v1, Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;->STARTED:Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;

    if-ne v0, v1, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/nianticlabs/nia/location/FusedLocationProvider;->stopProvider()V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider;->googleApiManager:Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    invoke-virtual {v0}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->onPause()V

    .line 158
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 136
    sget-object v0, Lcom/nianticlabs/nia/location/FusedLocationProvider$AppState;->RESUME:Lcom/nianticlabs/nia/location/FusedLocationProvider$AppState;

    iput-object v0, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider;->appState:Lcom/nianticlabs/nia/location/FusedLocationProvider$AppState;

    .line 138
    iget-object v0, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider;->googleApiState:Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;

    sget-object v1, Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;->STARTED:Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;

    if-ne v0, v1, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/nianticlabs/nia/location/FusedLocationProvider;->startProvider()V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider;->googleApiManager:Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    invoke-virtual {v0}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->onResume()V

    .line 143
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/nianticlabs/nia/location/FusedLocationProvider$AppState;->START:Lcom/nianticlabs/nia/location/FusedLocationProvider$AppState;

    iput-object v0, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider;->appState:Lcom/nianticlabs/nia/location/FusedLocationProvider$AppState;

    .line 118
    iget-object v0, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider;->googleApiManager:Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    invoke-virtual {v0}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->onStart()V

    .line 119
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/nianticlabs/nia/location/FusedLocationProvider$AppState;->STOP:Lcom/nianticlabs/nia/location/FusedLocationProvider$AppState;

    iput-object v0, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider;->appState:Lcom/nianticlabs/nia/location/FusedLocationProvider$AppState;

    .line 128
    iget-object v0, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider;->googleApiManager:Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    invoke-virtual {v0}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->onStop()V

    .line 129
    return-void
.end method

.method public setListener(Lcom/nianticlabs/nia/location/Provider$ProviderListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/nianticlabs/nia/location/Provider$ProviderListener;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider;->providerListener:Lcom/nianticlabs/nia/location/Provider$ProviderListener;

    .line 163
    return-void
.end method
