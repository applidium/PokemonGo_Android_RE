.class public Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;
.super Ljava/lang/Object;
.source "SfidaController.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance_:Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;


# instance fields
.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final context:Landroid/content/Context;

.field private leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private sfidaDevice:Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController$1;

    invoke-direct {v0, p0}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController$1;-><init>(Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;)V

    iput-object v0, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 43
    iput-object p1, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;->context:Landroid/content/Context;

    .line 44
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;)Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;
    .locals 1
    .param p0, "x0"    # Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;->sfidaDevice:Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;

    return-object v0
.end method

.method static synthetic access$102(Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;)Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;
    .locals 0
    .param p0, "x0"    # Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;
    .param p1, "x1"    # Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;->sfidaDevice:Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;

    return-object p1
.end method

.method static synthetic access$200(Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    sget-object v0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;->instance_:Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;

    invoke-direct {v0, p0}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;->instance_:Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;

    .line 97
    :cond_0
    sget-object v0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;->instance_:Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;

    return-object v0
.end method


# virtual methods
.method public getSfidaDevice()Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;->sfidaDevice:Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;

    return-object v0
.end method

.method public init()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 52
    sget-object v2, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;->TAG:Ljava/lang/String;

    const-string v3, "Initialize SfidaController.."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v2, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;->context:Landroid/content/Context;

    const-string v3, "bluetooth"

    .line 54
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 55
    .local v0, "manager":Landroid/bluetooth/BluetoothManager;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 56
    iget-object v2, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_0

    .line 57
    sget-object v2, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;->TAG:Ljava/lang/String;

    const-string v3, "No Bluetooth available."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :goto_0
    return v1

    .line 61
    :cond_0
    iget-object v2, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 62
    sget-object v2, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;->TAG:Ljava/lang/String;

    const-string v3, "Bluetooth disabled."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 66
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public startScan()V
    .locals 2

    .prologue
    .line 73
    sget-object v0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;->TAG:Ljava/lang/String;

    const-string v1, "Start bluetooth device scan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    .line 75
    return-void
.end method

.method public stopScan()V
    .locals 2

    .prologue
    .line 81
    sget-object v0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;->TAG:Ljava/lang/String;

    const-string v1, "Stop bluetooth device scan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaController;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 83
    return-void
.end method
