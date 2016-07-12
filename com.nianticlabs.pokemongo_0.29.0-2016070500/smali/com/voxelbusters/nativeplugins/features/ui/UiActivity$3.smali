.class Lcom/voxelbusters/nativeplugins/features/ui/UiActivity$3;
.super Ljava/lang/Object;
.source "UiActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;->showSinglePrompt(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;

.field private final synthetic val$index:I

.field private final synthetic val$promptField:Landroid/widget/EditText;

.field private final synthetic val$tempButtonList:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;Landroid/widget/EditText;[Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity$3;->this$0:Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;

    iput-object p2, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity$3;->val$promptField:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity$3;->val$tempButtonList:[Ljava/lang/String;

    iput p4, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity$3;->val$index:I

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 192
    iget-object v2, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity$3;->val$promptField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "promptText":Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 195
    .local v0, "dataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "button-pressed"

    iget-object v3, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity$3;->val$tempButtonList:[Ljava/lang/String;

    iget v4, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity$3;->val$index:I

    aget-object v3, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v2, "input"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v2, "SingleFieldPromptDialogClosed"

    invoke-static {v2, v0}, Lcom/voxelbusters/nativeplugins/NativePluginHelper;->sendMessage(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 201
    iget-object v2, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity$3;->this$0:Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;

    invoke-virtual {v2}, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;->finish()V

    .line 202
    return-void
.end method
