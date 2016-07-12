.class public Lspacemadness/com/lunarconsole/utils/ThreadUtils;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lspacemadness/com/lunarconsole/utils/ThreadUtils$1;,
        Lspacemadness/com/lunarconsole/utils/ThreadUtils$Holder;
    }
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lspacemadness/com/lunarconsole/utils/ThreadUtils;->handler:Landroid/os/Handler;

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Lspacemadness/com/lunarconsole/utils/ThreadUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lspacemadness/com/lunarconsole/utils/ThreadUtils$1;

    .prologue
    .line 27
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/utils/ThreadUtils;-><init>()V

    return-void
.end method

.method public static cancel(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 58
    # getter for: Lspacemadness/com/lunarconsole/utils/ThreadUtils$Holder;->INSTANCE:Lspacemadness/com/lunarconsole/utils/ThreadUtils;
    invoke-static {}, Lspacemadness/com/lunarconsole/utils/ThreadUtils$Holder;->access$000()Lspacemadness/com/lunarconsole/utils/ThreadUtils;

    move-result-object v0

    invoke-direct {v0, p0}, Lspacemadness/com/lunarconsole/utils/ThreadUtils;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 59
    return-void
.end method

.method public static cancelAll()V
    .locals 1

    .prologue
    .line 68
    # getter for: Lspacemadness/com/lunarconsole/utils/ThreadUtils$Holder;->INSTANCE:Lspacemadness/com/lunarconsole/utils/ThreadUtils;
    invoke-static {}, Lspacemadness/com/lunarconsole/utils/ThreadUtils$Holder;->access$000()Lspacemadness/com/lunarconsole/utils/ThreadUtils;

    move-result-object v0

    invoke-direct {v0}, Lspacemadness/com/lunarconsole/utils/ThreadUtils;->cancelRunnables()V

    .line 69
    return-void
.end method

.method private cancelRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 63
    iget-object v0, p0, Lspacemadness/com/lunarconsole/utils/ThreadUtils;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 64
    return-void
.end method

.method private cancelRunnables()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lspacemadness/com/lunarconsole/utils/ThreadUtils;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 74
    return-void
.end method

.method public static isRunningOnMainThread()Z
    .locals 2

    .prologue
    .line 78
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private postRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 38
    iget-object v0, p0, Lspacemadness/com/lunarconsole/utils/ThreadUtils;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    return-void
.end method

.method private postRunnable(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J

    .prologue
    .line 43
    iget-object v0, p0, Lspacemadness/com/lunarconsole/utils/ThreadUtils;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    return-void
.end method

.method public static runOnUIThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 48
    # getter for: Lspacemadness/com/lunarconsole/utils/ThreadUtils$Holder;->INSTANCE:Lspacemadness/com/lunarconsole/utils/ThreadUtils;
    invoke-static {}, Lspacemadness/com/lunarconsole/utils/ThreadUtils$Holder;->access$000()Lspacemadness/com/lunarconsole/utils/ThreadUtils;

    move-result-object v0

    invoke-direct {v0, p0}, Lspacemadness/com/lunarconsole/utils/ThreadUtils;->postRunnable(Ljava/lang/Runnable;)V

    .line 49
    return-void
.end method

.method public static runOnUIThread(Ljava/lang/Runnable;J)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "delay"    # J

    .prologue
    .line 53
    # getter for: Lspacemadness/com/lunarconsole/utils/ThreadUtils$Holder;->INSTANCE:Lspacemadness/com/lunarconsole/utils/ThreadUtils;
    invoke-static {}, Lspacemadness/com/lunarconsole/utils/ThreadUtils$Holder;->access$000()Lspacemadness/com/lunarconsole/utils/ThreadUtils;

    move-result-object v0

    invoke-direct {v0, p0, p1, p2}, Lspacemadness/com/lunarconsole/utils/ThreadUtils;->postRunnable(Ljava/lang/Runnable;J)V

    .line 54
    return-void
.end method
