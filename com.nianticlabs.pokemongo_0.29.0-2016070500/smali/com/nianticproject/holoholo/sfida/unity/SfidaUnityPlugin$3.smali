.class Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$3;
.super Ljava/lang/Object;
.source "SfidaUnityPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->connect()V
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
    .line 159
    iput-object p1, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$3;->this$0:Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$3;->this$0:Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;

    .line 163
    # invokes: Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->getActivity()Landroid/app/Activity;
    invoke-static {v0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->access$500(Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Finding Pok\u00e9mon GO Plus."

    const/4 v2, 0x0

    .line 162
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 166
    return-void
.end method
