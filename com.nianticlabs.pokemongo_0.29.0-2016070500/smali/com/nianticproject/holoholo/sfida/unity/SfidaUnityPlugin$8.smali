.class Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$8;
.super Ljava/lang/Object;
.source "SfidaUnityPlugin.java"

# interfaces
.implements Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->notifyReadyForThrowPokeball(Ljava/lang/String;)Z
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
    .line 346
    iput-object p1, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$8;->this$0:Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .prologue
    .line 349
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$8;->this$0:Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;

    # getter for: Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;
    invoke-static {v0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->access$100(Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;)Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_LED_VIBRATE_CTRL_CHAR:Ljava/util/UUID;

    .line 351
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->getThrewPokeball()[B

    move-result-object v2

    .line 349
    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sendDeviceControlMessage(Ljava/util/UUID;[B)Z

    .line 353
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$8;->this$0:Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;

    # getter for: Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;
    invoke-static {v0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->access$100(Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;)Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->setOnClickSfidaListener(Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$OnClickListener;)V

    .line 354
    const-string v0, "AndroidSfidaConnection"

    const-string v1, "ThrowPokeball"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public onPress()V
    .locals 0

    .prologue
    .line 363
    return-void
.end method

.method public onRelease()V
    .locals 0

    .prologue
    .line 368
    return-void
.end method
