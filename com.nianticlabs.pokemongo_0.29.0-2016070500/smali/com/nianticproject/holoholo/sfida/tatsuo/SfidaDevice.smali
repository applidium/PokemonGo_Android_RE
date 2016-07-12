.class public Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;
.super Ljava/lang/Object;
.source "SfidaDevice.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private final bluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private buttonPresses:[I

.field private connectionState:I

.field private context:Landroid/content/Context;

.field private device:Landroid/bluetooth/BluetoothDevice;

.field private service:Landroid/bluetooth/BluetoothGattService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->connectionState:I

    .line 35
    new-instance v0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$1;

    invoke-direct {v0, p0}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$1;-><init>(Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;)V

    iput-object v0, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->bluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 109
    iput-object p1, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->context:Landroid/content/Context;

    .line 110
    iput-object p2, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->device:Landroid/bluetooth/BluetoothDevice;

    .line 111
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;I)I
    .locals 0
    .param p0, "x0"    # Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->connectionState:I

    return p1
.end method

.method static synthetic access$200(Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;)Landroid/bluetooth/BluetoothGatt;
    .locals 1
    .param p0, "x0"    # Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method static synthetic access$202(Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;
    .locals 0
    .param p0, "x0"    # Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object p1
.end method

.method static synthetic access$300(Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;)Landroid/bluetooth/BluetoothGattService;
    .locals 1
    .param p0, "x0"    # Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->service:Landroid/bluetooth/BluetoothGattService;

    return-object v0
.end method

.method static synthetic access$302(Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/BluetoothGattService;
    .locals 0
    .param p0, "x0"    # Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothGattService;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->service:Landroid/bluetooth/BluetoothGattService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;)[I
    .locals 1
    .param p0, "x0"    # Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->buttonPresses:[I

    return-object v0
.end method

.method static synthetic access$402(Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;[I)[I
    .locals 0
    .param p0, "x0"    # Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;
    .param p1, "x1"    # [I

    .prologue
    .line 25
    iput-object p1, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->buttonPresses:[I

    return-object p1
.end method

.method private read(Ljava/util/UUID;)[B
    .locals 4
    .param p1, "charUuid"    # Ljava/util/UUID;

    .prologue
    const/4 v1, 0x0

    .line 254
    iget-object v2, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->service:Landroid/bluetooth/BluetoothGattService;

    if-nez v2, :cond_0

    .line 255
    sget-object v2, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->TAG:Ljava/lang/String;

    const-string v3, "No SFIDA Service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :goto_0
    return-object v1

    .line 259
    :cond_0
    iget-object v2, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->service:Landroid/bluetooth/BluetoothGattService;

    .line 260
    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 261
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v0, :cond_1

    .line 262
    sget-object v2, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->TAG:Ljava/lang/String;

    const-string v3, "Characteristic not found: SFIDA_LED_VIBR_CTRL_CHAR"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 265
    :cond_1
    iget-object v1, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 266
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    goto :goto_0
.end method

.method private write(Ljava/util/UUID;[B)V
    .locals 3
    .param p1, "charUuid"    # Ljava/util/UUID;
    .param p2, "data"    # [B

    .prologue
    .line 270
    iget-object v1, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->service:Landroid/bluetooth/BluetoothGattService;

    if-nez v1, :cond_0

    .line 271
    sget-object v1, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->TAG:Ljava/lang/String;

    const-string v2, "No SFIDA Service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->service:Landroid/bluetooth/BluetoothGattService;

    .line 276
    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 277
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v0, :cond_1

    .line 278
    sget-object v1, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->TAG:Ljava/lang/String;

    const-string v2, "Characteristic not found: SFIDA_LED_VIBR_CTRL_CHAR"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 281
    :cond_1
    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 282
    iget-object v1, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto :goto_0
.end method


# virtual methods
.method public connect()V
    .locals 4

    .prologue
    .line 117
    sget-object v0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->TAG:Ljava/lang/String;

    const-string v1, "Connect to the GATT server"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->device:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->context:Landroid/content/Context;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->bluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 122
    :cond_0
    return-void
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 246
    sget-object v1, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaUUID;->SFIDA_FW_VERSION:Ljava/util/UUID;

    invoke-direct {p0, v1}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->read(Ljava/util/UUID;)[B

    move-result-object v0

    .line 247
    .local v0, "data":[B
    if-eqz v0, :cond_0

    .line 248
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 250
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "Unknown"

    goto :goto_0
.end method

.method public hasGattService()Z
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->service:Landroid/bluetooth/BluetoothGattService;

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->TAG:Ljava/lang/String;

    const-string v1, "GATT hasGattService returns true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->service:Landroid/bluetooth/BluetoothGattService;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public play(I)V
    .locals 7
    .param p1, "pattern"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v4, 0x2710

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->buttonPresses:[I

    .line 158
    const/high16 v1, 0xff0000

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v5, 0x3e8

    move-object v0, p0

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->playFlash(IIIIII)V

    .line 159
    return-void
.end method

.method public play(IIII)V
    .locals 3
    .param p1, "rgb"    # I
    .param p2, "level"    # I
    .param p3, "timeMs"    # I
    .param p4, "listenMS"    # I

    .prologue
    const/4 v2, 0x0

    .line 170
    iput-object v2, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->buttonPresses:[I

    .line 172
    new-instance v1, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;

    invoke-direct {v1, v2}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;-><init>(Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$1;)V

    const/4 v2, 0x1

    .line 173
    invoke-virtual {v1, v2}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;->setPriority(I)Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;

    move-result-object v1

    .line 174
    invoke-virtual {v1, p4}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;->setInputReadTimeMs(I)Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;

    move-result-object v1

    const/4 v2, 0x0

    .line 175
    invoke-virtual {v1, p3, p1, p2, v2}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;->addFlash(IIIZ)Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;

    move-result-object v1

    .line 176
    invoke-virtual {v1}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;->build()[B

    move-result-object v0

    .line 177
    .local v0, "data":[B
    sget-object v1, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaUUID;->SFIDA_LED_VIBR_CTRL_CHAR_UUID:Ljava/util/UUID;

    invoke-direct {p0, v1, v0}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->write(Ljava/util/UUID;[B)V

    .line 178
    return-void
.end method

.method public playFlash(IIIIII)V
    .locals 6
    .param p1, "rgb1"    # I
    .param p2, "rgb2"    # I
    .param p3, "level"    # I
    .param p4, "timeMs"    # I
    .param p5, "timeFlashMs"    # I
    .param p6, "listenMS"    # I

    .prologue
    const/4 v5, 0x0

    .line 191
    div-int v1, p4, p5

    .line 193
    .local v1, "count":I
    const/16 v4, 0x1e

    if-le v1, v4, :cond_0

    .line 194
    div-int/lit8 p5, p4, 0x1e

    .line 195
    const/16 v1, 0x1e

    .line 198
    :cond_0
    new-instance v0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;-><init>(Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$1;)V

    .line 199
    .local v0, "builder":Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;->setPriority(I)Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;

    .line 200
    invoke-virtual {v0, p6}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;->setInputReadTimeMs(I)Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;

    .line 201
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    div-int/lit8 v4, v1, 0x2

    if-ge v3, v4, :cond_1

    .line 202
    invoke-virtual {v0, p5, p1, p3, v5}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;->addFlash(IIIZ)Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;

    .line 203
    invoke-virtual {v0, p5, p2, v5, v5}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;->addFlash(IIIZ)Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;

    .line 201
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {v0}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;->build()[B

    move-result-object v2

    .line 206
    .local v2, "data":[B
    sget-object v4, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaUUID;->SFIDA_LED_VIBR_CTRL_CHAR_UUID:Ljava/util/UUID;

    invoke-direct {p0, v4, v2}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->write(Ljava/util/UUID;[B)V

    .line 207
    return-void
.end method

.method public playPattern(II[IIII)V
    .locals 5
    .param p1, "rgb"    # I
    .param p2, "level"    # I
    .param p3, "patternMs"    # [I
    .param p4, "patternCnt"    # I
    .param p5, "offTimeMs"    # I
    .param p6, "listenMS"    # I

    .prologue
    const/4 v4, 0x0

    .line 221
    new-instance v0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;-><init>(Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$1;)V

    .line 222
    .local v0, "builder":Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;->setPriority(I)Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;

    .line 223
    invoke-virtual {v0, p6}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;->setInputReadTimeMs(I)Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;

    .line 224
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p4, :cond_0

    .line 225
    aget v3, p3, v2

    invoke-virtual {v0, v3, p1, p2, v4}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;->addFlash(IIIZ)Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;

    .line 226
    invoke-virtual {v0, p5, v4, v4, v4}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;->addFlash(IIIZ)Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {v0}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;->build()[B

    move-result-object v1

    .line 229
    .local v1, "data":[B
    sget-object v3, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaUUID;->SFIDA_LED_VIBR_CTRL_CHAR_UUID:Ljava/util/UUID;

    invoke-direct {p0, v3, v1}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->write(Ljava/util/UUID;[B)V

    .line 230
    return-void
.end method

.method public readButtonPresses()[I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 139
    iget-object v1, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->buttonPresses:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->buttonPresses:[I

    array-length v1, v1

    if-lez v1, :cond_0

    .line 140
    sget-object v1, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->TAG:Ljava/lang/String;

    const-string v2, "SFIDA readButtonPresses %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->buttonPresses:[I

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->buttonPresses:[I

    .line 142
    .local v0, "values":[I
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->buttonPresses:[I

    .line 146
    .end local v0    # "values":[I
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v5, [I

    goto :goto_0
.end method

.method public stop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 238
    new-instance v1, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;-><init>(Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$1;)V

    const/4 v2, 0x7

    .line 239
    invoke-virtual {v1, v2}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;->setPriority(I)Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;

    move-result-object v1

    const/16 v2, 0x64

    const/16 v3, 0xff

    .line 240
    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;->addFlash(IIIZ)Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;

    move-result-object v1

    .line 241
    invoke-virtual {v1}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;->build()[B

    move-result-object v0

    .line 242
    .local v0, "data":[B
    sget-object v1, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaUUID;->SFIDA_LED_VIBR_CTRL_CHAR_UUID:Ljava/util/UUID;

    invoke-direct {p0, v1, v0}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;->write(Ljava/util/UUID;[B)V

    .line 243
    return-void
.end method
