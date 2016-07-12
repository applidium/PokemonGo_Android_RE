.class Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$SfidaDiscoveredListener;
.super Ljava/lang/Object;
.source "SfidaUnityPlugin.java"

# interfaces
.implements Lcom/nianticproject/holoholo/sfida/SfidaFinderFragment$OnDeviceDiscoveredListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SfidaDiscoveredListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;


# direct methods
.method private constructor <init>(Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;)V
    .locals 0

    .prologue
    .line 754
    iput-object p1, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$SfidaDiscoveredListener;->this$0:Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;
    .param p2, "x1"    # Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$1;

    .prologue
    .line 754
    invoke-direct {p0, p1}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$SfidaDiscoveredListener;-><init>(Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;)V

    return-void
.end method


# virtual methods
.method public onDeviceDiscovered(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 3
    .param p1, "discoveredDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "pressed"    # Z

    .prologue
    .line 761
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$SfidaDiscoveredListener;->this$0:Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;

    .line 762
    # invokes: Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->getActivity()Landroid/app/Activity;
    invoke-static {v0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->access$500(Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Pok\u00e9mon GO Plus discovered."

    const/4 v2, 0x0

    .line 761
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 764
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 766
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$SfidaDiscoveredListener;->this$0:Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;

    # invokes: Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->stopScanSfida()V
    invoke-static {v0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->access$700(Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;)V

    .line 768
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$SfidaDiscoveredListener;->this$0:Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;

    # invokes: Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->startSfidaConnection(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v0, p1}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->access$800(Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;Landroid/bluetooth/BluetoothDevice;)V

    .line 769
    return-void
.end method
