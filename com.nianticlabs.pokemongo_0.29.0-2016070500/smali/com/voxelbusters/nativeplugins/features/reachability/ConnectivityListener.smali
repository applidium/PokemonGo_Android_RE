.class public Lcom/voxelbusters/nativeplugins/features/reachability/ConnectivityListener;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityListener.java"


# instance fields
.field isConnected:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/voxelbusters/nativeplugins/features/reachability/ConnectivityListener;->updateConnectionStatus(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public updateConnectionStatus(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    const/4 v0, 0x0

    .line 25
    .local v0, "connectionStatus":Z
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 26
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 28
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 30
    const/4 v0, 0x1

    .line 37
    :goto_0
    invoke-static {v0}, Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;->sendWifiReachabilityStatus(Z)V

    .line 38
    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
