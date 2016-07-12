.class public Lcom/voxelbusters/NativeBinding;
.super Ljava/lang/Object;
.source "NativeBinding.java"


# static fields
.field public static appLifeCycleListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/voxelbusters/nativeplugins/base/interfaces/IAppLifeCycleListener;",
            ">;"
        }
    .end annotation
.end field

.field public static isAppForeground:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/voxelbusters/NativeBinding;->appLifeCycleListeners:Ljava/util/ArrayList;

    .line 14
    const/4 v0, 0x1

    sput-boolean v0, Lcom/voxelbusters/NativeBinding;->isAppForeground:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAppLifeCycleListener(Lcom/voxelbusters/nativeplugins/base/interfaces/IAppLifeCycleListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/voxelbusters/nativeplugins/base/interfaces/IAppLifeCycleListener;

    .prologue
    .line 54
    sget-object v0, Lcom/voxelbusters/NativeBinding;->appLifeCycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    sget-object v0, Lcom/voxelbusters/NativeBinding;->appLifeCycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_0
    return-void
.end method

.method public static enableDebug(Z)V
    .locals 0
    .param p0, "isDebugEnabled"    # Z

    .prologue
    .line 67
    sput-boolean p0, Lcom/voxelbusters/nativeplugins/utilities/Debug;->ENABLED:Z

    .line 68
    return-void
.end method

.method public static isApplicationForeground()Z
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/voxelbusters/NativeBinding;->isAppForeground:Z

    return v0
.end method

.method public static logMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "logType"    # Ljava/lang/String;
    .param p2, "stackTrace"    # Ljava/lang/String;

    .prologue
    .line 75
    const-string v1, "Unity"

    .line 76
    .local v1, "tag":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/voxelbusters/nativeplugins/utilities/StringUtility;->getBase64DecodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/voxelbusters/nativeplugins/utilities/StringUtility;->getBase64DecodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "messageToDisplay":Ljava/lang/String;
    const-string v2, "ERROR"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_0
    return-void

    .line 82
    :cond_0
    const-string v2, "WARNING"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    :cond_1
    const-string v2, "INFO"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 88
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    :cond_2
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static onApplicationPause()V
    .locals 3

    .prologue
    .line 43
    const/4 v1, 0x0

    sput-boolean v1, Lcom/voxelbusters/NativeBinding;->isAppForeground:Z

    .line 45
    sget-object v1, Lcom/voxelbusters/NativeBinding;->appLifeCycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "each":Lcom/voxelbusters/nativeplugins/base/interfaces/IAppLifeCycleListener;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    return-void

    .line 45
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "each":Lcom/voxelbusters/nativeplugins/base/interfaces/IAppLifeCycleListener;
    check-cast v0, Lcom/voxelbusters/nativeplugins/base/interfaces/IAppLifeCycleListener;

    .line 47
    .restart local v0    # "each":Lcom/voxelbusters/nativeplugins/base/interfaces/IAppLifeCycleListener;
    invoke-interface {v0}, Lcom/voxelbusters/nativeplugins/base/interfaces/IAppLifeCycleListener;->onApplicationPause()V

    goto :goto_0
.end method

.method public static onApplicationQuit()V
    .locals 3

    .prologue
    .line 18
    const/4 v1, 0x0

    sput-boolean v1, Lcom/voxelbusters/NativeBinding;->isAppForeground:Z

    .line 19
    sget-object v1, Lcom/voxelbusters/NativeBinding;->appLifeCycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "each":Lcom/voxelbusters/nativeplugins/base/interfaces/IAppLifeCycleListener;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 23
    return-void

    .line 19
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "each":Lcom/voxelbusters/nativeplugins/base/interfaces/IAppLifeCycleListener;
    check-cast v0, Lcom/voxelbusters/nativeplugins/base/interfaces/IAppLifeCycleListener;

    .line 21
    .restart local v0    # "each":Lcom/voxelbusters/nativeplugins/base/interfaces/IAppLifeCycleListener;
    invoke-interface {v0}, Lcom/voxelbusters/nativeplugins/base/interfaces/IAppLifeCycleListener;->onApplicationQuit()V

    goto :goto_0
.end method

.method public static onApplicationResume()V
    .locals 3

    .prologue
    .line 33
    const/4 v1, 0x1

    sput-boolean v1, Lcom/voxelbusters/NativeBinding;->isAppForeground:Z

    .line 35
    sget-object v1, Lcom/voxelbusters/NativeBinding;->appLifeCycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "each":Lcom/voxelbusters/nativeplugins/base/interfaces/IAppLifeCycleListener;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 39
    return-void

    .line 35
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "each":Lcom/voxelbusters/nativeplugins/base/interfaces/IAppLifeCycleListener;
    check-cast v0, Lcom/voxelbusters/nativeplugins/base/interfaces/IAppLifeCycleListener;

    .line 37
    .restart local v0    # "each":Lcom/voxelbusters/nativeplugins/base/interfaces/IAppLifeCycleListener;
    invoke-interface {v0}, Lcom/voxelbusters/nativeplugins/base/interfaces/IAppLifeCycleListener;->onApplicationResume()V

    goto :goto_0
.end method

.method public static removeAppLifeCycleListener(Lcom/voxelbusters/nativeplugins/base/interfaces/IAppLifeCycleListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/voxelbusters/nativeplugins/base/interfaces/IAppLifeCycleListener;

    .prologue
    .line 62
    sget-object v0, Lcom/voxelbusters/NativeBinding;->appLifeCycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method
