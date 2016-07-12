.class public Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;
.super Ljava/lang/Object;
.source "NetworkReachabilityHandler.java"

# interfaces
.implements Lcom/voxelbusters/nativeplugins/base/interfaces/IAppLifeCycleListener;


# static fields
.field private static INSTANCE:Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;

.field static isSocketConnected:Z

.field static isWifiReachable:Z


# instance fields
.field connectivityListener:Lcom/voxelbusters/nativeplugins/features/reachability/ConnectivityListener;

.field context:Landroid/content/Context;

.field socketPoller:Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    sput-boolean v0, Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;->isWifiReachable:Z

    .line 25
    sput-boolean v0, Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;->isSocketConnected:Z

    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;

    invoke-direct {v0}, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;-><init>()V

    iput-object v0, p0, Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;->socketPoller:Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;

    .line 44
    return-void
.end method

.method public static getInstance()Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;->INSTANCE:Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;

    invoke-direct {v0}, Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;-><init>()V

    sput-object v0, Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;->INSTANCE:Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;

    .line 37
    :cond_0
    sget-object v0, Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;->INSTANCE:Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;

    return-object v0
.end method

.method public static sendSocketConnectionStatus(Z)V
    .locals 2
    .param p0, "newSocketStatus"    # Z

    .prologue
    .line 128
    sget-boolean v0, Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;->isSocketConnected:Z

    if-eq v0, p0, :cond_0

    .line 130
    sput-boolean p0, Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;->isSocketConnected:Z

    .line 131
    const-string v1, "NetworkSocketStatusChange"

    sget-boolean v0, Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;->isSocketConnected:Z

    if-eqz v0, :cond_1

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Lcom/voxelbusters/nativeplugins/NativePluginHelper;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_0
    return-void

    .line 131
    :cond_1
    const-string v0, "false"

    goto :goto_0
.end method

.method public static sendWifiReachabilityStatus(Z)V
    .locals 2
    .param p0, "newWifiStatus"    # Z

    .prologue
    .line 119
    sget-boolean v0, Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;->isWifiReachable:Z

    if-eq v0, p0, :cond_0

    .line 121
    sput-boolean p0, Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;->isWifiReachable:Z

    .line 122
    const-string v1, "NetworkHardwareStatusChange"

    sget-boolean v0, Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;->isWifiReachable:Z

    if-eqz v0, :cond_1

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Lcom/voxelbusters/nativeplugins/NativePluginHelper;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_0
    return-void

    .line 122
    :cond_1
    const-string v0, "false"

    goto :goto_0
.end method


# virtual methods
.method StartSocketPoller(Ljava/lang/String;IFII)V
    .locals 1
    .param p1, "ipAddress"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timeGapBetweenPolls"    # F
    .param p4, "connectionTimeOutPeriod"    # I
    .param p5, "maxRetryCount"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;->socketPoller:Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;

    invoke-virtual {v0, p1}, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;->setIp(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;->socketPoller:Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;

    invoke-virtual {v0, p2}, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;->setPort(I)V

    .line 62
    iget-object v0, p0, Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;->socketPoller:Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;

    invoke-virtual {v0, p4}, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;->setConnectionTimeOutPeriod(I)V

    .line 63
    iget-object v0, p0, Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;->socketPoller:Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;

    invoke-virtual {v0, p5}, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;->setMaxRetryCount(I)V

    .line 64
    iget-object v0, p0, Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;->socketPoller:Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;

    invoke-virtual {v0, p3}, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;->setTimeGapBetweenPolls(F)V

    .line 66
    iget-object v0, p0, Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;->socketPoller:Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;

    invoke-virtual {v0}, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;->Start()V

    .line 67
    return-void
.end method

.method StartTestingNetworkHardware()V
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;->pauseReachability()V

    .line 73
    new-instance v0, Lcom/voxelbusters/nativeplugins/features/reachability/ConnectivityListener;

    invoke-direct {v0}, Lcom/voxelbusters/nativeplugins/features/reachability/ConnectivityListener;-><init>()V

    iput-object v0, p0, Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;->connectivityListener:Lcom/voxelbusters/nativeplugins/features/reachability/ConnectivityListener;

    .line 75
    iget-object v0, p0, Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;->connectivityListener:Lcom/voxelbusters/nativeplugins/features/reachability/ConnectivityListener;

    invoke-virtual {p0, v0}, Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;->registerBroadcastReceiver(Landroid/content/BroadcastReceiver;)V

    .line 78
    iget-object v0, p0, Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;->connectivityListener:Lcom/voxelbusters/nativeplugins/features/reachability/ConnectivityListener;

    iget-object v1, p0, Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/voxelbusters/nativeplugins/features/reachability/ConnectivityListener;->updateConnectionStatus(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method public initialize(Ljava/lang/String;IFII)V
    .locals 1
    .param p1, "ipAddress"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timeGapBetweenPolls"    # F
    .param p4, "connectionTimeOutPeriod"    # I
    .param p5, "maxRetryCount"    # I

    .prologue
    .line 49
    invoke-static {}, Lcom/voxelbusters/nativeplugins/NativePluginHelper;->getCurrentContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;->context:Landroid/content/Context;

    .line 51
    invoke-virtual {p0}, Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;->StartTestingNetworkHardware()V

    .line 52
    invoke-virtual/range {p0 .. p5}, Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;->StartSocketPoller(Ljava/lang/String;IFII)V

    .line 55
    invoke-static {p0}, Lcom/voxelbusters/NativeBinding;->addAppLifeCycleListener(Lcom/voxelbusters/nativeplugins/base/interfaces/IAppLifeCycleListener;)V

    .line 56
    return-void
.end method

.method public onApplicationPause()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public onApplicationQuit()V
    .locals 0

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;->pauseReachability()V

    .line 152
    invoke-static {p0}, Lcom/voxelbusters/NativeBinding;->removeAppLifeCycleListener(Lcom/voxelbusters/nativeplugins/base/interfaces/IAppLifeCycleListener;)V

    .line 153
    return-void
.end method

.method public onApplicationResume()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public pauseReachability()V
    .locals 4

    .prologue
    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;->connectivityListener:Lcom/voxelbusters/nativeplugins/features/reachability/ConnectivityListener;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "NativePlugins.NetworkConnectivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Already unregistered!"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/voxelbusters/nativeplugins/utilities/Debug;->warning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method registerBroadcastReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 4
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "connectivityChangeIntentFilter":Landroid/content/IntentFilter;
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 85
    .local v2, "wifiStateChangeIntentFilter":Landroid/content/IntentFilter;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 87
    .local v1, "networkStateChangeIntentFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;->context:Landroid/content/Context;

    invoke-virtual {v3, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    iget-object v3, p0, Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;->context:Landroid/content/Context;

    invoke-virtual {v3, p1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    iget-object v3, p0, Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;->context:Landroid/content/Context;

    invoke-virtual {v3, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    return-void
.end method

.method public resumeReachability()V
    .locals 4

    .prologue
    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;->connectivityListener:Lcom/voxelbusters/nativeplugins/features/reachability/ConnectivityListener;

    invoke-virtual {p0, v1}, Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;->registerBroadcastReceiver(Landroid/content/BroadcastReceiver;)V

    .line 97
    iget-object v1, p0, Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;->connectivityListener:Lcom/voxelbusters/nativeplugins/features/reachability/ConnectivityListener;

    iget-object v2, p0, Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/voxelbusters/nativeplugins/features/reachability/ConnectivityListener;->updateConnectionStatus(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "NativePlugins.NetworkConnectivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Already registered! "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/voxelbusters/nativeplugins/utilities/Debug;->warning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
