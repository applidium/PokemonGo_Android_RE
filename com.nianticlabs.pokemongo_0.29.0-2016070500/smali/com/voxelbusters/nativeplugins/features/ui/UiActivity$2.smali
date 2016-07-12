.class Lcom/voxelbusters/nativeplugins/features/ui/UiActivity$2;
.super Ljava/lang/Object;
.source "UiActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;->showAlertDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;

.field private final synthetic val$index:I

.field private final synthetic val$tag:Ljava/lang/String;

.field private final synthetic val$tempButtonList:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;[Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity$2;->this$0:Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;

    iput-object p2, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity$2;->val$tempButtonList:[Ljava/lang/String;

    iput p3, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity$2;->val$index:I

    iput-object p4, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity$2;->val$tag:Ljava/lang/String;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 129
    iget-object v3, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity$2;->val$tempButtonList:[Ljava/lang/String;

    iget v4, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity$2;->val$index:I

    aget-object v0, v3, v4

    .line 130
    .local v0, "buttonPressed":Ljava/lang/String;
    iget-object v1, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity$2;->val$tag:Ljava/lang/String;

    .line 132
    .local v1, "callerTag":Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 133
    .local v2, "dataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "button-pressed"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v3, "caller"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v3, "AlertDialogClosed"

    invoke-static {v3, v2}, Lcom/voxelbusters/nativeplugins/NativePluginHelper;->sendMessage(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 137
    invoke-static {}, Lcom/voxelbusters/nativeplugins/features/ui/UiHandler;->getInstance()Lcom/voxelbusters/nativeplugins/features/ui/UiHandler;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/voxelbusters/nativeplugins/features/ui/UiHandler;->onFinish(Ljava/lang/String;)V

    .line 139
    iget-object v3, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity$2;->this$0:Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;

    invoke-virtual {v3}, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;->finish()V

    .line 140
    return-void
.end method
