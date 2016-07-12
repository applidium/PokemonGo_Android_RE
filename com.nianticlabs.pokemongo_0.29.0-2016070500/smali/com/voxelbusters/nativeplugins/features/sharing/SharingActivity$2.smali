.class Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity$2;
.super Ljava/lang/Object;
.source "SharingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity;->shareItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity;


# direct methods
.method constructor <init>(Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity$2;->this$0:Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 193
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 195
    const-string v0, "SharingFinished"

    const-string v1, "failed"

    invoke-static {v0, v1}, Lcom/voxelbusters/nativeplugins/NativePluginHelper;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity$2;->this$0:Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity;

    invoke-virtual {v0}, Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity;->finish()V

    .line 198
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
