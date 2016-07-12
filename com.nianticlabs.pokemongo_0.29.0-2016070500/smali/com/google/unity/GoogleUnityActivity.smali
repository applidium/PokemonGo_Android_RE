.class public Lcom/google/unity/GoogleUnityActivity;
.super Landroid/app/Activity;
.source "GoogleUnityActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/unity/GoogleUnityActivity$AndroidInputListener;,
        Lcom/google/unity/GoogleUnityActivity$AndroidLifecycleListener;
    }
.end annotation


# static fields
.field private static final NAVIGATION_BAR_TIMEOUT_MS:I = 0x7d0

.field static final TAG:Ljava/lang/String;


# instance fields
.field protected mAndroidInputListener:Lcom/google/unity/GoogleUnityActivity$AndroidInputListener;

.field protected mAndroidLifecycleListener:Lcom/google/unity/GoogleUnityActivity$AndroidLifecycleListener;

.field private mAndroidView:Landroid/view/View;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field protected mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

.field private shouldUseImmersiveMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-class v0, Lcom/google/unity/GoogleUnityActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/unity/GoogleUnityActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/google/unity/GoogleUnityActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/google/unity/GoogleUnityActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/unity/GoogleUnityActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0
    .param p0, "x0"    # Lcom/google/unity/GoogleUnityActivity;
    .param p1, "x1"    # Landroid/widget/PopupWindow;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/unity/GoogleUnityActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/unity/GoogleUnityActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/unity/GoogleUnityActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mAndroidView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/unity/GoogleUnityActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/google/unity/GoogleUnityActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/unity/GoogleUnityActivity;->mAndroidView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/unity/GoogleUnityActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/unity/GoogleUnityActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/unity/GoogleUnityActivity;->setImmersiveMode()V

    return-void
.end method

.method private setImmersiveMode()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/google/unity/GoogleUnityActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 352
    return-void
.end method

.method private startImmersiveMode()V
    .locals 3

    .prologue
    .line 323
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 324
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {p0}, Lcom/google/unity/GoogleUnityActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/google/unity/GoogleUnityActivity$5;

    invoke-direct {v2, p0, v0}, Lcom/google/unity/GoogleUnityActivity$5;-><init>(Lcom/google/unity/GoogleUnityActivity;Landroid/os/Handler;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 341
    return-void
.end method


# virtual methods
.method public attachInputListener(Lcom/google/unity/GoogleUnityActivity$AndroidInputListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/unity/GoogleUnityActivity$AndroidInputListener;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/google/unity/GoogleUnityActivity;->mAndroidInputListener:Lcom/google/unity/GoogleUnityActivity$AndroidInputListener;

    .line 214
    return-void
.end method

.method public attachLifecycleListener(Lcom/google/unity/GoogleUnityActivity$AndroidLifecycleListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/unity/GoogleUnityActivity$AndroidLifecycleListener;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/google/unity/GoogleUnityActivity;->mAndroidLifecycleListener:Lcom/google/unity/GoogleUnityActivity$AndroidLifecycleListener;

    .line 210
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 276
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 277
    invoke-virtual {p0, p1}, Lcom/google/unity/GoogleUnityActivity;->injectUnityEvent(Landroid/view/InputEvent;)Z

    move-result v0

    .line 279
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAndroidViewLayer()Landroid/view/View;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mAndroidView:Landroid/view/View;

    return-object v0
.end method

.method public getUnityPlayer()Lcom/unity3d/player/UnityPlayer;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    return-object v0
.end method

.method public injectUnityEvent(Landroid/view/InputEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public launchIntent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "requestcode"    # I

    .prologue
    .line 195
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 196
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    if-eqz p3, :cond_1

    .line 198
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p3

    if-ge v0, v3, :cond_1

    .line 199
    aget-object v3, p3, v0

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "keyVal":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 201
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    .end local v0    # "i":I
    .end local v2    # "keyVal":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v1, p4}, Lcom/google/unity/GoogleUnityActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 206
    return-void
.end method

.method public logAndroidErrorMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/google/unity/GoogleUnityActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 218
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 219
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mAndroidLifecycleListener:Lcom/google/unity/GoogleUnityActivity$AndroidLifecycleListener;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mAndroidLifecycleListener:Lcom/google/unity/GoogleUnityActivity$AndroidLifecycleListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/unity/GoogleUnityActivity$AndroidLifecycleListener;->onActivityResult(IILandroid/content/Intent;)V

    .line 222
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 258
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 259
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->configurationChanged(Landroid/content/res/Configuration;)V

    .line 260
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x400

    const/4 v5, 0x1

    .line 99
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0, v5}, Lcom/google/unity/GoogleUnityActivity;->requestWindowFeature(I)Z

    .line 102
    invoke-virtual {p0}, Lcom/google/unity/GoogleUnityActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/Window;->takeSurface(Landroid/view/SurfaceHolder$Callback2;)V

    .line 104
    invoke-virtual {p0}, Lcom/google/unity/GoogleUnityActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setFormat(I)V

    .line 106
    new-instance v3, Lcom/unity3d/player/UnityPlayer;

    invoke-direct {v3, p0}, Lcom/unity3d/player/UnityPlayer;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v3, p0, Lcom/google/unity/GoogleUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    .line 107
    iget-object v3, p0, Lcom/google/unity/GoogleUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v3}, Lcom/unity3d/player/UnityPlayer;->getSettings()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "hide_status_bar"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/google/unity/GoogleUnityActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 112
    :cond_0
    iget-object v3, p0, Lcom/google/unity/GoogleUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    new-instance v4, Lcom/google/unity/GoogleUnityActivity$1;

    invoke-direct {v4, p0}, Lcom/google/unity/GoogleUnityActivity$1;-><init>(Lcom/google/unity/GoogleUnityActivity;)V

    invoke-virtual {v3, v4}, Lcom/unity3d/player/UnityPlayer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 118
    iget-object v3, p0, Lcom/google/unity/GoogleUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    new-instance v4, Lcom/google/unity/GoogleUnityActivity$2;

    invoke-direct {v4, p0}, Lcom/google/unity/GoogleUnityActivity$2;-><init>(Lcom/google/unity/GoogleUnityActivity;)V

    invoke-virtual {v3, v4}, Lcom/unity3d/player/UnityPlayer;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 124
    iget-object v3, p0, Lcom/google/unity/GoogleUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    new-instance v4, Lcom/google/unity/GoogleUnityActivity$3;

    invoke-direct {v4, p0}, Lcom/google/unity/GoogleUnityActivity$3;-><init>(Lcom/google/unity/GoogleUnityActivity;)V

    invoke-virtual {v3, v4}, Lcom/unity3d/player/UnityPlayer;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 138
    iget-object v3, p0, Lcom/google/unity/GoogleUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0, v3}, Lcom/google/unity/GoogleUnityActivity;->setContentView(Landroid/view/View;)V

    .line 139
    iget-object v3, p0, Lcom/google/unity/GoogleUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v3}, Lcom/unity3d/player/UnityPlayer;->requestFocus()Z

    .line 141
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/unity/GoogleUnityActivity;->shouldUseImmersiveMode:Z

    .line 143
    :try_start_0
    invoke-virtual {p0}, Lcom/google/unity/GoogleUnityActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/unity/GoogleUnityActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 145
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 146
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v3, "IMMERSIVE_MODE"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/unity/GoogleUnityActivity;->shouldUseImmersiveMode:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :goto_0
    iget-boolean v3, p0, Lcom/google/unity/GoogleUnityActivity;->shouldUseImmersiveMode:Z

    if-eqz v3, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-ge v3, v4, :cond_1

    .line 154
    invoke-direct {p0}, Lcom/google/unity/GoogleUnityActivity;->startImmersiveMode()V

    .line 156
    :cond_1
    return-void

    .line 149
    :catch_0
    move-exception v2

    .line 150
    .local v2, "e":Ljava/lang/NullPointerException;
    sget-object v3, Lcom/google/unity/GoogleUnityActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load meta-data, NullPointer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 147
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->quit()V

    .line 228
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 229
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mAndroidInputListener:Lcom/google/unity/GoogleUnityActivity$AndroidInputListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mAndroidInputListener:Lcom/google/unity/GoogleUnityActivity$AndroidInputListener;

    invoke-interface {v0, p1}, Lcom/google/unity/GoogleUnityActivity$AndroidInputListener;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    const/4 v0, 0x1

    .line 314
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/unity/GoogleUnityActivity;->injectUnityEvent(Landroid/view/InputEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mAndroidInputListener:Lcom/google/unity/GoogleUnityActivity$AndroidInputListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mAndroidInputListener:Lcom/google/unity/GoogleUnityActivity$AndroidInputListener;

    invoke-interface {v0, p1, p2}, Lcom/google/unity/GoogleUnityActivity$AndroidInputListener;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    const/4 v0, 0x1

    .line 296
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/unity/GoogleUnityActivity;->injectUnityEvent(Landroid/view/InputEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mAndroidInputListener:Lcom/google/unity/GoogleUnityActivity$AndroidInputListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mAndroidInputListener:Lcom/google/unity/GoogleUnityActivity$AndroidInputListener;

    invoke-interface {v0, p1, p2}, Lcom/google/unity/GoogleUnityActivity$AndroidInputListener;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    const/4 v0, 0x1

    .line 288
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/unity/GoogleUnityActivity;->injectUnityEvent(Landroid/view/InputEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 234
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 235
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mAndroidLifecycleListener:Lcom/google/unity/GoogleUnityActivity$AndroidLifecycleListener;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mAndroidLifecycleListener:Lcom/google/unity/GoogleUnityActivity$AndroidLifecycleListener;

    invoke-interface {v0}, Lcom/google/unity/GoogleUnityActivity$AndroidLifecycleListener;->onPause()V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->pause()V

    .line 239
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 244
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 245
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mAndroidLifecycleListener:Lcom/google/unity/GoogleUnityActivity$AndroidLifecycleListener;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mAndroidLifecycleListener:Lcom/google/unity/GoogleUnityActivity$AndroidLifecycleListener;

    invoke-interface {v0}, Lcom/google/unity/GoogleUnityActivity$AndroidLifecycleListener;->onResume()V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->resume()V

    .line 249
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mAndroidInputListener:Lcom/google/unity/GoogleUnityActivity$AndroidInputListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mAndroidInputListener:Lcom/google/unity/GoogleUnityActivity$AndroidInputListener;

    invoke-interface {v0, p1}, Lcom/google/unity/GoogleUnityActivity$AndroidInputListener;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    const/4 v0, 0x1

    .line 304
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/unity/GoogleUnityActivity;->injectUnityEvent(Landroid/view/InputEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 265
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 266
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    .line 267
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/google/unity/GoogleUnityActivity;->shouldUseImmersiveMode:Z

    if-eqz v0, :cond_0

    .line 268
    invoke-direct {p0}, Lcom/google/unity/GoogleUnityActivity;->setImmersiveMode()V

    .line 270
    :cond_0
    return-void
.end method

.method public showAndroidViewLayer(I)V
    .locals 2
    .param p1, "layoutResId"    # I

    .prologue
    .line 159
    move-object v0, p0

    .line 160
    .local v0, "self":Landroid/app/Activity;
    new-instance v1, Lcom/google/unity/GoogleUnityActivity$4;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/unity/GoogleUnityActivity$4;-><init>(Lcom/google/unity/GoogleUnityActivity;Landroid/app/Activity;I)V

    invoke-virtual {p0, v1}, Lcom/google/unity/GoogleUnityActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 184
    return-void
.end method
