.class public Lcom/nianticproject/holoholo/sfida/service/SfidaService;
.super Landroid/app/Service;
.source "SfidaService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nianticproject/holoholo/sfida/service/SfidaService$LocalBinder;
    }
.end annotation


# static fields
.field private static final CLIENT_CHARACTERISTIC_CONFIG:Ljava/lang/String; = "00002902-0000-1000-8000-00805f9b34fb"

.field public static final EXTRA_DATA_CHARACTERISTIC:Ljava/lang/String; = "com.nianticproject.holoholo.sfida..EXTRA_DATA_TYPE"

.field public static final EXTRA_DATA_RAW:Ljava/lang/String; = "com.nianticproject.holoholo.sfida.EXTRA_DATA_RAW"

.field private static final TAG:Ljava/lang/String;

.field private static final USE_AUTO_CONNECT:Z


# instance fields
.field private final binder:Landroid/os/IBinder;

.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private bluetoothDeviceAddress:Ljava/lang/String;

.field private bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private bluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private final broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private certificator:Lcom/nianticproject/holoholo/sfida/service/Certificator;

.field private volatile connectionState:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

.field private volatile isReceivedNotifyCallback:Z

.field private volatile isReceivedWriteCallback:Z

.field private sfidaButtonDetector:Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 51
    sget-object v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;->NO_CONNECTION:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    iput-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->connectionState:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    .line 74
    iput-boolean v1, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->isReceivedWriteCallback:Z

    .line 75
    iput-boolean v1, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->isReceivedNotifyCallback:Z

    .line 78
    new-instance v0, Lcom/nianticproject/holoholo/sfida/service/SfidaService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/nianticproject/holoholo/sfida/service/SfidaService$LocalBinder;-><init>(Lcom/nianticproject/holoholo/sfida/service/SfidaService;)V

    iput-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->binder:Landroid/os/IBinder;

    .line 81
    new-instance v0, Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector;

    invoke-direct {v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sfidaButtonDetector:Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector;

    .line 84
    new-instance v0, Lcom/nianticproject/holoholo/sfida/service/Certificator;

    invoke-direct {v0, p0}, Lcom/nianticproject/holoholo/sfida/service/Certificator;-><init>(Lcom/nianticproject/holoholo/sfida/service/SfidaService;)V

    iput-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->certificator:Lcom/nianticproject/holoholo/sfida/service/Certificator;

    .line 87
    new-instance v0, Lcom/nianticproject/holoholo/sfida/service/SfidaService$1;

    invoke-direct {v0, p0}, Lcom/nianticproject/holoholo/sfida/service/SfidaService$1;-><init>(Lcom/nianticproject/holoholo/sfida/service/SfidaService;)V

    iput-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 908
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nianticproject/holoholo/sfida/service/SfidaService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticproject/holoholo/sfida/service/SfidaService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->onBondStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nianticproject/holoholo/sfida/service/SfidaService;)Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;
    .locals 1
    .param p0, "x0"    # Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->connectionState:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nianticproject/holoholo/sfida/service/SfidaService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->bluetoothDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nianticproject/holoholo/sfida/service/SfidaService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticproject/holoholo/sfida/service/SfidaService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sendBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method private isBoundDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 834
    iget-object v2, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 836
    .local v1, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v1, :cond_1

    .line 837
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 838
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 839
    .local v0, "bondedDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 840
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 844
    .end local v0    # "bondedDevice":Landroid/bluetooth/BluetoothDevice;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method private onBondStateChanged(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v5, -0x80000000

    .line 848
    const-string v4, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 849
    .local v2, "newState":I
    const-string v4, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 851
    .local v3, "oldState":I
    sget-object v4, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BLE] ACTION_BOND_STATE_CHANGED oldState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 852
    invoke-static {v3}, Lcom/nianticproject/holoholo/sfida/SfidaUtils;->getBondStateName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u2192 newState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 853
    invoke-static {v2}, Lcom/nianticproject/holoholo/sfida/SfidaUtils;->getBondStateName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 851
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 857
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    .line 858
    packed-switch v2, :pswitch_data_0

    .line 895
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 864
    :pswitch_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "cancelPairingUserInput"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    .line 872
    :goto_1
    invoke-virtual {p0, v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 865
    :catch_0
    move-exception v1

    .line 866
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 867
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 868
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 869
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v1

    .line 870
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 875
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :pswitch_2
    const/16 v4, 0xc

    if-ne v3, v4, :cond_1

    .line 879
    sget-object v4, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;->RE_BOND:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    invoke-virtual {p0, v4}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->setConnectionState(Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;)V

    .line 880
    iget-object v4, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->certificator:Lcom/nianticproject/holoholo/sfida/service/Certificator;

    sget-object v5, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;->NO_CERTIFICATION:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    invoke-virtual {v4, v5}, Lcom/nianticproject/holoholo/sfida/service/Certificator;->setCertificationState(Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;)V

    .line 881
    invoke-virtual {p0}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->disconnectBluetooth()Z

    goto :goto_0

    .line 882
    :cond_1
    const/16 v4, 0xb

    if-ne v3, v4, :cond_2

    .line 884
    sget-object v4, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;->NO_CONNECTION:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    invoke-virtual {p0, v4}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->setConnectionState(Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;)V

    .line 885
    const-string v4, "com.nianticproject.holoholo.sfida.ACTION_BOND_CANCELED"

    invoke-direct {p0, v4}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sendBroadcast(Ljava/lang/String;)V

    goto :goto_0

    .line 887
    :cond_2
    sget-object v4, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled oldState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 858
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private sendBroadcast(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 902
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 903
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sendBroadcast(Landroid/content/Intent;)V

    .line 904
    return-void
.end method

.method private startCertificateSequence()V
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->certificator:Lcom/nianticproject/holoholo/sfida/service/Certificator;

    invoke-virtual {v0}, Lcom/nianticproject/holoholo/sfida/service/Certificator;->startCertification()V

    .line 899
    return-void
.end method


# virtual methods
.method public closeBluetoothGatt()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    .line 349
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    goto :goto_0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 288
    invoke-direct {p0, p1}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->isBoundDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 289
    sget-object v2, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;->CONNECT_GATT:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    invoke-virtual {p0, v2}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->setConnectionState(Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;)V

    .line 291
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "address":Ljava/lang/String;
    iget-object v2, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 294
    :cond_0
    sget-object v2, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    const-string v3, "[BLE] BluetoothAdapter not initialized or unspecified address."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .end local v0    # "address":Ljava/lang/String;
    :goto_0
    return v1

    .line 299
    .restart local v0    # "address":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->bluetoothDeviceAddress:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->bluetoothDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v2, :cond_2

    .line 301
    sget-object v1, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    const-string v2, "[BLE] Trying to use an existing bluetoothGatt for connection."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v1, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->connect()Z

    move-result v1

    goto :goto_0

    .line 307
    :cond_2
    new-instance v2, Lcom/nianticproject/holoholo/sfida/service/SfidaGattCallback;

    invoke-direct {v2, p0}, Lcom/nianticproject/holoholo/sfida/service/SfidaGattCallback;-><init>(Lcom/nianticproject/holoholo/sfida/service/SfidaService;)V

    invoke-virtual {p1, p0, v1, v2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 309
    sget-object v1, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    const-string v2, "Trying to create a new connection."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iput-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->bluetoothDeviceAddress:Ljava/lang/String;

    .line 316
    .end local v0    # "address":Ljava/lang/String;
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 312
    :cond_3
    sget-object v1, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;->BONDING:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    invoke-virtual {p0, v1}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->setConnectionState(Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;)V

    .line 313
    invoke-static {p1}, Lcom/nianticproject/holoholo/sfida/SfidaUtils;->createBond(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_1
.end method

.method public disconnectBluetooth()Z
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_1

    .line 329
    :cond_0
    sget-object v0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    const-string v1, "[BLE] BluetoothAdapter not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v0, 0x0

    .line 334
    :goto_0
    return v0

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 334
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public enableDeviceControlServiceNotify()Z
    .locals 5

    .prologue
    .line 622
    sget-object v2, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    const-string v3, "enableDeviceControlServiceNotify()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    sget-object v2, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_DEVICE_CONTROL_SERVICE:Ljava/util/UUID;

    sget-object v3, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_BUTTON_NOTIF_CHAR:Ljava/util/UUID;

    invoke-virtual {p0, v2, v3}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->findCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 627
    .local v0, "bleGattChar":Landroid/bluetooth/BluetoothGattCharacteristic;
    const/4 v1, 0x0

    .line 628
    .local v1, "succeed":Z
    if-eqz v0, :cond_0

    .line 630
    const/4 v2, 0x1

    sget-object v3, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_BUTTON_NOTIF_CHAR:Ljava/util/UUID;

    invoke-virtual {p0, v0, v2, v3}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sendToEnableSfidaNotification(Landroid/bluetooth/BluetoothGattCharacteristic;ZLjava/util/UUID;)Z

    move-result v1

    .line 634
    sget-object v2, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableDeviceControlServiceNotify() result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :goto_0
    return v1

    .line 636
    :cond_0
    sget-object v2, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    const-string v3, "enableDeviceControlServiceNotify() BluetoothGattCharacteristic not found."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableSecurityServiceNotify()Z
    .locals 1

    .prologue
    .line 677
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->enableSecurityServiceNotify(Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;)Z

    move-result v0

    return v0
.end method

.method public enableSecurityServiceNotify(Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;)Z
    .locals 5
    .param p1, "timeoutListener"    # Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;

    .prologue
    .line 648
    sget-object v2, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    const-string v3, "enableSecurityServiceNotify()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    sget-object v2, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_CERTIFICATE_SERVICE:Ljava/util/UUID;

    sget-object v3, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_SFIDA_COMMANDS_CHAR:Ljava/util/UUID;

    invoke-virtual {p0, v2, v3}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->findCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 654
    .local v0, "bleGattChar":Landroid/bluetooth/BluetoothGattCharacteristic;
    const/4 v1, 0x0

    .line 655
    .local v1, "succeed":Z
    if-eqz v0, :cond_0

    .line 657
    const/4 v2, 0x1

    sget-object v3, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_SFIDA_COMMANDS_CHAR:Ljava/util/UUID;

    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sendToEnableSfidaNotification(Landroid/bluetooth/BluetoothGattCharacteristic;ZLjava/util/UUID;Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;)Z

    move-result v1

    .line 662
    sget-object v2, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableSecurityServiceNotify() result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :goto_0
    return v1

    .line 664
    :cond_0
    sget-object v2, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    const-string v3, "enableSecurityServiceNotify() BluetoothGattCharacteristic not found."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public findCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 4
    .param p1, "serviceUuid"    # Ljava/util/UUID;
    .param p2, "characteristicUuid"    # Ljava/util/UUID;

    .prologue
    const/4 v1, 0x0

    .line 416
    iget-object v2, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v2, :cond_0

    .line 425
    :goto_0
    return-object v1

    .line 420
    :cond_0
    iget-object v2, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    .line 421
    .local v0, "service":Landroid/bluetooth/BluetoothGattService;
    if-eqz v0, :cond_1

    .line 422
    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    goto :goto_0

    .line 424
    :cond_1
    sget-object v2, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    const-string v3, "findCharacteristic() characteristic was not found."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getBluetoothAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->bluetoothDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 241
    iget-object v1, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 242
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_0

    .line 243
    sget-object v1, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    const-string v2, "[BLE] Device not found.  Unable to connect."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v0, 0x0

    .line 247
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    return-object v0
.end method

.method public getIsReceivedNotifyCallback()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->isReceivedNotifyCallback:Z

    return v0
.end method

.method public getIsReceivedWriteCallback()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->isReceivedWriteCallback:Z

    return v0
.end method

.method public getSupportedGattServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 204
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public initialize()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 258
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    if-nez v0, :cond_0

    .line 259
    const-string v0, "bluetooth"

    invoke-virtual {p0, v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    iput-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 261
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    if-nez v0, :cond_0

    .line 262
    sget-object v0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to initialize BluetoothManager."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 273
    :goto_0
    return v0

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 268
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    .line 269
    sget-object v0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to obtain a BluetoothAdapter."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 270
    goto :goto_0

    .line 273
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 148
    sget-object v1, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    const-string v2, "onBind()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 152
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v1, "com.nianticproject.holoholo.sfida.dismiss"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v1, "com.nianticproject.holoholo.sfida.vibrate"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    iget-object v1, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->binder:Landroid/os/IBinder;

    return-object v1
.end method

.method public onCertificationComplete()V
    .locals 1

    .prologue
    .line 822
    sget-object v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;->CONNECTED:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    invoke-virtual {p0, v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->setConnectionState(Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;)V

    .line 824
    invoke-virtual {p0}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->enableDeviceControlServiceNotify()Z

    .line 825
    const-string v0, "com.nianticproject.holoholo.sfida.ACTION_CERTIFICATE_COMPLETE"

    invoke-direct {p0, v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sendBroadcast(Ljava/lang/String;)V

    .line 827
    invoke-virtual {p0}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/holoholo/sfida/SfidaNotification;->showSfidaNotification(Landroid/content/Context;)Landroid/app/Notification;

    .line 828
    return-void
.end method

.method public onConnectedWithGattServer(Landroid/bluetooth/BluetoothGatt;)V
    .locals 1
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 785
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    .line 786
    sget-object v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;->DISCOVERING_SERVICE:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    invoke-virtual {p0, v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->setConnectionState(Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;)V

    .line 787
    const-string v0, "com.nianticproject.holoholo.sfida.ACTION_GATT_CONNECTED"

    invoke-direct {p0, v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sendBroadcast(Ljava/lang/String;)V

    .line 788
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 172
    sget-object v0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 175
    invoke-virtual {p0}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->closeBluetoothGatt()V

    .line 177
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 179
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sfidaButtonDetector:Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sfidaButtonDetector:Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector;

    invoke-virtual {v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector;->release()V

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/holoholo/sfida/SfidaNotification;->dissmiss(Landroid/content/Context;)V

    .line 185
    return-void
.end method

.method public onDisconnectedWithGattServer()V
    .locals 2

    .prologue
    .line 791
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->connectionState:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    sget-object v1, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;->RE_BOND:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    if-eq v0, v1, :cond_0

    .line 796
    invoke-virtual {p0}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->closeBluetoothGatt()V

    .line 797
    const-string v0, "com.nianticproject.holoholo.sfida.ACTION_GATT_DISCONNECTED"

    invoke-direct {p0, v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sendBroadcast(Ljava/lang/String;)V

    .line 798
    sget-object v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;->NO_CONNECTION:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    invoke-virtual {p0, v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->setConnectionState(Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;)V

    .line 799
    invoke-virtual {p0}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/holoholo/sfida/SfidaNotification;->dissmiss(Landroid/content/Context;)V

    .line 801
    :cond_0
    return-void
.end method

.method public onServiceDiscovered()V
    .locals 2

    .prologue
    .line 804
    sget-object v0, Lcom/nianticproject/holoholo/sfida/service/SfidaService$2;->$SwitchMap$com$nianticproject$holoholo$sfida$constants$SfidaConstants$ConnectionState:[I

    iget-object v1, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->connectionState:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    invoke-virtual {v1}, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 819
    :goto_0
    return-void

    .line 806
    :pswitch_0
    sget-object v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;->CERTIFICATION:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    invoke-virtual {p0, v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->setConnectionState(Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;)V

    .line 807
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->startCertificateSequence()V

    .line 808
    const-string v0, "com.nianticproject.holoholo.sfida.ACTION_GATT_SERVICES_DISCOVERED"

    invoke-direct {p0, v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sendBroadcast(Ljava/lang/String;)V

    goto :goto_0

    .line 813
    :pswitch_1
    sget-object v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;->NO_CONNECTION:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    invoke-virtual {p0, v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->setConnectionState(Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;)V

    .line 814
    invoke-virtual {p0}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->disconnectBluetooth()Z

    goto :goto_0

    .line 804
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSfidaUpdated(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 12
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v11, 0x0

    .line 718
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.nianticproject.holoholo.sfida.ACTION_DATA_AVAILABLE"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 719
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v4

    .line 720
    .local v4, "receivedValue":[B
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    .line 721
    .local v3, "receivedUuid":Ljava/util/UUID;
    invoke-static {v4}, Lcom/nianticproject/holoholo/sfida/SfidaUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v5

    .line 722
    .local v5, "receivedValueString":Ljava/lang/String;
    invoke-static {v4}, Lcom/nianticproject/holoholo/sfida/SfidaUtils;->byteArrayToBitString([B)Ljava/lang/String;

    move-result-object v0

    .line 724
    .local v0, "bits":Ljava/lang/String;
    sget-object v8, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    const-string v9, "[BLE] onSfidaUpdated()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    sget-object v8, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  RawData : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    sget-object v8, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  Bit : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    sget-object v8, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  UUID    : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const/16 v8, 0x12

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {p1, v8, v9}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 731
    .local v6, "type":I
    sget-object v8, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  type    : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    .end local v6    # "type":I
    :goto_0
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->getInstance()Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->stopWatch()V

    .line 739
    sget-object v8, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_SFIDA_COMMANDS_CHAR:Ljava/util/UUID;

    invoke-virtual {v8, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 742
    iget-object v8, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->certificator:Lcom/nianticproject/holoholo/sfida/service/Certificator;

    if-nez v8, :cond_0

    .line 743
    new-instance v8, Lcom/nianticproject/holoholo/sfida/service/Certificator;

    invoke-direct {v8, p0}, Lcom/nianticproject/holoholo/sfida/service/Certificator;-><init>(Lcom/nianticproject/holoholo/sfida/service/SfidaService;)V

    iput-object v8, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->certificator:Lcom/nianticproject/holoholo/sfida/service/Certificator;

    .line 746
    :cond_0
    iget-object v8, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->certificator:Lcom/nianticproject/holoholo/sfida/service/Certificator;

    invoke-virtual {v8, v5}, Lcom/nianticproject/holoholo/sfida/service/Certificator;->onSfidaUpdated(Ljava/lang/String;)V

    .line 781
    :cond_1
    :goto_1
    return-void

    .line 732
    :catch_0
    move-exception v1

    .line 733
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 748
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_2
    sget-object v8, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_FW_VERSION_CHAR:Ljava/util/UUID;

    invoke-virtual {v8, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 751
    if-eqz v4, :cond_1

    array-length v8, v4

    if-lez v8, :cond_1

    .line 753
    :try_start_1
    const-string v8, "com.nianticproject.holoholo.sfida.EXTRA_DATA_RAW"

    new-instance v9, Ljava/lang/String;

    const-string v10, "US-ASCII"

    invoke-direct {v9, v4, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 754
    const-string v8, "com.nianticproject.holoholo.sfida..EXTRA_DATA_TYPE"

    invoke-virtual {v2, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 755
    invoke-virtual {p0, v2}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 756
    :catch_1
    move-exception v1

    .line 757
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 761
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_3
    sget-object v8, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_BATTERY_LEVEL_CHAR:Ljava/util/UUID;

    invoke-virtual {v8, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 764
    if-eqz v4, :cond_1

    array-length v8, v4

    if-lez v8, :cond_1

    .line 765
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v8

    aget-byte v7, v8, v11

    .line 766
    .local v7, "value":I
    sget-object v8, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BatteryLevel received. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 769
    .end local v7    # "value":I
    :cond_4
    sget-object v8, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_BUTTON_NOTIF_CHAR:Ljava/util/UUID;

    invoke-virtual {v8, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 770
    if-eqz v4, :cond_1

    .line 772
    iget-object v8, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sfidaButtonDetector:Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector;

    invoke-virtual {v8, v4, v11}, Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector;->setButtonStatus([BZ)V

    .line 774
    const-string v8, "com.nianticproject.holoholo.sfida.EXTRA_DATA_RAW"

    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 775
    const-string v8, "com.nianticproject.holoholo.sfida..EXTRA_DATA_TYPE"

    invoke-virtual {v2, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 776
    invoke-virtual {p0, v2}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 779
    :cond_5
    invoke-virtual {p0, v2}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 165
    sget-object v0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    const-string v1, "onUnbind()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public readBatteryLevel()V
    .locals 3

    .prologue
    .line 700
    sget-object v1, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    const-string v2, "readBatteryLevel()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    sget-object v1, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_BATTERY_SERVICE:Ljava/util/UUID;

    sget-object v2, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_BATTERY_LEVEL_CHAR:Ljava/util/UUID;

    invoke-virtual {p0, v1, v2}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->findCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 705
    .local v0, "bleGattChar":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-eqz v0, :cond_0

    .line 706
    invoke-virtual {p0, v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 710
    :goto_0
    return-void

    .line 708
    :cond_0
    sget-object v1, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    const-string v2, "readBatteryLevel() BluetoothGattCharacteristic not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public readCertificateMessage(Ljava/util/UUID;)Z
    .locals 5
    .param p1, "characteristic"    # Ljava/util/UUID;

    .prologue
    .line 597
    sget-object v2, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    const-string v3, "readCertificateMessage()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    if-nez p1, :cond_0

    .line 600
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 603
    :cond_0
    sget-object v2, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_CERTIFICATE_SERVICE:Ljava/util/UUID;

    .line 604
    invoke-virtual {p0, v2, p1}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->findCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 606
    .local v0, "bleGattChar":Landroid/bluetooth/BluetoothGattCharacteristic;
    const/4 v1, 0x0

    .line 608
    .local v1, "result":Z
    if-eqz v0, :cond_1

    .line 609
    invoke-virtual {p0, v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v1

    .line 610
    sget-object v2, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readCertificateMessage() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :goto_0
    return v1

    .line 612
    :cond_1
    sget-object v2, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    const-string v3, "readCertificateMessage() BluetoothGattCharacteristic not found."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 2
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_1

    .line 364
    :cond_0
    sget-object v0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    const-string v1, "[BLE] BluetoothAdapter not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/4 v0, 0x0

    .line 369
    :goto_0
    return v0

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 369
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    goto :goto_0
.end method

.method public readFwVersionMessage()V
    .locals 3

    .prologue
    .line 684
    sget-object v1, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    const-string v2, "readFwVersionMessage()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    sget-object v1, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_DEVICE_CONTROL_SERVICE:Ljava/util/UUID;

    sget-object v2, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_FW_VERSION_CHAR:Ljava/util/UUID;

    invoke-virtual {p0, v1, v2}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->findCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 689
    .local v0, "bleGattChar":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-eqz v0, :cond_0

    .line 690
    invoke-virtual {p0, v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 694
    :goto_0
    return-void

    .line 692
    :cond_0
    sget-object v1, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    const-string v2, "readFwVersionMessage() BluetoothGattCharacteristic not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendCertificateMessage([B)Z
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 587
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sendCertificateMessage([BLcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;)Z

    move-result v0

    return v0
.end method

.method public sendCertificateMessage([BLcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;)Z
    .locals 5
    .param p1, "value"    # [B
    .param p2, "timeoutListener"    # Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;

    .prologue
    .line 554
    sget-object v2, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    const-string v3, "sendCertificateMessage()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    if-nez p1, :cond_0

    .line 557
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 560
    :cond_0
    sget-object v2, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendCertificateMessage() \n  value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 561
    invoke-static {p1}, Lcom/nianticproject/holoholo/sfida/SfidaUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  UUID  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_CENTRAL_TO_SFIDA_CHAR:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 560
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    sget-object v2, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_CERTIFICATE_SERVICE:Ljava/util/UUID;

    sget-object v3, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_CENTRAL_TO_SFIDA_CHAR:Ljava/util/UUID;

    invoke-virtual {p0, v2, v3}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->findCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 567
    .local v0, "bleGattChar":Landroid/bluetooth/BluetoothGattCharacteristic;
    const/4 v1, 0x0

    .line 569
    .local v1, "succeed":Z
    if-eqz v0, :cond_1

    .line 570
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 571
    invoke-virtual {p0, v0, p2}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;)Z

    move-result v1

    .line 572
    sget-object v2, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendCertificateMessage() result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :goto_0
    return v1

    .line 574
    :cond_1
    sget-object v2, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    const-string v3, "sendCertificateMessage() BluetoothGattCharacteristic not found."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendDeviceControlMessage(Ljava/util/UUID;[B)Z
    .locals 1
    .param p1, "characteristic"    # Ljava/util/UUID;
    .param p2, "value"    # [B

    .prologue
    .line 542
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sendDeviceControlMessage(Ljava/util/UUID;[BLcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;)Z

    move-result v0

    return v0
.end method

.method public sendDeviceControlMessage(Ljava/util/UUID;[BLcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;)Z
    .locals 5
    .param p1, "characteristic"    # Ljava/util/UUID;
    .param p2, "value"    # [B
    .param p3, "timeoutListener"    # Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;

    .prologue
    .line 480
    sget-object v2, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BLE] sendDeviceControlMessage() \n  value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 481
    invoke-static {p2}, Lcom/nianticproject/holoholo/sfida/SfidaUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  UUID  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 480
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    sget-object v2, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_DEVICE_CONTROL_SERVICE:Ljava/util/UUID;

    .line 485
    invoke-virtual {p0, v2, p1}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->findCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 487
    .local v0, "bleGattChar":Landroid/bluetooth/BluetoothGattCharacteristic;
    const/4 v1, 0x0

    .line 489
    .local v1, "succeed":Z
    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 491
    invoke-virtual {p0, v0, p3}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;)Z

    move-result v1

    .line 492
    sget-object v2, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendDeviceControlMessage() result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :goto_0
    return v1

    .line 494
    :cond_0
    sget-object v2, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    const-string v3, "sendDeviceControlMessage() BluetoothGattCharacteristic not found."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendDeviceControlMessage(Ljava/util/UUID;[BLcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;I)Z
    .locals 5
    .param p1, "characteristic"    # Ljava/util/UUID;
    .param p2, "value"    # [B
    .param p3, "timeoutListener"    # Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;
    .param p4, "timeout"    # I

    .prologue
    .line 512
    sget-object v2, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BLE] sendDeviceControlMessage() \n  value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 513
    invoke-static {p2}, Lcom/nianticproject/holoholo/sfida/SfidaUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  UUID  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Timeout : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 512
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    sget-object v2, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_DEVICE_CONTROL_SERVICE:Ljava/util/UUID;

    .line 518
    invoke-virtual {p0, v2, p1}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->findCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 520
    .local v0, "bleGattChar":Landroid/bluetooth/BluetoothGattCharacteristic;
    const/4 v1, 0x0

    .line 522
    .local v1, "succeed":Z
    if-eqz v0, :cond_0

    .line 523
    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 524
    invoke-virtual {p0, v0, p3, p4}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;I)Z

    move-result v1

    .line 525
    sget-object v2, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendDeviceControlMessage() result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :goto_0
    return v1

    .line 527
    :cond_0
    sget-object v2, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    const-string v3, "sendDeviceControlMessage() BluetoothGattCharacteristic not found."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendToEnableSfidaNotification(Landroid/bluetooth/BluetoothGattCharacteristic;ZLjava/util/UUID;)Z
    .locals 1
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "enabled"    # Z
    .param p3, "notificationUuid"    # Ljava/util/UUID;

    .prologue
    .line 467
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sendToEnableSfidaNotification(Landroid/bluetooth/BluetoothGattCharacteristic;ZLjava/util/UUID;Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;)Z

    move-result v0

    return v0
.end method

.method public sendToEnableSfidaNotification(Landroid/bluetooth/BluetoothGattCharacteristic;ZLjava/util/UUID;Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;)Z
    .locals 7
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "enabled"    # Z
    .param p3, "notificationUUID"    # Ljava/util/UUID;
    .param p4, "listener"    # Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;

    .prologue
    const/4 v3, 0x0

    .line 433
    iget-object v4, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v4, :cond_2

    .line 434
    :cond_0
    sget-object v4, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    const-string v5, "[BLE] BluetoothAdapter not initialized"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 462
    :cond_1
    :goto_0
    return v1

    .line 438
    :cond_2
    iget-object v4, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v4, p1, p2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v1

    .line 439
    .local v1, "succeed":Z
    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 440
    const-string v4, "00002902-0000-1000-8000-00805f9b34fb"

    .line 441
    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    .line 440
    invoke-virtual {p1, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    .line 442
    .local v0, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    sget-object v4, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 444
    sget-object v4, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " permission : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattDescriptor;->getPermissions()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v4, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v1

    .line 447
    if-eqz v1, :cond_3

    if-eqz p4, :cond_3

    .line 448
    iput-boolean v3, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->isReceivedNotifyCallback:Z

    .line 449
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->getInstance()Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;

    move-result-object v2

    .line 450
    .local v2, "watchDog":Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3, p4}, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->startWatch(Ljava/util/UUID;Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;)V

    goto :goto_0

    .line 452
    .end local v2    # "watchDog":Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;
    :cond_3
    if-nez v1, :cond_1

    .line 453
    sget-object v3, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    const-string v4, "failed writeDescriptor()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 457
    .end local v0    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    :cond_4
    if-nez v1, :cond_1

    .line 458
    sget-object v3, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    const-string v4, "failed setCharacteristicNotification()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setConnectionState(Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;)V
    .locals 3
    .param p1, "connectionState"    # Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    .prologue
    .line 235
    sget-object v0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectionState ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->connectionState:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] \u2192 ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iput-object p1, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->connectionState:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    .line 238
    return-void
.end method

.method public setIsReceivedNotifyCallback(Z)V
    .locals 0
    .param p1, "isReceivedNotifyCallback"    # Z

    .prologue
    .line 212
    iput-boolean p1, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->isReceivedNotifyCallback:Z

    .line 213
    return-void
.end method

.method public setIsReceivedWriteCallback(Z)V
    .locals 0
    .param p1, "isReceivedWriteCallback"    # Z

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->isReceivedWriteCallback:Z

    .line 221
    return-void
.end method

.method public setOnClickSfidaListener(Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 229
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sfidaButtonDetector:Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sfidaButtonDetector:Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector;

    invoke-virtual {v0, p1}, Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector;->setOnclickListener(Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$OnClickListener;)V

    .line 232
    :cond_0
    return-void
.end method

.method public writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;)Z
    .locals 4
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "listener"    # Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;

    .prologue
    .line 383
    sget-object v2, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    const-string v3, "writeCharacteristic()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v2, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    .line 385
    .local v0, "succeed":Z
    if-eqz v0, :cond_0

    .line 386
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->isReceivedWriteCallback:Z

    .line 388
    if-eqz p2, :cond_0

    .line 389
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->getInstance()Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;

    move-result-object v1

    .line 390
    .local v1, "watchDog":Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->startWatch(Ljava/util/UUID;Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;)V

    .line 394
    .end local v1    # "watchDog":Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;
    :cond_0
    return v0
.end method

.method public writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;I)Z
    .locals 4
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "listener"    # Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;
    .param p3, "timeout"    # I

    .prologue
    .line 399
    sget-object v2, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->TAG:Ljava/lang/String;

    const-string v3, "writeCharacteristic()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v2, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    .line 401
    .local v0, "succeed":Z
    if-eqz v0, :cond_0

    .line 402
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->isReceivedWriteCallback:Z

    .line 404
    if-eqz p2, :cond_0

    .line 405
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->getInstance()Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;

    move-result-object v1

    .line 406
    .local v1, "watchDog":Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->startWatch(Ljava/util/UUID;Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;I)V

    .line 410
    .end local v1    # "watchDog":Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;
    :cond_0
    return v0
.end method
