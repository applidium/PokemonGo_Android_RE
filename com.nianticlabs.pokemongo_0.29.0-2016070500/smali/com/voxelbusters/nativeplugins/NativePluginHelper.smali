.class public Lcom/voxelbusters/nativeplugins/NativePluginHelper;
.super Ljava/lang/Object;
.source "NativePluginHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static executeOnUIThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnableThread"    # Ljava/lang/Runnable;

    .prologue
    .line 84
    invoke-static {}, Lcom/voxelbusters/nativeplugins/NativePluginHelper;->getCurrentContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 85
    .local v0, "currentActivity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 89
    :cond_0
    return-void
.end method

.method public static getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/voxelbusters/nativeplugins/NativePluginHelper;->getCurrentContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public static getCurrentContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 71
    .local v0, "context":Landroid/content/Context;
    return-object v0
.end method

.method public static isApplicationRunning()Z
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Lcom/voxelbusters/nativeplugins/NativePluginHelper;->getCurrentContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static sendMessage(Ljava/lang/String;)V
    .locals 1
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    .line 21
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/voxelbusters/nativeplugins/NativePluginHelper;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static sendMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-static {p0}, Lcom/voxelbusters/nativeplugins/utilities/StringUtility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    const-string v0, "UnitySendMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Method Name : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/voxelbusters/nativeplugins/utilities/Debug;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/voxelbusters/nativeplugins/NativePluginHelper;->getCurrentContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/voxelbusters/nativeplugins/defines/UnityDefines;->NATIVE_BINDING_EVENT_LISTENER:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_0
    return-void
.end method

.method public static sendMessage(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "dataList"    # Ljava/util/ArrayList;

    .prologue
    .line 39
    const-string v1, ""

    .line 41
    .local v1, "message":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 44
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 45
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .end local v0    # "gson":Lcom/google/gson/Gson;
    :cond_0
    invoke-static {p0, v1}, Lcom/voxelbusters/nativeplugins/NativePluginHelper;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static sendMessage(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "dataMap"    # Ljava/util/HashMap;

    .prologue
    .line 54
    const-string v1, ""

    .line 56
    .local v1, "message":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 59
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 60
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 63
    .end local v0    # "gson":Lcom/google/gson/Gson;
    :cond_0
    invoke-static {p0, v1}, Lcom/voxelbusters/nativeplugins/NativePluginHelper;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static startActivityOnUiThread(Landroid/content/Intent;)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 93
    new-instance v0, Lcom/voxelbusters/nativeplugins/NativePluginHelper$1;

    invoke-direct {v0, p0}, Lcom/voxelbusters/nativeplugins/NativePluginHelper$1;-><init>(Landroid/content/Intent;)V

    .line 102
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/voxelbusters/nativeplugins/NativePluginHelper;->executeOnUIThread(Ljava/lang/Runnable;)V

    .line 103
    return-void
.end method
