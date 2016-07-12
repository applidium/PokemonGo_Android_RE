.class public Lcom/voxelbusters/nativeplugins/utilities/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# static fields
.field public static ENABLED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-boolean v0, Lcom/voxelbusters/nativeplugins/utilities/Debug;->ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 32
    sget-boolean v0, Lcom/voxelbusters/nativeplugins/utilities/Debug;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 34
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/voxelbusters/nativeplugins/utilities/Debug;->toast(Ljava/lang/String;)V

    .line 37
    :cond_0
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/voxelbusters/nativeplugins/utilities/Debug;->log(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 28
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "showToast"    # Z

    .prologue
    .line 15
    sget-boolean v0, Lcom/voxelbusters/nativeplugins/utilities/Debug;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 21
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_0
    return-void
.end method

.method static toast(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v0, Lcom/voxelbusters/nativeplugins/utilities/Debug$1;

    invoke-direct {v0, p0}, Lcom/voxelbusters/nativeplugins/utilities/Debug$1;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/voxelbusters/nativeplugins/NativePluginHelper;->executeOnUIThread(Ljava/lang/Runnable;)V

    .line 60
    return-void
.end method

.method public static warning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 41
    sget-boolean v0, Lcom/voxelbusters/nativeplugins/utilities/Debug;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    return-void
.end method
