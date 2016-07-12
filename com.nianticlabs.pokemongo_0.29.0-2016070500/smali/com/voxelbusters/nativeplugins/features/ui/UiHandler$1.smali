.class Lcom/voxelbusters/nativeplugins/features/ui/UiHandler$1;
.super Ljava/lang/Object;
.source "UiHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxelbusters/nativeplugins/features/ui/UiHandler;->showToast(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxelbusters/nativeplugins/features/ui/UiHandler;

.field private final synthetic val$message:Ljava/lang/String;

.field private final synthetic val$toastLength:I


# direct methods
.method constructor <init>(Lcom/voxelbusters/nativeplugins/features/ui/UiHandler;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiHandler$1;->this$0:Lcom/voxelbusters/nativeplugins/features/ui/UiHandler;

    iput-object p2, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiHandler$1;->val$message:Ljava/lang/String;

    iput p3, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiHandler$1;->val$toastLength:I

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 98
    invoke-static {}, Lcom/voxelbusters/nativeplugins/NativePluginHelper;->getCurrentContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiHandler$1;->val$message:Ljava/lang/String;

    iget v2, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiHandler$1;->val$toastLength:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 99
    return-void
.end method
