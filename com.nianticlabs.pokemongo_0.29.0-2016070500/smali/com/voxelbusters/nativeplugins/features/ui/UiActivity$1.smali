.class Lcom/voxelbusters/nativeplugins/features/ui/UiActivity$1;
.super Ljava/lang/Object;
.source "UiActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;


# direct methods
.method constructor <init>(Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity$1;->this$0:Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity$1;->this$0:Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;

    iget-object v1, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity$1;->this$0:Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;

    invoke-virtual {v1}, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;->startActivity(Landroid/content/Intent;)V

    .line 74
    return-void
.end method
