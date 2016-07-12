.class public Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;
.super Landroid/app/Fragment;
.source "SfidaFinderFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment$OnDeviceDiscoveredListener;
    }
.end annotation


# static fields
.field private static BLE_NAME:Ljava/lang/String; = null

.field private static final REQUEST_ENABLE_BT:I = 0xa

.field private static final SCAN_PERIOD:J = -0x21524111L

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private bluetoothAddressFilter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isFiltered:Z

.field private isScanningSfida:Z

.field private leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private onDeviceDiscoveredListener:Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment$OnDeviceDiscoveredListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 41
    iput-boolean v0, p0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->isScanningSfida:Z

    .line 53
    iput-boolean v0, p0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->isFiltered:Z

    .line 59
    new-instance v0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment$1;

    invoke-direct {v0, p0}, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment$1;-><init>(Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;)V

    iput-object v0, p0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->isScanningSfida:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->BLE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->isFiltered:Z

    return v0
.end method

.method static synthetic access$300(Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->isFilteredDevice(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;)Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment$OnDeviceDiscoveredListener;
    .locals 1
    .param p0, "x0"    # Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->onDeviceDiscoveredListener:Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment$OnDeviceDiscoveredListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;[B)Z
    .locals 1
    .param p0, "x0"    # Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;
    .param p1, "x1"    # [B

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->detectButtonPressed([B)Z

    move-result v0

    return v0
.end method

.method private checkBluetoothSettingEnable(Landroid/app/Activity;)Z
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 213
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.bluetooth_le"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    const-string v1, "BluetoothLE not supported."

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 217
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static createInstance()Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;
    .locals 1

    .prologue
    .line 150
    new-instance v0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;

    invoke-direct {v0}, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;-><init>()V

    return-object v0
.end method

.method private detectButtonPressed([B)Z
    .locals 3
    .param p1, "scanRecord"    # [B

    .prologue
    const/4 v0, 0x0

    .line 204
    array-length v1, p1

    const/16 v2, 0x1b

    if-le v1, v2, :cond_0

    .line 205
    const/16 v1, 0x1a

    aget-byte v1, p1, v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 207
    :cond_0
    return v0
.end method

.method private enableBt()Z
    .locals 2

    .prologue
    .line 231
    iget-object v1, p0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 232
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    .local v0, "enableBtIntent":Landroid/content/Intent;
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 234
    const/4 v1, 0x0

    .line 236
    .end local v0    # "enableBtIntent":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private init(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 223
    const-string v1, "bluetooth"

    .line 224
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 225
    .local v0, "bluetoothManager":Landroid/bluetooth/BluetoothManager;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 226
    return-void
.end method

.method private isFilteredDevice(Ljava/lang/String;)Z
    .locals 1
    .param p1, "bluetoothAddress"    # Ljava/lang/String;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->bluetoothAddressFilter:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->bluetoothAddressFilter:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scanLeDevice(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 241
    sget-object v1, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scanLeDevice() : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v0, "start scan."

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    if-eqz p1, :cond_1

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->isScanningSfida:Z

    .line 254
    sget-object v0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scanCallback : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    .line 261
    :goto_1
    return-void

    .line 241
    :cond_0
    const-string v0, "cancel scan."

    goto :goto_0

    .line 257
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->isScanningSfida:Z

    .line 258
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 259
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    goto :goto_1
.end method


# virtual methods
.method public cancelFindSfida()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->scanLeDevice(Z)V

    .line 193
    return-void
.end method

.method public executeFindSfida()V
    .locals 1

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->enableBt()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->isScanningSfida:Z

    if-nez v0, :cond_0

    .line 181
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->scanLeDevice(Z)V

    .line 183
    :cond_0
    return-void
.end method

.method public executeFindSfida(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, "bluetoothAddressList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->bluetoothAddressFilter:Ljava/util/List;

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->isFiltered:Z

    .line 188
    invoke-virtual {p0}, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->executeFindSfida()V

    .line 189
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 102
    sget-object v0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment$2;->$SwitchMap$com$nianticproject$holoholo$sfida$constants$SfidaConstants$SfidaVersion:[I

    sget-object v1, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants;->SFIDA_VERSION:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;

    invoke-virtual {v1}, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 118
    :goto_0
    invoke-direct {p0, p1}, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->checkBluetoothSettingEnable(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    :goto_1
    return-void

    .line 104
    :pswitch_0
    const-string v0, "SFIDA"

    sput-object v0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->BLE_NAME:Ljava/lang/String;

    goto :goto_0

    .line 107
    :pswitch_1
    const-string v0, "EBISU"

    sput-object v0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->BLE_NAME:Ljava/lang/String;

    goto :goto_0

    .line 110
    :pswitch_2
    const-string v0, "EBISU"

    sput-object v0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->BLE_NAME:Ljava/lang/String;

    goto :goto_0

    .line 113
    :pswitch_3
    const-string v0, "Pokemon GO Plus"

    sput-object v0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->BLE_NAME:Ljava/lang/String;

    goto :goto_0

    .line 122
    :cond_0
    invoke-direct {p0, p1}, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->init(Landroid/app/Activity;)V

    goto :goto_1

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 140
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 141
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->bluetoothAddressFilter:Ljava/util/List;

    .line 147
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 133
    sget-object v0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->scanLeDevice(Z)V

    .line 136
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 127
    sget-object v0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 129
    return-void
.end method

.method public setOnDeviceDiscoveredListener(Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment$OnDeviceDiscoveredListener;)V
    .locals 0
    .param p1, "onDeviceDiscoveredListener"    # Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment$OnDeviceDiscoveredListener;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->onDeviceDiscoveredListener:Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment$OnDeviceDiscoveredListener;

    .line 155
    return-void
.end method

.method public setSfidaVersion(Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;)V
    .locals 2
    .param p1, "version"    # Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;

    .prologue
    .line 159
    sput-object p1, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants;->SFIDA_VERSION:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;

    .line 161
    sget-object v0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment$2;->$SwitchMap$com$nianticproject$holoholo$sfida$constants$SfidaConstants$SfidaVersion:[I

    invoke-virtual {p1}, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 176
    :goto_0
    return-void

    .line 163
    :pswitch_0
    const-string v0, "SFIDA"

    sput-object v0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->BLE_NAME:Ljava/lang/String;

    goto :goto_0

    .line 166
    :pswitch_1
    const-string v0, "EBISU"

    sput-object v0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->BLE_NAME:Ljava/lang/String;

    goto :goto_0

    .line 169
    :pswitch_2
    const-string v0, "EBISU"

    sput-object v0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->BLE_NAME:Ljava/lang/String;

    goto :goto_0

    .line 172
    :pswitch_3
    const-string v0, "Pokemon GO Plus"

    sput-object v0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->BLE_NAME:Ljava/lang/String;

    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
