.class public Lspacemadness/com/lunarconsole/console/ConsolePlugin;
.super Ljava/lang/Object;
.source "ConsolePlugin.java"

# interfaces
.implements Lspacemadness/com/lunarconsole/console/ConsoleView$Listener;
.implements Lspacemadness/com/lunarconsole/console/WarningView$Listener;
.implements Lspacemadness/com/lunarconsole/core/Destroyable;


# static fields
.field private static final entryDispatcher:Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher;

.field private static instance:Lspacemadness/com/lunarconsole/console/ConsolePlugin;


# instance fields
.field private final activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final console:Lspacemadness/com/lunarconsole/console/Console;

.field private consoleView:Lspacemadness/com/lunarconsole/console/ConsoleView;

.field private final gestureDetector:Lspacemadness/com/lunarconsole/ui/GestureRecognizer;

.field private final pluginImp:Lspacemadness/com/lunarconsole/console/ConsolePluginImp;

.field private final version:Ljava/lang/String;

.field private warningView:Lspacemadness/com/lunarconsole/console/WarningView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher;

    new-instance v1, Lspacemadness/com/lunarconsole/console/ConsolePlugin$1;

    invoke-direct {v1}, Lspacemadness/com/lunarconsole/console/ConsolePlugin$1;-><init>()V

    invoke-direct {v0, v1}, Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher;-><init>(Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher$OnDispatchListener;)V

    sput-object v0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->entryDispatcher:Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Ljava/lang/String;IILspacemadness/com/lunarconsole/console/ConsolePluginImp;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "capacity"    # I
    .param p4, "trim"    # I
    .param p5, "pluginImp"    # Lspacemadness/com/lunarconsole/console/ConsolePluginImp;

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    if-nez p1, :cond_0

    .line 297
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Context is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 300
    :cond_0
    if-nez p2, :cond_1

    .line 302
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Version is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 305
    :cond_1
    iput-object p2, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->version:Ljava/lang/String;

    .line 306
    iput-object p5, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->pluginImp:Lspacemadness/com/lunarconsole/console/ConsolePluginImp;

    .line 308
    new-instance v1, Lspacemadness/com/lunarconsole/console/Console$Options;

    invoke-direct {v1, p3}, Lspacemadness/com/lunarconsole/console/Console$Options;-><init>(I)V

    .line 309
    .local v1, "options":Lspacemadness/com/lunarconsole/console/Console$Options;
    invoke-virtual {v1, p4}, Lspacemadness/com/lunarconsole/console/Console$Options;->setTrimCount(I)V

    .line 310
    new-instance v2, Lspacemadness/com/lunarconsole/console/Console;

    invoke-direct {v2, v1}, Lspacemadness/com/lunarconsole/console/Console;-><init>(Lspacemadness/com/lunarconsole/console/Console$Options;)V

    iput-object v2, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->console:Lspacemadness/com/lunarconsole/console/Console;

    .line 311
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->activityRef:Ljava/lang/ref/WeakReference;

    .line 313
    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {p1, v2}, Lspacemadness/com/lunarconsole/utils/UIUtils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    .line 314
    .local v0, "SWIPE_THRESHOLD":F
    new-instance v2, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer;

    sget-object v3, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;->Down:Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;

    invoke-direct {v2, v3, v0}, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer;-><init>(Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;F)V

    iput-object v2, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->gestureDetector:Lspacemadness/com/lunarconsole/ui/GestureRecognizer;

    .line 315
    iget-object v2, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->gestureDetector:Lspacemadness/com/lunarconsole/ui/GestureRecognizer;

    new-instance v3, Lspacemadness/com/lunarconsole/console/ConsolePlugin$7;

    invoke-direct {v3, p0}, Lspacemadness/com/lunarconsole/console/ConsolePlugin$7;-><init>(Lspacemadness/com/lunarconsole/console/ConsolePlugin;)V

    invoke-virtual {v2, v3}, Lspacemadness/com/lunarconsole/ui/GestureRecognizer;->setListener(Lspacemadness/com/lunarconsole/ui/GestureRecognizer$OnGestureListener;)V

    .line 323
    return-void
.end method

.method static synthetic access$000()Lspacemadness/com/lunarconsole/console/ConsolePlugin;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->instance:Lspacemadness/com/lunarconsole/console/ConsolePlugin;

    return-object v0
.end method

.method static synthetic access$100(Lspacemadness/com/lunarconsole/console/ConsolePlugin;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lspacemadness/com/lunarconsole/console/ConsolePlugin;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->logEntries(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Landroid/app/Activity;Ljava/lang/String;IILspacemadness/com/lunarconsole/console/ConsolePluginImp;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Lspacemadness/com/lunarconsole/console/ConsolePluginImp;

    .prologue
    .line 53
    invoke-static {p0, p1, p2, p3, p4}, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->init0(Landroid/app/Activity;Ljava/lang/String;IILspacemadness/com/lunarconsole/console/ConsolePluginImp;)V

    return-void
.end method

.method static synthetic access$300()V
    .locals 0

    .prologue
    .line 53
    invoke-static {}, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->shutdown0()V

    return-void
.end method

.method static synthetic access$400()V
    .locals 0

    .prologue
    .line 53
    invoke-static {}, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->show0()V

    return-void
.end method

.method static synthetic access$500()V
    .locals 0

    .prologue
    .line 53
    invoke-static {}, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->hide0()V

    return-void
.end method

.method static synthetic access$600()V
    .locals 0

    .prologue
    .line 53
    invoke-static {}, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->clear0()V

    return-void
.end method

.method static synthetic access$700(Lspacemadness/com/lunarconsole/console/ConsolePlugin;)Z
    .locals 1
    .param p0, "x0"    # Lspacemadness/com/lunarconsole/console/ConsolePlugin;

    .prologue
    .line 53
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->showConsole()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lspacemadness/com/lunarconsole/console/ConsolePlugin;)V
    .locals 0
    .param p0, "x0"    # Lspacemadness/com/lunarconsole/console/ConsolePlugin;

    .prologue
    .line 53
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->removeConsoleView()V

    return-void
.end method

.method static synthetic access$900(Lspacemadness/com/lunarconsole/console/ConsolePlugin;)Lspacemadness/com/lunarconsole/ui/GestureRecognizer;
    .locals 1
    .param p0, "x0"    # Lspacemadness/com/lunarconsole/console/ConsolePlugin;

    .prologue
    .line 53
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->gestureDetector:Lspacemadness/com/lunarconsole/ui/GestureRecognizer;

    return-object v0
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 265
    invoke-static {}, Lspacemadness/com/lunarconsole/utils/ThreadUtils;->isRunningOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-static {}, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->clear0()V

    .line 280
    :goto_0
    return-void

    .line 271
    :cond_0
    new-instance v0, Lspacemadness/com/lunarconsole/console/ConsolePlugin$6;

    invoke-direct {v0}, Lspacemadness/com/lunarconsole/console/ConsolePlugin$6;-><init>()V

    invoke-static {v0}, Lspacemadness/com/lunarconsole/utils/ThreadUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static clear0()V
    .locals 1

    .prologue
    .line 284
    sget-object v0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->instance:Lspacemadness/com/lunarconsole/console/ConsolePlugin;

    if-eqz v0, :cond_0

    .line 286
    sget-object v0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->instance:Lspacemadness/com/lunarconsole/console/ConsolePlugin;

    invoke-direct {v0}, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->clearConsole()V

    .line 288
    :cond_0
    return-void
.end method

.method private clearConsole()V
    .locals 3

    .prologue
    .line 477
    :try_start_0
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->console:Lspacemadness/com/lunarconsole/console/Console;

    invoke-virtual {v1}, Lspacemadness/com/lunarconsole/console/Console;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :goto_0
    return-void

    .line 479
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Can\'t clear console"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lspacemadness/com/lunarconsole/debug/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 621
    sget-object v0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->instance:Lspacemadness/com/lunarconsole/console/ConsolePlugin;

    if-eqz v0, :cond_0

    sget-object v0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->instance:Lspacemadness/com/lunarconsole/console/ConsolePlugin;

    iget-object v0, v0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->version:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "?.?.?"

    goto :goto_0
.end method

.method public static hide()V
    .locals 1

    .prologue
    .line 234
    invoke-static {}, Lspacemadness/com/lunarconsole/utils/ThreadUtils;->isRunningOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-static {}, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->hide0()V

    .line 249
    :goto_0
    return-void

    .line 240
    :cond_0
    new-instance v0, Lspacemadness/com/lunarconsole/console/ConsolePlugin$5;

    invoke-direct {v0}, Lspacemadness/com/lunarconsole/console/ConsolePlugin$5;-><init>()V

    invoke-static {v0}, Lspacemadness/com/lunarconsole/utils/ThreadUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static hide0()V
    .locals 2

    .prologue
    .line 253
    sget-object v0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->instance:Lspacemadness/com/lunarconsole/console/ConsolePlugin;

    if-eqz v0, :cond_0

    .line 255
    sget-object v0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->instance:Lspacemadness/com/lunarconsole/console/ConsolePlugin;

    invoke-direct {v0}, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->hideConsole()Z

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_0
    const-string v0, "Can\'t hide console: instance is not initialized"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private hideConsole()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 407
    :try_start_0
    iget-object v4, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->consoleView:Lspacemadness/com/lunarconsole/console/ConsoleView;

    if-eqz v4, :cond_0

    .line 409
    sget-object v4, Lspacemadness/com/lunarconsole/debug/Tags;->CONSOLE:Lspacemadness/com/lunarconsole/debug/Tag;

    const-string v5, "Hide console"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lspacemadness/com/lunarconsole/debug/Log;->d(Lspacemadness/com/lunarconsole/debug/Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 411
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 412
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 414
    sget v4, Lspacemadness/com/lunarconsole/R$anim;->lunar_console_slide_out_top:I

    invoke-static {v0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 415
    .local v1, "animation":Landroid/view/animation/Animation;
    new-instance v4, Lspacemadness/com/lunarconsole/console/ConsolePlugin$8;

    invoke-direct {v4, p0}, Lspacemadness/com/lunarconsole/console/ConsolePlugin$8;-><init>(Lspacemadness/com/lunarconsole/console/ConsolePlugin;)V

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 434
    iget-object v4, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->consoleView:Lspacemadness/com/lunarconsole/console/ConsoleView;

    invoke-virtual {v4, v1}, Lspacemadness/com/lunarconsole/console/ConsoleView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 441
    .end local v1    # "animation":Landroid/view/animation/Animation;
    :goto_0
    const/4 v3, 0x1

    .line 449
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    :goto_1
    return v3

    .line 438
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_1
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->removeConsoleView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 444
    .end local v0    # "activity":Landroid/app/Activity;
    :catch_0
    move-exception v2

    .line 446
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "Can\'t hide console"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lspacemadness/com/lunarconsole/debug/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private hideWarning()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 521
    iget-object v2, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->warningView:Lspacemadness/com/lunarconsole/console/WarningView;

    if-eqz v2, :cond_0

    .line 523
    sget-object v2, Lspacemadness/com/lunarconsole/debug/Tags;->WARNING_VIEW:Lspacemadness/com/lunarconsole/debug/Tag;

    const-string v3, "Hide warning"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lspacemadness/com/lunarconsole/debug/Log;->d(Lspacemadness/com/lunarconsole/debug/Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 525
    iget-object v2, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->warningView:Lspacemadness/com/lunarconsole/console/WarningView;

    invoke-virtual {v2}, Lspacemadness/com/lunarconsole/console/WarningView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 526
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 528
    check-cast v1, Landroid/view/ViewGroup;

    .line 529
    .local v1, "parentGroup":Landroid/view/ViewGroup;
    iget-object v2, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->warningView:Lspacemadness/com/lunarconsole/console/WarningView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 536
    .end local v1    # "parentGroup":Landroid/view/ViewGroup;
    :goto_0
    iget-object v2, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->warningView:Lspacemadness/com/lunarconsole/console/WarningView;

    invoke-virtual {v2}, Lspacemadness/com/lunarconsole/console/WarningView;->destroy()V

    .line 537
    const/4 v2, 0x0

    iput-object v2, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->warningView:Lspacemadness/com/lunarconsole/console/WarningView;

    .line 539
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_0
    return-void

    .line 533
    .restart local v0    # "parent":Landroid/view/ViewParent;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t hide warning view: unexpected parent view "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lspacemadness/com/lunarconsole/debug/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static init(Landroid/app/Activity;Ljava/lang/String;II)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "capacity"    # I
    .param p3, "trim"    # I

    .prologue
    .line 104
    new-instance v0, Lspacemadness/com/lunarconsole/console/DefaultPluginImp;

    invoke-direct {v0, p0}, Lspacemadness/com/lunarconsole/console/DefaultPluginImp;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, p1, p2, p3, v0}, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->init(Landroid/app/Activity;Ljava/lang/String;IILspacemadness/com/lunarconsole/console/ConsolePluginImp;)V

    .line 105
    return-void
.end method

.method private static init(Landroid/app/Activity;Ljava/lang/String;IILspacemadness/com/lunarconsole/console/ConsolePluginImp;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "capacity"    # I
    .param p3, "trim"    # I
    .param p4, "pluginImp"    # Lspacemadness/com/lunarconsole/console/ConsolePluginImp;

    .prologue
    .line 113
    invoke-static {}, Lspacemadness/com/lunarconsole/utils/ThreadUtils;->isRunningOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-static {p0, p1, p2, p3, p4}, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->init0(Landroid/app/Activity;Ljava/lang/String;IILspacemadness/com/lunarconsole/console/ConsolePluginImp;)V

    .line 131
    :goto_0
    return-void

    .line 119
    :cond_0
    sget-object v0, Lspacemadness/com/lunarconsole/debug/Tags;->PLUGIN:Lspacemadness/com/lunarconsole/debug/Tag;

    const-string v1, "Tried to initialize plugin on the secondary thread. Scheduling on UI-thread..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lspacemadness/com/lunarconsole/debug/Log;->d(Lspacemadness/com/lunarconsole/debug/Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    new-instance v0, Lspacemadness/com/lunarconsole/console/ConsolePlugin$2;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lspacemadness/com/lunarconsole/console/ConsolePlugin$2;-><init>(Landroid/app/Activity;Ljava/lang/String;IILspacemadness/com/lunarconsole/console/ConsolePluginImp;)V

    invoke-static {v0}, Lspacemadness/com/lunarconsole/utils/ThreadUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static init(Ljava/lang/String;II)V
    .locals 2
    .param p0, "version"    # Ljava/lang/String;
    .param p1, "capacity"    # I
    .param p2, "trim"    # I

    .prologue
    .line 98
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 99
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lspacemadness/com/lunarconsole/console/UnityPluginImp;

    invoke-direct {v1, v0}, Lspacemadness/com/lunarconsole/console/UnityPluginImp;-><init>(Landroid/app/Activity;)V

    invoke-static {v0, p0, p1, p2, v1}, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->init(Landroid/app/Activity;Ljava/lang/String;IILspacemadness/com/lunarconsole/console/ConsolePluginImp;)V

    .line 100
    return-void
.end method

.method private static init0(Landroid/app/Activity;Ljava/lang/String;IILspacemadness/com/lunarconsole/console/ConsolePluginImp;)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "capacity"    # I
    .param p3, "trim"    # I
    .param p4, "pluginImp"    # Lspacemadness/com/lunarconsole/console/ConsolePluginImp;

    .prologue
    const/4 v7, 0x0

    .line 141
    :try_start_0
    sget-object v0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->instance:Lspacemadness/com/lunarconsole/console/ConsolePlugin;

    if-nez v0, :cond_0

    .line 143
    sget-object v0, Lspacemadness/com/lunarconsole/debug/Tags;->PLUGIN:Lspacemadness/com/lunarconsole/debug/Tag;

    const-string v1, "Initializing plugin instance (%s): %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lspacemadness/com/lunarconsole/debug/Log;->d(Lspacemadness/com/lunarconsole/debug/Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    new-instance v0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lspacemadness/com/lunarconsole/console/ConsolePlugin;-><init>(Landroid/app/Activity;Ljava/lang/String;IILspacemadness/com/lunarconsole/console/ConsolePluginImp;)V

    sput-object v0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->instance:Lspacemadness/com/lunarconsole/console/ConsolePlugin;

    .line 146
    sget-object v0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->instance:Lspacemadness/com/lunarconsole/console/ConsolePlugin;

    invoke-virtual {v0}, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->enableGestureRecognition()V

    .line 157
    :goto_0
    return-void

    .line 150
    :cond_0
    const-string v0, "Plugin instance already initialized"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v6

    .line 155
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "Can\'t initialize plugin instance"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lspacemadness/com/lunarconsole/debug/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private logEntries(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lspacemadness/com/lunarconsole/console/ConsoleEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 344
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lspacemadness/com/lunarconsole/console/ConsoleEntry;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 346
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lspacemadness/com/lunarconsole/console/ConsoleEntry;

    .line 349
    .local v0, "entry":Lspacemadness/com/lunarconsole/console/ConsoleEntry;
    iget-object v2, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->console:Lspacemadness/com/lunarconsole/console/Console;

    invoke-virtual {v2, v0}, Lspacemadness/com/lunarconsole/console/Console;->logMessage(Lspacemadness/com/lunarconsole/console/ConsoleEntry;)V

    .line 352
    iget-byte v2, v0, Lspacemadness/com/lunarconsole/console/ConsoleEntry;->type:B

    invoke-static {v2}, Lspacemadness/com/lunarconsole/console/ConsoleLogType;->isErrorType(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->isConsoleShown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 354
    iget-object v2, v0, Lspacemadness/com/lunarconsole/console/ConsoleEntry;->message:Ljava/lang/String;

    invoke-direct {p0, v2}, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->showWarning(Ljava/lang/String;)V

    .line 344
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    .end local v0    # "entry":Lspacemadness/com/lunarconsole/console/ConsoleEntry;
    :cond_1
    return-void
.end method

.method public static logMessage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "stackTrace"    # Ljava/lang/String;
    .param p2, "logType"    # I

    .prologue
    .line 198
    sget-object v0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->entryDispatcher:Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher;

    new-instance v1, Lspacemadness/com/lunarconsole/console/ConsoleEntry;

    int-to-byte v2, p2

    invoke-direct {v1, v2, p0, p1}, Lspacemadness/com/lunarconsole/console/ConsoleEntry;-><init>(BLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher;->add(Lspacemadness/com/lunarconsole/console/ConsoleEntry;)V

    .line 199
    return-void
.end method

.method private removeConsoleView()V
    .locals 3

    .prologue
    .line 454
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->consoleView:Lspacemadness/com/lunarconsole/console/ConsoleView;

    if-eqz v1, :cond_0

    .line 456
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->consoleView:Lspacemadness/com/lunarconsole/console/ConsoleView;

    invoke-virtual {v1}, Lspacemadness/com/lunarconsole/console/ConsoleView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 457
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 459
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->consoleView:Lspacemadness/com/lunarconsole/console/ConsoleView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 466
    :goto_0
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->consoleView:Lspacemadness/com/lunarconsole/console/ConsoleView;

    invoke-virtual {v1}, Lspacemadness/com/lunarconsole/console/ConsoleView;->destroy()V

    .line 467
    const/4 v1, 0x0

    iput-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->consoleView:Lspacemadness/com/lunarconsole/console/ConsoleView;

    .line 469
    invoke-virtual {p0}, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->enableGestureRecognition()V

    .line 471
    :cond_0
    return-void

    .line 463
    .restart local v0    # "parent":Landroid/view/ViewParent;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t remove console view: unexpected parent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lspacemadness/com/lunarconsole/debug/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static show()V
    .locals 1

    .prologue
    .line 203
    invoke-static {}, Lspacemadness/com/lunarconsole/utils/ThreadUtils;->isRunningOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    invoke-static {}, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->show0()V

    .line 218
    :goto_0
    return-void

    .line 209
    :cond_0
    new-instance v0, Lspacemadness/com/lunarconsole/console/ConsolePlugin$4;

    invoke-direct {v0}, Lspacemadness/com/lunarconsole/console/ConsolePlugin$4;-><init>()V

    invoke-static {v0}, Lspacemadness/com/lunarconsole/utils/ThreadUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static show0()V
    .locals 2

    .prologue
    .line 222
    sget-object v0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->instance:Lspacemadness/com/lunarconsole/console/ConsolePlugin;

    if-eqz v0, :cond_0

    .line 224
    sget-object v0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->instance:Lspacemadness/com/lunarconsole/console/ConsolePlugin;

    invoke-direct {v0}, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->showConsole()Z

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    const-string v0, "Can\'t show console: instance is not initialized"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private showConsole()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 363
    :try_start_0
    iget-object v6, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->consoleView:Lspacemadness/com/lunarconsole/console/ConsoleView;

    if-nez v6, :cond_1

    .line 365
    sget-object v6, Lspacemadness/com/lunarconsole/debug/Tags;->CONSOLE:Lspacemadness/com/lunarconsole/debug/Tag;

    const-string v7, "Show console"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lspacemadness/com/lunarconsole/debug/Log;->d(Lspacemadness/com/lunarconsole/debug/Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 368
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 370
    const-string v6, "Can\'t show console: activity reference is lost"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lspacemadness/com/lunarconsole/debug/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return v5

    .line 374
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_0
    invoke-static {v0}, Lspacemadness/com/lunarconsole/utils/UIUtils;->getRootLayout(Landroid/app/Activity;)Landroid/widget/FrameLayout;

    move-result-object v4

    .line 376
    .local v4, "rootLayout":Landroid/widget/FrameLayout;
    new-instance v6, Lspacemadness/com/lunarconsole/console/ConsoleView;

    iget-object v7, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->console:Lspacemadness/com/lunarconsole/console/Console;

    invoke-direct {v6, v0, v7}, Lspacemadness/com/lunarconsole/console/ConsoleView;-><init>(Landroid/content/Context;Lspacemadness/com/lunarconsole/console/Console;)V

    iput-object v6, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->consoleView:Lspacemadness/com/lunarconsole/console/ConsoleView;

    .line 377
    iget-object v6, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->consoleView:Lspacemadness/com/lunarconsole/console/ConsoleView;

    invoke-virtual {v6, p0}, Lspacemadness/com/lunarconsole/console/ConsoleView;->setListener(Lspacemadness/com/lunarconsole/console/ConsoleView$Listener;)V

    .line 379
    iget-object v6, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->consoleView:Lspacemadness/com/lunarconsole/console/ConsoleView;

    invoke-virtual {v6}, Lspacemadness/com/lunarconsole/console/ConsoleView;->requestFocus()Z

    .line 381
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v3, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 382
    .local v3, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->consoleView:Lspacemadness/com/lunarconsole/console/ConsoleView;

    invoke-virtual {v4, v6, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    sget v6, Lspacemadness/com/lunarconsole/R$anim;->lunar_console_slide_in_top:I

    invoke-static {v0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 385
    .local v1, "animation":Landroid/view/animation/Animation;
    iget-object v6, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->consoleView:Lspacemadness/com/lunarconsole/console/ConsoleView;

    invoke-virtual {v6, v1}, Lspacemadness/com/lunarconsole/console/ConsoleView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 388
    invoke-virtual {p0}, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->disableGestureRecognition()V

    .line 390
    const/4 v5, 0x1

    goto :goto_0

    .line 393
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "animation":Landroid/view/animation/Animation;
    .end local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "rootLayout":Landroid/widget/FrameLayout;
    :cond_1
    const-string v6, "Console is show already"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lspacemadness/com/lunarconsole/debug/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 396
    :catch_0
    move-exception v2

    .line 398
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "Can\'t show console"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v2, v6, v7}, Lspacemadness/com/lunarconsole/debug/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private showWarning(Ljava/lang/String;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 492
    :try_start_0
    iget-object v3, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->warningView:Lspacemadness/com/lunarconsole/console/WarningView;

    if-nez v3, :cond_1

    .line 494
    sget-object v3, Lspacemadness/com/lunarconsole/debug/Tags;->WARNING_VIEW:Lspacemadness/com/lunarconsole/debug/Tag;

    const-string v4, "Show warning"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lspacemadness/com/lunarconsole/debug/Log;->d(Lspacemadness/com/lunarconsole/debug/Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 496
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 497
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 499
    const-string v3, "Can\'t show warning: activity reference is lost"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lspacemadness/com/lunarconsole/debug/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 517
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-void

    .line 503
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_0
    invoke-static {v0}, Lspacemadness/com/lunarconsole/utils/UIUtils;->getRootLayout(Landroid/app/Activity;)Landroid/widget/FrameLayout;

    move-result-object v2

    .line 505
    .local v2, "rootLayout":Landroid/widget/FrameLayout;
    new-instance v3, Lspacemadness/com/lunarconsole/console/WarningView;

    invoke-direct {v3, v0}, Lspacemadness/com/lunarconsole/console/WarningView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->warningView:Lspacemadness/com/lunarconsole/console/WarningView;

    .line 506
    iget-object v3, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->warningView:Lspacemadness/com/lunarconsole/console/WarningView;

    invoke-virtual {v3, p0}, Lspacemadness/com/lunarconsole/console/WarningView;->setListener(Lspacemadness/com/lunarconsole/console/WarningView$Listener;)V

    .line 508
    iget-object v3, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->warningView:Lspacemadness/com/lunarconsole/console/WarningView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 511
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v2    # "rootLayout":Landroid/widget/FrameLayout;
    :cond_1
    iget-object v3, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->warningView:Lspacemadness/com/lunarconsole/console/WarningView;

    invoke-virtual {v3, p1}, Lspacemadness/com/lunarconsole/console/WarningView;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 513
    :catch_0
    move-exception v1

    .line 515
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Can\'t show warning"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lspacemadness/com/lunarconsole/debug/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static shutdown()V
    .locals 3

    .prologue
    .line 161
    invoke-static {}, Lspacemadness/com/lunarconsole/utils/ThreadUtils;->isRunningOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-static {}, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->shutdown0()V

    .line 178
    :goto_0
    return-void

    .line 167
    :cond_0
    sget-object v0, Lspacemadness/com/lunarconsole/debug/Tags;->PLUGIN:Lspacemadness/com/lunarconsole/debug/Tag;

    const-string v1, "Tried to shutdown plugin on the secondary thread. Scheduling on UI-thread..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lspacemadness/com/lunarconsole/debug/Log;->d(Lspacemadness/com/lunarconsole/debug/Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    new-instance v0, Lspacemadness/com/lunarconsole/console/ConsolePlugin$3;

    invoke-direct {v0}, Lspacemadness/com/lunarconsole/console/ConsolePlugin$3;-><init>()V

    invoke-static {v0}, Lspacemadness/com/lunarconsole/utils/ThreadUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static shutdown0()V
    .locals 3

    .prologue
    .line 184
    :try_start_0
    sget-object v1, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->instance:Lspacemadness/com/lunarconsole/console/ConsolePlugin;

    if-eqz v1, :cond_0

    .line 186
    sget-object v1, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->instance:Lspacemadness/com/lunarconsole/console/ConsolePlugin;

    invoke-virtual {v1}, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->destroy()V

    .line 187
    const/4 v1, 0x0

    sput-object v1, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->instance:Lspacemadness/com/lunarconsole/console/ConsolePlugin;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 190
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 192
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "Error while shutting down the plugin"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lspacemadness/com/lunarconsole/debug/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    .line 331
    invoke-virtual {p0}, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->disableGestureRecognition()V

    .line 333
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->console:Lspacemadness/com/lunarconsole/console/Console;

    invoke-virtual {v0}, Lspacemadness/com/lunarconsole/console/Console;->destroy()V

    .line 334
    sget-object v0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->entryDispatcher:Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher;

    invoke-virtual {v0}, Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher;->cancelAll()V

    .line 336
    sget-object v0, Lspacemadness/com/lunarconsole/debug/Tags;->PLUGIN:Lspacemadness/com/lunarconsole/debug/Tag;

    const-string v1, "Plugin destroyed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lspacemadness/com/lunarconsole/debug/Log;->d(Lspacemadness/com/lunarconsole/debug/Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    return-void
.end method

.method public disableGestureRecognition()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 593
    sget-object v1, Lspacemadness/com/lunarconsole/debug/Tags;->GESTURES:Lspacemadness/com/lunarconsole/debug/Tag;

    const-string v2, "Disable gesture recognition"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lspacemadness/com/lunarconsole/debug/Log;->d(Lspacemadness/com/lunarconsole/debug/Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 595
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->pluginImp:Lspacemadness/com/lunarconsole/console/ConsolePluginImp;

    invoke-interface {v1}, Lspacemadness/com/lunarconsole/console/ConsolePluginImp;->getTouchRecepientView()Landroid/view/View;

    move-result-object v0

    .line 596
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 598
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 604
    :goto_0
    return-void

    .line 602
    :cond_0
    const-string v1, "Can\'t disable gesture recognition: touch view is null"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lspacemadness/com/lunarconsole/debug/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public enableGestureRecognition()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 571
    sget-object v1, Lspacemadness/com/lunarconsole/debug/Tags;->GESTURES:Lspacemadness/com/lunarconsole/debug/Tag;

    const-string v2, "Enable gesture recognition"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lspacemadness/com/lunarconsole/debug/Log;->d(Lspacemadness/com/lunarconsole/debug/Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 573
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->pluginImp:Lspacemadness/com/lunarconsole/console/ConsolePluginImp;

    invoke-interface {v1}, Lspacemadness/com/lunarconsole/console/ConsolePluginImp;->getTouchRecepientView()Landroid/view/View;

    move-result-object v0

    .line 574
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 576
    const-string v1, "Can\'t enable gesture recognition: touch view is null"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lspacemadness/com/lunarconsole/debug/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 589
    :goto_0
    return-void

    .line 580
    :cond_0
    new-instance v1, Lspacemadness/com/lunarconsole/console/ConsolePlugin$9;

    invoke-direct {v1, p0}, Lspacemadness/com/lunarconsole/console/ConsolePlugin$9;-><init>(Lspacemadness/com/lunarconsole/console/ConsolePlugin;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public isConsoleShown()Z
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->consoleView:Lspacemadness/com/lunarconsole/console/ConsoleView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClose(Lspacemadness/com/lunarconsole/console/ConsoleView;)V
    .locals 0
    .param p1, "view"    # Lspacemadness/com/lunarconsole/console/ConsoleView;

    .prologue
    .line 547
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->hideConsole()Z

    .line 548
    return-void
.end method

.method public onDetailsClick(Lspacemadness/com/lunarconsole/console/WarningView;)V
    .locals 0
    .param p1, "view"    # Lspacemadness/com/lunarconsole/console/WarningView;

    .prologue
    .line 562
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->hideWarning()V

    .line 563
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->showConsole()Z

    .line 564
    return-void
.end method

.method public onDismissClick(Lspacemadness/com/lunarconsole/console/WarningView;)V
    .locals 0
    .param p1, "view"    # Lspacemadness/com/lunarconsole/console/WarningView;

    .prologue
    .line 556
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->hideWarning()V

    .line 557
    return-void
.end method
