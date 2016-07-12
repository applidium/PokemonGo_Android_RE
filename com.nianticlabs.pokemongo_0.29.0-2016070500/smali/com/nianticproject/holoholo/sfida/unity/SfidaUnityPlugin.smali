.class public Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;
.super Ljava/lang/Object;
.source "SfidaUnityPlugin.java"

# interfaces
.implements Lcom/nianticproject/holoholo/sfida/unity/UnityInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$PeriodicVibrateRunnable;,
        Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$SfidaDiscoveredListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TIMEOUT:I = 0x320

.field private static final UNITY_GAME_OBJECT:Ljava/lang/String; = "AndroidSfidaConnection"

.field private static final UNITY_METHOD_ENTER_ENCOUNTER_STATE:Ljava/lang/String; = "EnterEncounterState"

.field private static final UNITY_METHOD_HACK_POKESTOP:Ljava/lang/String; = "HackPokestop"

.field private static final UNITY_METHOD_NOTIFY_CONNECTED:Ljava/lang/String; = "OnSfidaConnected"

.field private static final UNITY_METHOD_NOTIFY_DISCONNECTED:Ljava/lang/String; = "OnSfidaDisconnected"

.field private static final UNITY_METHOD_THROW_POKEBALL:Ljava/lang/String; = "ThrowPokeball"

.field private static instance:Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;


# instance fields
.field private activity:Landroid/app/Activity;

.field private device:Landroid/bluetooth/BluetoothDevice;

.field private gattUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private handler:Landroid/os/Handler;

.field private isReceiverRegistered:Z

.field private isServiceBound:Z

.field private isSfidaConnected:Z

.field private runnable:Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$PeriodicVibrateRunnable;

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->TAG:Ljava/lang/String;

    .line 53
    new-instance v0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;

    invoke-direct {v0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;-><init>()V

    sput-object v0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->instance:Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->isServiceBound:Z

    .line 65
    iput-boolean v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->isReceiverRegistered:Z

    .line 77
    iput-boolean v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->isSfidaConnected:Z

    .line 81
    new-instance v0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$1;

    invoke-direct {v0, p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$1;-><init>(Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;)V

    iput-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->serviceConnection:Landroid/content/ServiceConnection;

    .line 106
    new-instance v0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$2;

    invoke-direct {v0, p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$2;-><init>(Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;)V

    iput-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->gattUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 117
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;)Lcom/nianticproject/holoholo/sfida/service/SfidaService;
    .locals 1
    .param p0, "x0"    # Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;Lcom/nianticproject/holoholo/sfida/service/SfidaService;)Lcom/nianticproject/holoholo/sfida/service/SfidaService;
    .locals 0
    .param p0, "x0"    # Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;
    .param p1, "x1"    # Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->device:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$302(Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->isServiceBound:Z

    return p1
.end method

.method static synthetic access$400(Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->onBroadcastUpdated(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->stopScanSfida()V

    return-void
.end method

.method static synthetic access$800(Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->startSfidaConnection(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private addSfidaFinderFragment()V
    .locals 3

    .prologue
    .line 599
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->createInstance()Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;

    move-result-object v0

    .line 600
    .local v0, "fragment":Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;
    new-instance v1, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$SfidaDiscoveredListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$SfidaDiscoveredListener;-><init>(Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$1;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->setOnDeviceDiscoveredListener(Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment$OnDeviceDiscoveredListener;)V

    .line 601
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-class v2, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;

    .line 602
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 603
    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->activity:Landroid/app/Activity;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    goto :goto_0
.end method

.method private getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 630
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 631
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->instance:Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;

    return-object v0
.end method

.method private getSfidaFinderFragment()Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;
    .locals 2

    .prologue
    .line 620
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;

    .line 621
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;

    return-object v0
.end method

.method private isEnableSfida()Z
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->isSfidaConnected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeGattUpdateIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 639
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 642
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.nianticproject.holoholo.sfida.ACTION_GATT_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 643
    const-string v1, "com.nianticproject.holoholo.sfida.ACTION_GATT_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 644
    const-string v1, "com.nianticproject.holoholo.sfida.ACTION_DATA_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 645
    const-string v1, "com.nianticproject.holoholo.sfida.ACTION_CERTIFICATE_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 648
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 650
    return-object v0
.end method

.method private notifyPokeballBrokenOneShakeThree()Z
    .locals 3

    .prologue
    .line 584
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->isEnableSfida()Z

    move-result v0

    if-nez v0, :cond_0

    .line 585
    const/4 v0, 0x0

    .line 589
    :goto_0
    return v0

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->setOnClickSfidaListener(Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$OnClickListener;)V

    .line 589
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    sget-object v1, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_LED_VIBRATE_CTRL_CHAR:Ljava/util/UUID;

    .line 591
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->getPokeballShakeThree()[B

    move-result-object v2

    .line 589
    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sendDeviceControlMessage(Ljava/util/UUID;[B)Z

    move-result v0

    goto :goto_0
.end method

.method private notifyPokeballBrokenShakeOnce()Z
    .locals 3

    .prologue
    .line 560
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->isEnableSfida()Z

    move-result v0

    if-nez v0, :cond_0

    .line 561
    const/4 v0, 0x0

    .line 565
    :goto_0
    return v0

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->setOnClickSfidaListener(Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$OnClickListener;)V

    .line 565
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    sget-object v1, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_LED_VIBRATE_CTRL_CHAR:Ljava/util/UUID;

    .line 567
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->getPokeballShakeOnce()[B

    move-result-object v2

    .line 565
    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sendDeviceControlMessage(Ljava/util/UUID;[B)Z

    move-result v0

    goto :goto_0
.end method

.method private notifyPokeballBrokenShakeTwice()Z
    .locals 3

    .prologue
    .line 572
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->isEnableSfida()Z

    move-result v0

    if-nez v0, :cond_0

    .line 573
    const/4 v0, 0x0

    .line 577
    :goto_0
    return v0

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->setOnClickSfidaListener(Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$OnClickListener;)V

    .line 577
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    sget-object v1, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_LED_VIBRATE_CTRL_CHAR:Ljava/util/UUID;

    .line 579
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->getPokeballShakeTwice()[B

    move-result-object v2

    .line 577
    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sendDeviceControlMessage(Ljava/util/UUID;[B)Z

    move-result v0

    goto :goto_0
.end method

.method private onBroadcastUpdated(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 655
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 656
    .local v0, "action":Ljava/lang/String;
    sget-object v6, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onBroadcastUpdated() "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const/4 v6, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v6, :pswitch_data_0

    .line 732
    :goto_1
    return-void

    .line 658
    :sswitch_0
    const-string v9, "com.nianticproject.holoholo.sfida.ACTION_GATT_CONNECTED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v6, v7

    goto :goto_0

    :sswitch_1
    const-string v9, "com.nianticproject.holoholo.sfida.ACTION_GATT_DISCONNECTED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v6, v8

    goto :goto_0

    :sswitch_2
    const-string v9, "com.nianticproject.holoholo.sfida.ACTION_CERTIFICATE_COMPLETE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v6, 0x2

    goto :goto_0

    :sswitch_3
    const-string v9, "com.nianticproject.holoholo.sfida.ACTION_DATA_AVAILABLE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v6, 0x3

    goto :goto_0

    :sswitch_4
    const-string v9, "com.nianticproject.holoholo.sfida.ACTION_CREATE_BOND"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :sswitch_5
    const-string v9, "com.nianticproject.holoholo.sfida.ACTION_BOND_CANCELED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v6, 0x5

    goto :goto_0

    .line 660
    :pswitch_0
    iput-boolean v8, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->isSfidaConnected:Z

    goto :goto_1

    .line 664
    :pswitch_1
    iput-boolean v7, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->isSfidaConnected:Z

    .line 667
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "PokemonGoPlus disconnected"

    .line 666
    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 669
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 671
    const-string v6, "AndroidSfidaConnection"

    const-string v7, "OnSfidaDisconnected"

    const-string v8, ""

    invoke-static {v6, v7, v8}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 681
    :pswitch_2
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v8, "Pok\u00e9mon GO Plus connected."

    .line 680
    invoke-static {v6, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 683
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 686
    const-string v6, "AndroidSfidaConnection"

    const-string v7, "OnSfidaConnected"

    const-string v8, ""

    invoke-static {v6, v7, v8}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 695
    :pswitch_3
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 696
    .local v1, "args":Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 697
    sget-object v6, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->TAG:Ljava/lang/String;

    const-string v7, "ops!"

    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 702
    :cond_1
    const-string v6, "com.nianticproject.holoholo.sfida..EXTRA_DATA_TYPE"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/UUID;

    .line 704
    .local v3, "characteristicUUID":Ljava/util/UUID;
    if-nez v3, :cond_2

    .line 705
    sget-object v6, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->TAG:Ljava/lang/String;

    const-string v7, "characteristicUUID is Null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 709
    :cond_2
    sget-object v6, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_FW_VERSION_CHAR:Ljava/util/UUID;

    invoke-virtual {v3, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 710
    const-string v6, "com.nianticproject.holoholo.sfida.EXTRA_DATA_RAW"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 711
    .local v5, "str":Ljava/lang/String;
    sget-object v6, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SFIDA Version : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 714
    .end local v5    # "str":Ljava/lang/String;
    :cond_3
    const-string v6, "com.nianticproject.holoholo.sfida.EXTRA_DATA_RAW"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 715
    .local v2, "byteArray":[B
    invoke-static {v2}, Lcom/nianticproject/holoholo/sfida/SfidaUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v4

    .line 716
    .local v4, "rawString":Ljava/lang/String;
    sget-object v6, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[BLE] raw data "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 722
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v2    # "byteArray":[B
    .end local v3    # "characteristicUUID":Ljava/util/UUID;
    .end local v4    # "rawString":Ljava/lang/String;
    :pswitch_4
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "Pairing...\nClick Plus again."

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 727
    :pswitch_5
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "Canceled pairing. Retry or refresh Pok\u00e9mon GO Plus connection."

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 658
    :sswitch_data_0
    .sparse-switch
        -0x5b87ee7a -> :sswitch_0
        -0x5438d982 -> :sswitch_1
        -0x187db96d -> :sswitch_5
        -0x1752f7ea -> :sswitch_3
        -0x12029c5c -> :sswitch_4
        0x2f14f143 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private readFwVersion()V
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    invoke-virtual {v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->readFwVersionMessage()V

    .line 748
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 625
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->gattUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->makeGattUpdateIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 626
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->isReceiverRegistered:Z

    .line 627
    return-void
.end method

.method private startScanSfida()V
    .locals 1

    .prologue
    .line 606
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->getSfidaFinderFragment()Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;

    move-result-object v0

    .line 607
    .local v0, "fragment":Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;
    if-eqz v0, :cond_0

    .line 608
    invoke-virtual {v0}, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->executeFindSfida()V

    .line 610
    :cond_0
    return-void
.end method

.method private startSfidaConnection(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 735
    iput-object p1, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->device:Landroid/bluetooth/BluetoothDevice;

    .line 737
    iget-boolean v1, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->isServiceBound:Z

    if-eqz v1, :cond_0

    .line 738
    iget-object v1, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    invoke-virtual {v1, p1}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 744
    :goto_0
    return-void

    .line 740
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 741
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 742
    .local v0, "gattServiceIntent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method

.method private stopScanSfida()V
    .locals 1

    .prologue
    .line 613
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->getSfidaFinderFragment()Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;

    move-result-object v0

    .line 614
    .local v0, "fragment":Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;
    if-eqz v0, :cond_0

    .line 615
    invoke-virtual {v0}, Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment;->cancelFindSfida()V

    .line 617
    :cond_0
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 2

    .prologue
    .line 156
    sget-object v0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->TAG:Ljava/lang/String;

    const-string v1, "connect()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$3;

    invoke-direct {v1, p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$3;-><init>(Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 169
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->startScanSfida()V

    .line 170
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 176
    sget-object v0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->TAG:Ljava/lang/String;

    const-string v1, "disconnect()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->isSfidaConnected:Z

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    invoke-virtual {v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->disconnectBluetooth()Z

    .line 181
    :cond_0
    return-void
.end method

.method public init()Z
    .locals 2

    .prologue
    .line 132
    sget-object v0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->TAG:Ljava/lang/String;

    const-string v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->addSfidaFinderFragment()V

    .line 135
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->registerReceiver()V

    .line 136
    const/4 v0, 0x1

    .line 138
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyCancel()Z
    .locals 3

    .prologue
    .line 505
    sget-object v0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->TAG:Ljava/lang/String;

    const-string v1, "notifyCancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->isEnableSfida()Z

    move-result v0

    if-nez v0, :cond_0

    .line 508
    const/4 v0, 0x0

    .line 512
    :goto_0
    return v0

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->setOnClickSfidaListener(Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$OnClickListener;)V

    .line 512
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    sget-object v1, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_LED_VIBRATE_CTRL_CHAR:Ljava/util/UUID;

    .line 514
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->getCancelPattern()[B

    move-result-object v2

    .line 512
    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sendDeviceControlMessage(Ljava/util/UUID;[B)Z

    move-result v0

    goto :goto_0
.end method

.method public notifyCancelDowser()Z
    .locals 3

    .prologue
    .line 436
    sget-object v0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->TAG:Ljava/lang/String;

    const-string v1, "notifyCancelDowser()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->isEnableSfida()Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    const/4 v0, 0x0

    .line 443
    :goto_0
    return v0

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->setOnClickSfidaListener(Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$OnClickListener;)V

    .line 443
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    sget-object v1, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_LED_VIBRATE_CTRL_CHAR:Ljava/util/UUID;

    .line 445
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->getDowserCancel()[B

    move-result-object v2

    .line 443
    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sendDeviceControlMessage(Ljava/util/UUID;[B)Z

    move-result v0

    goto :goto_0
.end method

.method public notifyError()Z
    .locals 3

    .prologue
    .line 523
    sget-object v0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->TAG:Ljava/lang/String;

    const-string v1, "notifyError()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->isEnableSfida()Z

    move-result v0

    if-nez v0, :cond_0

    .line 526
    const/4 v0, 0x0

    .line 530
    :goto_0
    return v0

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->setOnClickSfidaListener(Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$OnClickListener;)V

    .line 530
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    sget-object v1, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_LED_VIBRATE_CTRL_CHAR:Ljava/util/UUID;

    .line 532
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->getError()[B

    move-result-object v2

    .line 530
    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sendDeviceControlMessage(Ljava/util/UUID;[B)Z

    move-result v0

    goto :goto_0
.end method

.method public notifyFoundDowser()Z
    .locals 3

    .prologue
    .line 449
    sget-object v0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->TAG:Ljava/lang/String;

    const-string v1, "notifyFoundDowser()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->isEnableSfida()Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    const/4 v0, 0x0

    .line 456
    :goto_0
    return v0

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->setOnClickSfidaListener(Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$OnClickListener;)V

    .line 456
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    sget-object v1, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_LED_VIBRATE_CTRL_CHAR:Ljava/util/UUID;

    .line 458
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->getDowserVisible()[B

    move-result-object v2

    .line 456
    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sendDeviceControlMessage(Ljava/util/UUID;[B)Z

    move-result v0

    goto :goto_0
.end method

.method public notifyNoPokeball()Z
    .locals 3

    .prologue
    .line 377
    sget-object v0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->TAG:Ljava/lang/String;

    const-string v1, "notifyNoPokeball()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->isEnableSfida()Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    const/4 v0, 0x0

    .line 383
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    sget-object v1, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_LED_VIBRATE_CTRL_CHAR:Ljava/util/UUID;

    .line 385
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->getNoPokeball()[B

    move-result-object v2

    .line 383
    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sendDeviceControlMessage(Ljava/util/UUID;[B)Z

    move-result v0

    goto :goto_0
.end method

.method public notifyPokeballShakeAndBroken(Ljava/lang/String;)Z
    .locals 5
    .param p1, "shakeCount"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 462
    sget-object v2, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyPokeballShakeAndBroken() shakeCount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->isEnableSfida()Z

    move-result v2

    if-nez v2, :cond_0

    .line 481
    :goto_0
    return v1

    .line 468
    :cond_0
    iget-object v2, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->setOnClickSfidaListener(Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$OnClickListener;)V

    .line 470
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 471
    .local v0, "count":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 473
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 475
    :pswitch_1
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->notifyPokeballBrokenShakeOnce()Z

    move-result v1

    goto :goto_0

    .line 477
    :pswitch_2
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->notifyPokeballBrokenShakeTwice()Z

    move-result v1

    goto :goto_0

    .line 479
    :pswitch_3
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->notifyPokeballBrokenOneShakeThree()Z

    move-result v1

    goto :goto_0

    .line 471
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public notifyPokemonCaught()Z
    .locals 3

    .prologue
    .line 487
    sget-object v0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->TAG:Ljava/lang/String;

    const-string v1, "notifyPokemonCaught()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->isEnableSfida()Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    const/4 v0, 0x0

    .line 494
    :goto_0
    return v0

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->setOnClickSfidaListener(Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$OnClickListener;)V

    .line 494
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    sget-object v1, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_LED_VIBRATE_CTRL_CHAR:Ljava/util/UUID;

    .line 496
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->getPokemonCaught()[B

    move-result-object v2

    .line 494
    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sendDeviceControlMessage(Ljava/util/UUID;[B)Z

    move-result v0

    goto :goto_0
.end method

.method public notifyProximityDowser(Ljava/lang/String;)Z
    .locals 5
    .param p1, "proximityLevel"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 402
    sget-object v3, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->TAG:Ljava/lang/String;

    const-string v4, "notifyProximityDowser()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->isEnableSfida()Z

    move-result v3

    if-nez v3, :cond_0

    .line 430
    :goto_0
    return v2

    .line 408
    :cond_0
    iget-object v3, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->setOnClickSfidaListener(Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$OnClickListener;)V

    .line 409
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 411
    .local v0, "level":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 413
    :pswitch_0
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->getDowserProximity1()[B

    move-result-object v1

    .line 430
    .local v1, "pattern":[B
    :goto_1
    iget-object v2, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    sget-object v3, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_LED_VIBRATE_CTRL_CHAR:Ljava/util/UUID;

    invoke-virtual {v2, v3, v1}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sendDeviceControlMessage(Ljava/util/UUID;[B)Z

    move-result v2

    goto :goto_0

    .line 416
    .end local v1    # "pattern":[B
    :pswitch_1
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->getDowserProximity2()[B

    move-result-object v1

    .line 417
    .restart local v1    # "pattern":[B
    goto :goto_1

    .line 419
    .end local v1    # "pattern":[B
    :pswitch_2
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->getDowserProximity3()[B

    move-result-object v1

    .line 420
    .restart local v1    # "pattern":[B
    goto :goto_1

    .line 422
    .end local v1    # "pattern":[B
    :pswitch_3
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->getDowserProximity4()[B

    move-result-object v1

    .line 423
    .restart local v1    # "pattern":[B
    goto :goto_1

    .line 425
    .end local v1    # "pattern":[B
    :pswitch_4
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->getDowserProximity5()[B

    move-result-object v1

    .line 426
    .restart local v1    # "pattern":[B
    goto :goto_1

    .line 411
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public notifyReachedPokestop(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pokestopId"    # Ljava/lang/String;

    .prologue
    .line 214
    sget-object v0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyReachedPokestop() id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->isEnableSfida()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    const/4 v0, 0x0

    .line 232
    :goto_0
    return v0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    new-instance v1, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$4;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$4;-><init>(Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->setOnClickSfidaListener(Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$OnClickListener;)V

    .line 232
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    sget-object v1, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_LED_VIBRATE_CTRL_CHAR:Ljava/util/UUID;

    .line 234
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->getReachedPokestop()[B

    move-result-object v2

    .line 232
    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sendDeviceControlMessage(Ljava/util/UUID;[B)Z

    move-result v0

    goto :goto_0
.end method

.method public notifyReadyForThrowPokeball(Ljava/lang/String;)Z
    .locals 3
    .param p1, "ballType"    # Ljava/lang/String;

    .prologue
    .line 340
    sget-object v0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyReadyForThrowPokeball() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->isEnableSfida()Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    const/4 v0, 0x0

    .line 371
    :goto_0
    return v0

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    new-instance v1, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$8;

    invoke-direct {v1, p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$8;-><init>(Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->setOnClickSfidaListener(Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$OnClickListener;)V

    .line 371
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    sget-object v1, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_LED_VIBRATE_CTRL_CHAR:Ljava/util/UUID;

    .line 373
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->getReadyForThrowPokeball()[B

    move-result-object v2

    .line 371
    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sendDeviceControlMessage(Ljava/util/UUID;[B)Z

    move-result v0

    goto :goto_0
.end method

.method public notifyRewardItems(Ljava/lang/String;)Z
    .locals 3
    .param p1, "itemCount"    # Ljava/lang/String;

    .prologue
    .line 241
    sget-object v0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyRewardItems() count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->isEnableSfida()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    const/4 v0, 0x0

    .line 247
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    sget-object v1, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_LED_VIBRATE_CTRL_CHAR:Ljava/util/UUID;

    .line 249
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->getRewardItems(I)[B

    move-result-object v2

    .line 247
    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sendDeviceControlMessage(Ljava/util/UUID;[B)Z

    move-result v0

    goto :goto_0
.end method

.method public notifySpawnedLegendaryPokemon(Ljava/lang/String;)Z
    .locals 3
    .param p1, "encounterId"    # Ljava/lang/String;

    .prologue
    .line 316
    sget-object v0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySpawnedLegendaryPokemon() id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->isEnableSfida()Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    const/4 v0, 0x0

    .line 334
    :goto_0
    return v0

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    new-instance v1, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$7;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$7;-><init>(Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->setOnClickSfidaListener(Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$OnClickListener;)V

    .line 334
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    sget-object v1, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_LED_VIBRATE_CTRL_CHAR:Ljava/util/UUID;

    .line 336
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->getSpawnedLegendaryPokemon()[B

    move-result-object v2

    .line 334
    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sendDeviceControlMessage(Ljava/util/UUID;[B)Z

    move-result v0

    goto :goto_0
.end method

.method public notifySpawnedPokemon(Ljava/lang/String;)Z
    .locals 3
    .param p1, "encounterId"    # Ljava/lang/String;

    .prologue
    .line 258
    sget-object v0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySpawnedPokemon() id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->isEnableSfida()Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    const/4 v0, 0x0

    .line 276
    :goto_0
    return v0

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    new-instance v1, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$5;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$5;-><init>(Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->setOnClickSfidaListener(Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$OnClickListener;)V

    .line 276
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    sget-object v1, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_LED_VIBRATE_CTRL_CHAR:Ljava/util/UUID;

    .line 278
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->getSpawnedPokemon()[B

    move-result-object v2

    .line 276
    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sendDeviceControlMessage(Ljava/util/UUID;[B)Z

    move-result v0

    goto :goto_0
.end method

.method public notifySpawnedUncaughtPokemon(Ljava/lang/String;)Z
    .locals 3
    .param p1, "encounterId"    # Ljava/lang/String;

    .prologue
    .line 287
    sget-object v0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySpawnedUncaughtPokemon() id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->isEnableSfida()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    const/4 v0, 0x0

    .line 305
    :goto_0
    return v0

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    new-instance v1, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$6;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$6;-><init>(Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->setOnClickSfidaListener(Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$OnClickListener;)V

    .line 305
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    sget-object v1, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_LED_VIBRATE_CTRL_CHAR:Ljava/util/UUID;

    .line 307
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->getSpawnedUncaughtPokemon()[B

    move-result-object v2

    .line 305
    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sendDeviceControlMessage(Ljava/util/UUID;[B)Z

    move-result v0

    goto :goto_0
.end method

.method public notifyStartDowser()Z
    .locals 3

    .prologue
    .line 389
    sget-object v0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->TAG:Ljava/lang/String;

    const-string v1, "notifyStartDowser()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->isEnableSfida()Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    const/4 v0, 0x0

    .line 396
    :goto_0
    return v0

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->setOnClickSfidaListener(Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$OnClickListener;)V

    .line 396
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    sget-object v1, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_LED_VIBRATE_CTRL_CHAR:Ljava/util/UUID;

    .line 398
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->getDonePattern()[B

    move-result-object v2

    .line 396
    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sendDeviceControlMessage(Ljava/util/UUID;[B)Z

    move-result v0

    goto :goto_0
.end method

.method public oneShotVibrate()Z
    .locals 3

    .prologue
    .line 540
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->isEnableSfida()Z

    move-result v0

    if-nez v0, :cond_0

    .line 541
    const/4 v0, 0x0

    .line 545
    :goto_0
    return v0

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->setOnClickSfidaListener(Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$OnClickListener;)V

    .line 545
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    sget-object v1, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_LED_VIBRATE_CTRL_CHAR:Ljava/util/UUID;

    .line 547
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->getCaptureSucceed()[B

    move-result-object v2

    .line 545
    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sendDeviceControlMessage(Ljava/util/UUID;[B)Z

    move-result v0

    goto :goto_0
.end method

.method public releaseSfida()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 187
    sget-object v0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->TAG:Ljava/lang/String;

    const-string v1, "releaseSfida()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-boolean v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->isReceiverRegistered:Z

    if-eqz v0, :cond_2

    .line 191
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->gattUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 197
    :goto_0
    iget-boolean v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->isServiceBound:Z

    if-eqz v0, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->isServiceBound:Z

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 204
    iput-object v2, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->handler:Landroid/os/Handler;

    .line 206
    :cond_1
    return-void

    .line 193
    :cond_2
    sget-object v0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->TAG:Ljava/lang/String;

    const-string v1, "releaseSfida() isNotReceiverRegistered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->activity:Landroid/app/Activity;

    .line 150
    return-void
.end method
