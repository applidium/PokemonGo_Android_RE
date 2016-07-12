.class Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$2;
.super Landroid/content/BroadcastReceiver;
.source "SfidaUnityPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;
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
    .line 106
    iput-object p1, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$2;->this$0:Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$2;->this$0:Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;

    # invokes: Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->onBroadcastUpdated(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->access$400(Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;Landroid/content/Intent;)V

    .line 110
    return-void
.end method
