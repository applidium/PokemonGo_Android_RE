.class Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment$1;
.super Ljava/lang/Object;
.source "SfidaFinderFragment.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;


# direct methods
.method constructor <init>(Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment$1;->this$0:Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;

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
    .line 66
    iget-object v3, p0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment$1;->this$0:Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;

    # getter for: Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->isScanningSfida:Z
    invoke-static {v3}, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->access$000(Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    sget-object v3, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLeScan() scanRecord : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Lcom/nianticproject/holoholo/sfida/SfidaUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "deviceName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "deviceAddress":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    .line 76
    .local v0, "bondState":I
    if-eqz v2, :cond_3

    # getter for: Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->BLE_NAME:Ljava/lang/String;
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 78
    sget-object v3, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SFIDA found, device bondState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 79
    invoke-static {v0}, Lcom/nianticproject/holoholo/sfida/SfidaUtils;->getBondStateName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment$1;->this$0:Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;

    .line 83
    # getter for: Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->isFiltered:Z
    invoke-static {v3}, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->access$200(Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment$1;->this$0:Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;

    # invokes: Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->isFilteredDevice(Ljava/lang/String;)Z
    invoke-static {v3, v1}, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->access$300(Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 84
    sget-object v3, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was not filtered."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    :cond_2
    iget-object v3, p0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment$1;->this$0:Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;

    # getter for: Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->onDeviceDiscoveredListener:Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment$OnDeviceDiscoveredListener;
    invoke-static {v3}, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->access$400(Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;)Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment$OnDeviceDiscoveredListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 89
    iget-object v3, p0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment$1;->this$0:Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;

    # getter for: Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->onDeviceDiscoveredListener:Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment$OnDeviceDiscoveredListener;
    invoke-static {v3}, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->access$400(Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;)Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment$OnDeviceDiscoveredListener;

    move-result-object v3

    iget-object v4, p0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment$1;->this$0:Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;

    # invokes: Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->detectButtonPressed([B)Z
    invoke-static {v4, p3}, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->access$500(Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;[B)Z

    move-result v4

    invoke-interface {v3, p1, v4}, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment$OnDeviceDiscoveredListener;->onDeviceDiscovered(Landroid/bluetooth/BluetoothDevice;Z)V

    goto/16 :goto_0

    .line 93
    :cond_3
    sget-object v3, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deviceName : ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] was not contained GO PLUS name."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
