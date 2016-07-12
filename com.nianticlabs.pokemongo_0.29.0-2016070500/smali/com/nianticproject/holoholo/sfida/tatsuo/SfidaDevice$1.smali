.class Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$1;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "SfidaDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;


# direct methods
.method constructor <init>(Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$1;->this$0:Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonUpdated(I)V
    .locals 6
    .param p1, "value"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 92
    iget-object v1, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$1;->this$0:Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;

    # getter for: Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->buttonPresses:[I
    invoke-static {v1}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->access$400(Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;)[I

    move-result-object v1

    if-nez v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$1;->this$0:Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;

    new-array v2, v3, [I

    aput p1, v2, v5

    # setter for: Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->buttonPresses:[I
    invoke-static {v1, v2}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->access$402(Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;[I)[I

    .line 101
    :goto_0
    # getter for: Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SFIDA button press returns %d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$1;->this$0:Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;

    # getter for: Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->buttonPresses:[I
    invoke-static {v1}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->access$400(Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;)[I

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [I

    .line 97
    .local v0, "destination":[I
    iget-object v1, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$1;->this$0:Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;

    # getter for: Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->buttonPresses:[I
    invoke-static {v1}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->access$400(Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$1;->this$0:Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;

    # getter for: Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->buttonPresses:[I
    invoke-static {v2}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->access$400(Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;)[I

    move-result-object v2

    array-length v2, v2

    invoke-static {v1, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    iget-object v1, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$1;->this$0:Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;

    # getter for: Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->buttonPresses:[I
    invoke-static {v1}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->access$400(Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;)[I

    move-result-object v1

    array-length v1, v1

    aput p1, v0, v1

    .line 99
    iget-object v1, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$1;->this$0:Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;

    # setter for: Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->buttonPresses:[I
    invoke-static {v1, v0}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->access$402(Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;[I)[I

    goto :goto_0
.end method

.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 85
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    .line 87
    .local v0, "value":[B
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    mul-int/lit16 v1, v1, 0x100

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$1;->onButtonUpdated(I)V

    .line 89
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 7
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 38
    # getter for: Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onConnectionStateChange. status: %d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    if-ne p3, v6, :cond_1

    .line 40
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$1;->this$0:Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;

    # setter for: Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->connectionState:I
    invoke-static {v0, v6}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->access$102(Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;I)I

    .line 41
    # getter for: Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connected to GATT server."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    # getter for: Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Attempting to start service discovery: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$1;->this$0:Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;

    .line 43
    # getter for: Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {v3}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->access$200(Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    .line 42
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    if-nez p3, :cond_0

    .line 45
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$1;->this$0:Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;

    # setter for: Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->connectionState:I
    invoke-static {v0, v4}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->access$102(Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;I)I

    .line 46
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$1;->this$0:Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;

    const/4 v1, 0x0

    # setter for: Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {v0, v1}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->access$202(Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;

    .line 47
    # getter for: Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Disconnected from GATT server."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 9
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    const/4 v6, 0x1

    .line 53
    if-eqz p2, :cond_1

    .line 54
    # getter for: Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GATT Failed to discover service. status: %d"

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v4, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$1;->this$0:Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;

    sget-object v5, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaUUID;->SFIDA_DEV_CTRL_SVC_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v5}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v5

    # setter for: Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->service:Landroid/bluetooth/BluetoothGattService;
    invoke-static {v4, v5}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->access$302(Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/BluetoothGattService;

    .line 59
    iget-object v4, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$1;->this$0:Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;

    # getter for: Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->service:Landroid/bluetooth/BluetoothGattService;
    invoke-static {v4}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->access$300(Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v4

    if-nez v4, :cond_2

    .line 60
    # getter for: Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GATT Service not found: SFIDA_DEV_CTRL_SVC"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 63
    :cond_2
    # getter for: Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GATT onServicesDiscovered service is set"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v4, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$1;->this$0:Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;

    .line 67
    # getter for: Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->service:Landroid/bluetooth/BluetoothGattService;
    invoke-static {v4}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->access$300(Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v4

    sget-object v5, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaUUID;->SFIDA_BUTTON_NOTIF_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 68
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p1, v0, v6}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 71
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    move-result-object v2

    .line 72
    .local v2, "descriptors":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattDescriptor;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 73
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattDescriptor;

    .line 74
    .local v1, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    sget-object v4, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 75
    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    .line 72
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
