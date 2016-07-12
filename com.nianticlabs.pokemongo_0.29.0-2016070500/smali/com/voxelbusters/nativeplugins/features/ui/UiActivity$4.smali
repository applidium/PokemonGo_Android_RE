.class Lcom/voxelbusters/nativeplugins/features/ui/UiActivity$4;
.super Ljava/lang/Object;
.source "UiActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;->showLoginPrompt(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;

.field private final synthetic val$finalButtonList:[Ljava/lang/String;

.field private final synthetic val$index:I

.field private final synthetic val$passwordField:Landroid/widget/EditText;

.field private final synthetic val$usernameField:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;[Ljava/lang/String;ILandroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity$4;->this$0:Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;

    iput-object p2, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity$4;->val$finalButtonList:[Ljava/lang/String;

    iput p3, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity$4;->val$index:I

    iput-object p4, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity$4;->val$usernameField:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity$4;->val$passwordField:Landroid/widget/EditText;

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 261
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 263
    .local v0, "dataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "button-pressed"

    iget-object v2, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity$4;->val$finalButtonList:[Ljava/lang/String;

    iget v3, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity$4;->val$index:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v1, "username"

    iget-object v2, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity$4;->val$usernameField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string v1, "password"

    iget-object v2, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity$4;->val$passwordField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string v1, "LoginPromptDialogClosed"

    invoke-static {v1, v0}, Lcom/voxelbusters/nativeplugins/NativePluginHelper;->sendMessage(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 272
    iget-object v1, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity$4;->this$0:Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;

    invoke-virtual {v1}, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;->finish()V

    .line 273
    return-void
.end method
