.class Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$1;
.super Ljava/lang/Object;
.source "SfidaUnityPlugin.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;


# direct methods
.method constructor <init>(Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$1;->this$0:Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 85
    # getter for: Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$1;->this$0:Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;

    check-cast p2, Lcom/nianticproject/holoholo/sfida/service/SfidaService$LocalBinder;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/nianticproject/holoholo/sfida/service/SfidaService$LocalBinder;->getService()Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    move-result-object v1

    # setter for: Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;
    invoke-static {v0, v1}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->access$102(Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;Lcom/nianticproject/holoholo/sfida/service/SfidaService;)Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    .line 89
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$1;->this$0:Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;

    # getter for: Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;
    invoke-static {v0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->access$100(Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;)Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->initialize()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    # getter for: Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to initialize Bluetooth"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$1;->this$0:Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;

    # getter for: Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;
    invoke-static {v0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->access$100(Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;)Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$1;->this$0:Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;

    # getter for: Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->device:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->access$200(Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 95
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$1;->this$0:Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;

    const/4 v1, 0x1

    # setter for: Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->isServiceBound:Z
    invoke-static {v0, v1}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->access$302(Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;Z)Z

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 100
    # getter for: Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[BLE] onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$1;->this$0:Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;

    const/4 v1, 0x0

    # setter for: Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;
    invoke-static {v0, v1}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->access$102(Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;Lcom/nianticproject/holoholo/sfida/service/SfidaService;)Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    .line 102
    return-void
.end method
