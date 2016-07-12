.class public Lspacemadness/com/lunarconsole/console/UnityPluginImp;
.super Ljava/lang/Object;
.source "UnityPluginImp.java"

# interfaces
.implements Lspacemadness/com/lunarconsole/console/ConsolePluginImp;


# instance fields
.field private final playerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/unity3d/player/UnityPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Lspacemadness/com/lunarconsole/console/UnityPluginImp;->resolveUnityPlayerInstance(Landroid/app/Activity;)Lcom/unity3d/player/UnityPlayer;

    move-result-object v0

    .line 42
    .local v0, "player":Lcom/unity3d/player/UnityPlayer;
    if-nez v0, :cond_0

    .line 44
    new-instance v1, Lspacemadness/com/lunarconsole/core/LunarConsoleException;

    const-string v2, "Can\'t initialize plugin: UnityPlayer instance not resolved"

    invoke-direct {v1, v2}, Lspacemadness/com/lunarconsole/core/LunarConsoleException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lspacemadness/com/lunarconsole/console/UnityPluginImp;->playerRef:Ljava/lang/ref/WeakReference;

    .line 48
    return-void
.end method

.method private getPlayer()Lcom/unity3d/player/UnityPlayer;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/UnityPluginImp;->playerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/player/UnityPlayer;

    return-object v0
.end method

.method private static resolveUnityPlayerInstance(Landroid/app/Activity;)Lcom/unity3d/player/UnityPlayer;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 55
    invoke-static {p0}, Lspacemadness/com/lunarconsole/utils/UIUtils;->getRootViewGroup(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0}, Lspacemadness/com/lunarconsole/console/UnityPluginImp;->resolveUnityPlayerInstance(Landroid/view/ViewGroup;)Lcom/unity3d/player/UnityPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static resolveUnityPlayerInstance(Landroid/view/ViewGroup;)Lcom/unity3d/player/UnityPlayer;
    .locals 4
    .param p0, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 60
    instance-of v3, p0, Lcom/unity3d/player/UnityPlayer;

    if-eqz v3, :cond_0

    .line 62
    check-cast p0, Lcom/unity3d/player/UnityPlayer;

    .line 83
    .end local p0    # "root":Landroid/view/ViewGroup;
    .local v1, "i":I
    :goto_0
    return-object p0

    .line 65
    .end local v1    # "i":I
    .restart local p0    # "root":Landroid/view/ViewGroup;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 67
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Lcom/unity3d/player/UnityPlayer;

    if-eqz v3, :cond_1

    .line 70
    check-cast v0, Lcom/unity3d/player/UnityPlayer;

    .end local v0    # "child":Landroid/view/View;
    move-object p0, v0

    goto :goto_0

    .line 73
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 75
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "child":Landroid/view/View;
    invoke-static {v0}, Lspacemadness/com/lunarconsole/console/UnityPluginImp;->resolveUnityPlayerInstance(Landroid/view/ViewGroup;)Lcom/unity3d/player/UnityPlayer;

    move-result-object v2

    .line 76
    .local v2, "player":Lcom/unity3d/player/UnityPlayer;
    if-eqz v2, :cond_2

    move-object p0, v2

    .line 78
    goto :goto_0

    .line 65
    .end local v2    # "player":Lcom/unity3d/player/UnityPlayer;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 83
    :cond_3
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getTouchRecepientView()Landroid/view/View;
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/UnityPluginImp;->getPlayer()Lcom/unity3d/player/UnityPlayer;

    move-result-object v0

    return-object v0
.end method
