.class Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity$1;
.super Ljava/lang/Object;
.source "SharingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity$1;->this$0:Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 182
    const-string v0, "SharingFinished"

    const-string v1, "failed"

    invoke-static {v0, v1}, Lcom/voxelbusters/nativeplugins/NativePluginHelper;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity$1;->this$0:Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity;

    invoke-virtual {v0}, Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity;->finish()V

    .line 184
    return-void
.end method
