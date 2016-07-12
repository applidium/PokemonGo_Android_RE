.class Lcom/nianticproject/holoholo/sfida/service/SfidaService$1;
.super Landroid/content/BroadcastReceiver;
.source "SfidaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticproject/holoholo/sfida/service/SfidaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticproject/holoholo/sfida/service/SfidaService;


# direct methods
.method constructor <init>(Lcom/nianticproject/holoholo/sfida/service/SfidaService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService$1;->this$0:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 90
    # getter for: Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 94
    # getter for: Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onReceived() action was null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    const/4 v4, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_2
    move v3, v4

    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 139
    # getter for: Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    :sswitch_0
    const-string v5, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :sswitch_1
    const-string v3, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v5

    goto :goto_1

    :sswitch_2
    const-string v3, "com.nianticproject.holoholo.sfida.dismiss"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_3
    const-string v3, "com.nianticproject.holoholo.sfida.vibrate"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_4
    const-string v3, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x4

    goto :goto_1

    .line 100
    :pswitch_0
    iget-object v3, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService$1;->this$0:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    # invokes: Lcom/nianticproject/holoholo/sfida/service/SfidaService;->onBondStateChanged(Landroid/content/Intent;)V
    invoke-static {v3, p2}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->access$100(Lcom/nianticproject/holoholo/sfida/service/SfidaService;Landroid/content/Intent;)V

    goto :goto_0

    .line 104
    :pswitch_1
    iget-object v3, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService$1;->this$0:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    # getter for: Lcom/nianticproject/holoholo/sfida/service/SfidaService;->connectionState:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;
    invoke-static {v3}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->access$200(Lcom/nianticproject/holoholo/sfida/service/SfidaService;)Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    move-result-object v3

    sget-object v4, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;->RE_BOND:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    if-ne v3, v4, :cond_0

    .line 105
    iget-object v3, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService$1;->this$0:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    sget-object v4, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;->NO_CONNECTION:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    invoke-virtual {v3, v4}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->setConnectionState(Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;)V

    .line 106
    iget-object v3, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService$1;->this$0:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    iget-object v4, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService$1;->this$0:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    # getter for: Lcom/nianticproject/holoholo/sfida/service/SfidaService;->bluetoothDeviceAddress:Ljava/lang/String;
    invoke-static {v4}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->access$300(Lcom/nianticproject/holoholo/sfida/service/SfidaService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->getDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-static {v3}, Lcom/nianticproject/holoholo/sfida/SfidaUtils;->createBond(Landroid/bluetooth/BluetoothDevice;)V

    .line 107
    iget-object v3, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService$1;->this$0:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    const-string v4, "com.nianticproject.holoholo.sfida.ACTION_CREATE_BOND"

    # invokes: Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sendBroadcast(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->access$400(Lcom/nianticproject/holoholo/sfida/service/SfidaService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 113
    :pswitch_2
    iget-object v3, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService$1;->this$0:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    invoke-virtual {v3}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nianticproject/holoholo/sfida/SfidaNotification;->dissmiss(Landroid/content/Context;)V

    .line 114
    iget-object v3, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService$1;->this$0:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    invoke-virtual {v3}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->disconnectBluetooth()Z

    goto/16 :goto_0

    .line 119
    :pswitch_3
    iget-object v3, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService$1;->this$0:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    sget-object v4, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_LED_VIBRATE_CTRL_CHAR:Ljava/util/UUID;

    .line 121
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->getBlinkRed()[B

    move-result-object v5

    .line 119
    invoke-virtual {v3, v4, v5}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sendDeviceControlMessage(Ljava/util/UUID;[B)Z

    goto/16 :goto_0

    .line 126
    :pswitch_4
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 128
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setPairingConfirmation"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "cancelPairingUserInput"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 130
    :catch_0
    move-exception v2

    .line 131
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_0

    .line 132
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    .line 133
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_0

    .line 134
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v2

    .line 135
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto/16 :goto_0

    .line 98
    nop

    :sswitch_data_0
    .sparse-switch
        -0xd553507 -> :sswitch_4
        -0x868ec38 -> :sswitch_3
        0x405450e3 -> :sswitch_2
        0x6c9330ef -> :sswitch_1
        0x7e2cc189 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
