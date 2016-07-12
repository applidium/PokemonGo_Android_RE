.class Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$PeriodicVibrateRunnable;
.super Ljava/lang/Object;
.source "SfidaUnityPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PeriodicVibrateRunnable"
.end annotation


# instance fields
.field handler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;


# direct methods
.method public constructor <init>(Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 776
    iput-object p1, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$PeriodicVibrateRunnable;->this$0:Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 777
    iput-object p2, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$PeriodicVibrateRunnable;->handler:Landroid/os/Handler;

    .line 778
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 783
    # getter for: Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " run()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$PeriodicVibrateRunnable;->this$0:Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;

    # getter for: Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;
    invoke-static {v0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->access$100(Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;)Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_LED_VIBRATE_CTRL_CHAR:Ljava/util/UUID;

    .line 787
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->getCaptureSucceed()[B

    move-result-object v2

    .line 785
    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sendDeviceControlMessage(Ljava/util/UUID;[B)Z

    .line 790
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$PeriodicVibrateRunnable;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$PeriodicVibrateRunnable;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 793
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 796
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$PeriodicVibrateRunnable;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 797
    iput-object v1, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$PeriodicVibrateRunnable;->handler:Landroid/os/Handler;

    .line 798
    return-void
.end method
