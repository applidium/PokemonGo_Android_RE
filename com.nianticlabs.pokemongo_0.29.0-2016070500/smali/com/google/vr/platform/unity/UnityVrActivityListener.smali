.class public Lcom/google/vr/platform/unity/UnityVrActivityListener;
.super Ljava/lang/Object;
.source "UnityVrActivityListener.java"

# interfaces
.implements Lcom/google/unity/GoogleUnityActivity$AndroidInputListener;


# static fields
.field private static final NO_DOWNTIME:J = -0x1L

.field private static final TAG:Ljava/lang/String;

.field private static final TAP_TIME_MS:J = 0x32L


# instance fields
.field private alignmentMarkerEnabled:Z

.field private final nfcUtils:Lcom/google/vr/cardboard/NFCUtils;

.field private settingsButtonEnabled:Z

.field private showVrBackButtonOnlyInVR:Z

.field private tapInProgress:Z

.field private tapIsTrigger:Z

.field private touchX:I

.field private touchY:I

.field private uiLayer:Lcom/google/vr/cardboard/UiLayer;

.field private final unityActivity:Lcom/google/unity/GoogleUnityActivity;

.field private vrBackButtonEnabled:Z

.field private vrBackButtonListener:Ljava/lang/Runnable;

.field private vrModeEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "vrunity"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 47
    const-class v0, Lcom/google/vr/platform/unity/UnityVrActivityListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/google/vr/cardboard/NFCUtils;

    invoke-direct {v0}, Lcom/google/vr/cardboard/NFCUtils;-><init>()V

    iput-object v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->nfcUtils:Lcom/google/vr/cardboard/NFCUtils;

    .line 60
    iput-boolean v2, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->showVrBackButtonOnlyInVR:Z

    .line 61
    iput-boolean v2, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->vrModeEnabled:Z

    .line 62
    iput-boolean v2, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->settingsButtonEnabled:Z

    .line 63
    iput-boolean v2, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->alignmentMarkerEnabled:Z

    .line 64
    iput-boolean v2, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->vrBackButtonEnabled:Z

    .line 66
    iput-boolean v3, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->tapIsTrigger:Z

    .line 68
    iput-boolean v3, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->tapInProgress:Z

    .line 69
    iput v3, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->touchX:I

    .line 70
    iput v3, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->touchY:I

    .line 74
    new-instance v0, Lcom/google/vr/platform/unity/UnityVrActivityListener$1;

    invoke-direct {v0, p0}, Lcom/google/vr/platform/unity/UnityVrActivityListener$1;-><init>(Lcom/google/vr/platform/unity/UnityVrActivityListener;)V

    iput-object v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->vrBackButtonListener:Ljava/lang/Runnable;

    .line 113
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    check-cast v0, Lcom/google/unity/GoogleUnityActivity;

    iput-object v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->unityActivity:Lcom/google/unity/GoogleUnityActivity;

    .line 114
    iget-object v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->unityActivity:Lcom/google/unity/GoogleUnityActivity;

    invoke-virtual {v0, p0}, Lcom/google/unity/GoogleUnityActivity;->attachInputListener(Lcom/google/unity/GoogleUnityActivity$AndroidInputListener;)V

    .line 116
    iget-object v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->nfcUtils:Lcom/google/vr/cardboard/NFCUtils;

    iget-object v1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->unityActivity:Lcom/google/unity/GoogleUnityActivity;

    invoke-virtual {v0, v1}, Lcom/google/vr/cardboard/NFCUtils;->onCreate(Landroid/app/Activity;)V

    .line 118
    new-instance v0, Lcom/google/vr/cardboard/UiLayer;

    iget-object v1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->unityActivity:Lcom/google/unity/GoogleUnityActivity;

    invoke-direct {v0, v1}, Lcom/google/vr/cardboard/UiLayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    .line 119
    iget-object v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/vr/cardboard/UiLayer;->attachUiLayer(Landroid/view/ViewGroup;)V

    .line 120
    iget-object v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    invoke-virtual {v0, v2}, Lcom/google/vr/cardboard/UiLayer;->setEnabled(Z)V

    .line 122
    iget-boolean v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->vrModeEnabled:Z

    invoke-virtual {p0, v0}, Lcom/google/vr/platform/unity/UnityVrActivityListener;->setVRModeEnabled(Z)V

    .line 125
    invoke-virtual {p0, v3}, Lcom/google/vr/platform/unity/UnityVrActivityListener;->onPause(Z)V

    .line 126
    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 41
    invoke-static {}, Lcom/google/vr/platform/unity/UnityVrActivityListener;->vrBackButtonPressed()V

    return-void
.end method

.method static synthetic access$102(Lcom/google/vr/platform/unity/UnityVrActivityListener;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/vr/platform/unity/UnityVrActivityListener;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->tapInProgress:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/vr/platform/unity/UnityVrActivityListener;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/platform/unity/UnityVrActivityListener;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->tapIsTrigger:Z

    return v0
.end method

.method static synthetic access$300(Lcom/google/vr/platform/unity/UnityVrActivityListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/platform/unity/UnityVrActivityListener;

    .prologue
    .line 41
    iget v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->touchX:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/vr/platform/unity/UnityVrActivityListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/platform/unity/UnityVrActivityListener;

    .prologue
    .line 41
    iget v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->touchY:I

    return v0
.end method

.method public static getDisplayMetrics()[F
    .locals 8

    .prologue
    .line 93
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 94
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    .line 95
    .local v4, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 96
    .local v1, "display":Landroid/view/Display;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 100
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    const/4 v5, 0x4

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    aput v7, v5, v6

    const/4 v6, 0x2

    iget v7, v2, Landroid/util/DisplayMetrics;->xdpi:F

    aput v7, v5, v6

    const/4 v6, 0x3

    iget v7, v2, Landroid/util/DisplayMetrics;->ydpi:F

    aput v7, v5, v6

    return-object v5

    .line 101
    :catch_0
    move-exception v3

    .line 102
    .local v3, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0
.end method

.method private injectMotionEventInternal(IIIIJ)J
    .locals 9
    .param p1, "eventID"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "source"    # I
    .param p5, "downTime"    # J

    .prologue
    .line 264
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 265
    .local v2, "eventTime":J
    const-wide/16 v0, -0x1

    cmp-long v0, p5, v0

    if-nez v0, :cond_0

    .line 266
    move-wide p5, v2

    .line 268
    :cond_0
    int-to-float v5, p2

    int-to-float v6, p3

    const/4 v7, 0x0

    move-wide v0, p5

    move v4, p1

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 269
    .local v8, "event":Landroid/view/MotionEvent;
    invoke-virtual {v8, p4}, Landroid/view/MotionEvent;->setSource(I)V

    .line 270
    iget-object v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->unityActivity:Lcom/google/unity/GoogleUnityActivity;

    invoke-virtual {v0, v8}, Lcom/google/unity/GoogleUnityActivity;->injectUnityEvent(Landroid/view/InputEvent;)Z

    .line 271
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 272
    return-wide v2
.end method

.method private static native setApplicationState(Ljava/lang/ClassLoader;Landroid/content/Context;)V
.end method

.method public static setUnityApplicationState()V
    .locals 3

    .prologue
    .line 85
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 86
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/vr/platform/unity/UnityVrActivityListener;->setApplicationState(Ljava/lang/ClassLoader;Landroid/content/Context;)V

    .line 88
    return-void
.end method

.method private static native vrBackButtonPressed()V
.end method


# virtual methods
.method public injectKeyDown(I)V
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->unityActivity:Lcom/google/unity/GoogleUnityActivity;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/unity/GoogleUnityActivity;->injectUnityEvent(Landroid/view/InputEvent;)Z

    .line 300
    return-void
.end method

.method public injectKeyPress(I)V
    .locals 4
    .param p1, "keyCode"    # I

    .prologue
    .line 307
    invoke-virtual {p0, p1}, Lcom/google/vr/platform/unity/UnityVrActivityListener;->injectKeyDown(I)V

    .line 308
    iget-object v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->unityActivity:Lcom/google/unity/GoogleUnityActivity;

    invoke-virtual {v0}, Lcom/google/unity/GoogleUnityActivity;->getUnityPlayer()Lcom/unity3d/player/UnityPlayer;

    move-result-object v0

    new-instance v1, Lcom/google/vr/platform/unity/UnityVrActivityListener$3;

    invoke-direct {v1, p0, p1}, Lcom/google/vr/platform/unity/UnityVrActivityListener$3;-><init>(Lcom/google/vr/platform/unity/UnityVrActivityListener;I)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/player/UnityPlayer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 314
    return-void
.end method

.method public injectKeyUp(I)V
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->unityActivity:Lcom/google/unity/GoogleUnityActivity;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/unity/GoogleUnityActivity;->injectUnityEvent(Landroid/view/InputEvent;)Z

    .line 304
    return-void
.end method

.method public injectMouseMove(II)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 259
    const/4 v2, 0x7

    const/16 v5, 0x2002

    const-wide/16 v6, -0x1

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/vr/platform/unity/UnityVrActivityListener;->injectMotionEventInternal(IIIIJ)J

    .line 261
    return-void
.end method

.method public injectSingleTap()V
    .locals 10

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->tapInProgress:Z

    if-eqz v0, :cond_0

    .line 296
    :goto_0
    return-void

    .line 282
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->tapInProgress:Z

    .line 283
    iget v2, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->touchX:I

    .line 284
    .local v2, "x":I
    iget v3, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->touchY:I

    .line 285
    .local v3, "y":I
    invoke-virtual {p0, v2, v3}, Lcom/google/vr/platform/unity/UnityVrActivityListener;->injectTouchDown(II)J

    move-result-wide v4

    .line 286
    .local v4, "time":J
    iget-object v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->unityActivity:Lcom/google/unity/GoogleUnityActivity;

    invoke-virtual {v0}, Lcom/google/unity/GoogleUnityActivity;->getUnityPlayer()Lcom/unity3d/player/UnityPlayer;

    move-result-object v6

    new-instance v0, Lcom/google/vr/platform/unity/UnityVrActivityListener$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/platform/unity/UnityVrActivityListener$2;-><init>(Lcom/google/vr/platform/unity/UnityVrActivityListener;IIJ)V

    const-wide/16 v8, 0x32

    invoke-virtual {v6, v0, v8, v9}, Lcom/unity3d/player/UnityPlayer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public injectTouchDown(II)J
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 237
    const/4 v2, 0x0

    const/16 v5, 0x1002

    const-wide/16 v6, -0x1

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/vr/platform/unity/UnityVrActivityListener;->injectMotionEventInternal(IIIIJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public injectTouchUp(IIJ)V
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "downTime"    # J

    .prologue
    .line 249
    const/4 v2, 0x1

    const/16 v5, 0x1002

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/vr/platform/unity/UnityVrActivityListener;->injectMotionEventInternal(IIIIJ)J

    .line 251
    return-void
.end method

.method public launchConfigureActivity()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->unityActivity:Lcom/google/unity/GoogleUnityActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/vr/cardboard/UiUtils;->launchOrInstallCardboard(Landroid/content/Context;Z)V

    .line 183
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 146
    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-ne p1, v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->vrModeEnabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 140
    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-ne p1, v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->vrModeEnabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause(Z)V
    .locals 2
    .param p1, "paused"    # Z

    .prologue
    .line 131
    if-eqz p1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->nfcUtils:Lcom/google/vr/cardboard/NFCUtils;

    iget-object v1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->unityActivity:Lcom/google/unity/GoogleUnityActivity;

    invoke-virtual {v0, v1}, Lcom/google/vr/cardboard/NFCUtils;->onPause(Landroid/app/Activity;)V

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->nfcUtils:Lcom/google/vr/cardboard/NFCUtils;

    iget-object v1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->unityActivity:Lcom/google/unity/GoogleUnityActivity;

    invoke-virtual {v0, v1}, Lcom/google/vr/cardboard/NFCUtils;->onResume(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onSystemUiVisibilityChange(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->tapIsTrigger:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->vrModeEnabled:Z

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/google/vr/platform/unity/UnityVrActivityListener;->injectSingleTap()V

    .line 179
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->tapIsTrigger:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->vrModeEnabled:Z

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/google/vr/platform/unity/UnityVrActivityListener;->injectSingleTap()V

    .line 156
    :cond_0
    const/4 v0, 0x1

    .line 158
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlignmentMarkerEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->alignmentMarkerEnabled:Z

    .line 200
    iget-object v1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    iget-boolean v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->alignmentMarkerEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->vrModeEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/vr/cardboard/UiLayer;->setAlignmentMarkerEnabled(Z)V

    .line 201
    return-void

    .line 200
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSettingsButtonEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->settingsButtonEnabled:Z

    .line 195
    iget-object v1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    iget-boolean v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->settingsButtonEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->vrModeEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/vr/cardboard/UiLayer;->setSettingsButtonEnabled(Z)V

    .line 196
    return-void

    .line 195
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShowVrBackButtonOnlyInVR(Z)V
    .locals 1
    .param p1, "only"    # Z

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->showVrBackButtonOnlyInVR:Z

    .line 214
    iget-boolean v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->vrBackButtonEnabled:Z

    invoke-virtual {p0, v0}, Lcom/google/vr/platform/unity/UnityVrActivityListener;->setVRBackButtonEnabled(Z)V

    .line 215
    return-void
.end method

.method public setTapIsTrigger(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 218
    iput-boolean p1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->tapIsTrigger:Z

    .line 219
    return-void
.end method

.method public setTouchCoordinates(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 222
    iput p1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->touchX:I

    .line 223
    iput p2, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->touchY:I

    .line 224
    iget-boolean v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->tapIsTrigger:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->tapInProgress:Z

    if-nez v0, :cond_0

    .line 225
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/platform/unity/UnityVrActivityListener;->injectMouseMove(II)V

    .line 227
    :cond_0
    return-void
.end method

.method public setVRBackButtonEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->vrBackButtonEnabled:Z

    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "backButtonListener":Ljava/lang/Runnable;
    iget-boolean v1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->vrBackButtonEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->vrModeEnabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->showVrBackButtonOnlyInVR:Z

    if-nez v1, :cond_1

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->vrBackButtonListener:Ljava/lang/Runnable;

    .line 209
    :cond_1
    iget-object v1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    invoke-virtual {v1, v0}, Lcom/google/vr/cardboard/UiLayer;->setBackButtonListener(Ljava/lang/Runnable;)V

    .line 210
    return-void
.end method

.method public setVRModeEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->vrModeEnabled:Z

    .line 188
    iget-boolean v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->settingsButtonEnabled:Z

    invoke-virtual {p0, v0}, Lcom/google/vr/platform/unity/UnityVrActivityListener;->setSettingsButtonEnabled(Z)V

    .line 189
    iget-boolean v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->alignmentMarkerEnabled:Z

    invoke-virtual {p0, v0}, Lcom/google/vr/platform/unity/UnityVrActivityListener;->setAlignmentMarkerEnabled(Z)V

    .line 190
    iget-boolean v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->vrBackButtonEnabled:Z

    invoke-virtual {p0, v0}, Lcom/google/vr/platform/unity/UnityVrActivityListener;->setVRBackButtonEnabled(Z)V

    .line 191
    return-void
.end method
