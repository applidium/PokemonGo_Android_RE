.class Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController$1;
.super Ljava/lang/Object;
.source "SfidaController.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;


# direct methods
.method constructor <init>(Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController$1;->this$0:Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 30
    # getter for: Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Found device: %s address: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 31
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 30
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const-string v0, "EBISU"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    # getter for: Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Found SFIDA device: %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController$1;->this$0:Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;

    new-instance v1, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;

    iget-object v2, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController$1;->this$0:Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;

    # getter for: Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;->access$200(Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    # setter for: Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;->sfidaDevice:Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;
    invoke-static {v0, v1}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;->access$102(Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;)Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;

    .line 35
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController$1;->this$0:Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;

    # getter for: Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;->sfidaDevice:Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;
    invoke-static {v0}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;->access$100(Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;)Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->connect()V

    .line 36
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController$1;->this$0:Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;

    invoke-virtual {v0}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;->stopScan()V

    .line 38
    :cond_0
    return-void
.end method
