.class Lspacemadness/com/lunarconsole/console/DefaultPluginImp;
.super Ljava/lang/Object;
.source "DefaultPluginImp.java"

# interfaces
.implements Lspacemadness/com/lunarconsole/console/ConsolePluginImp;


# instance fields
.field private final rootViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Lspacemadness/com/lunarconsole/utils/UIUtils;->getRootViewGroup(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 39
    .local v0, "rootView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 41
    new-instance v1, Lspacemadness/com/lunarconsole/core/LunarConsoleException;

    const-string v2, "Can\'t initialize plugin: root view not found"

    invoke-direct {v1, v2}, Lspacemadness/com/lunarconsole/core/LunarConsoleException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lspacemadness/com/lunarconsole/console/DefaultPluginImp;->rootViewRef:Ljava/lang/ref/WeakReference;

    .line 45
    return-void
.end method


# virtual methods
.method public getTouchRecepientView()Landroid/view/View;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/DefaultPluginImp;->rootViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method
