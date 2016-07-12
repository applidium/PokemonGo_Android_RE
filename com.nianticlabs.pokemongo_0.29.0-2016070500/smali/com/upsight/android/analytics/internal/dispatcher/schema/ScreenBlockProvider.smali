.class public Lcom/upsight/android/analytics/internal/dispatcher/schema/ScreenBlockProvider;
.super Lcom/upsight/android/analytics/provider/UpsightDataProvider;
.source "ScreenBlockProvider.java"


# static fields
.field private static final ANDROID_SCREEN_SCALE:F = 1.0f

.field public static final DPI_KEY:Ljava/lang/String; = "screen.dpi"

.field public static final HEIGHT_KEY:Ljava/lang/String; = "screen.height"

.field public static final SCALE_KEY:Ljava/lang/String; = "screen.scale"

.field public static final WIDTH_KEY:Ljava/lang/String; = "screen.width"


# instance fields
.field private final mLogger:Lcom/upsight/android/logger/UpsightLogger;


# direct methods
.method constructor <init>(Lcom/upsight/android/UpsightContext;)V
    .locals 3
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/upsight/android/analytics/provider/UpsightDataProvider;-><init>()V

    .line 58
    const-string v1, "screen.scale"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/upsight/android/analytics/internal/dispatcher/schema/ScreenBlockProvider;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/ScreenBlockProvider;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 60
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/schema/ScreenBlockProvider;->getDefaultDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 61
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    if-eqz v0, :cond_0

    .line 62
    const-string v1, "screen.dpi"

    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/upsight/android/analytics/internal/dispatcher/schema/ScreenBlockProvider;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    const-string v1, "screen.width"

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/upsight/android/analytics/internal/dispatcher/schema/ScreenBlockProvider;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    const-string v1, "screen.height"

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/upsight/android/analytics/internal/dispatcher/schema/ScreenBlockProvider;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    :cond_0
    return-void
.end method

.method private getDefaultDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 76
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 77
    .local v2, "wm":Landroid/view/WindowManager;
    if-eqz v2, :cond_1

    .line 78
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 79
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 85
    .end local v0    # "display":Landroid/view/Display;
    :cond_0
    :goto_0
    return-object v1

    .line 83
    :cond_1
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/ScreenBlockProvider;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v4, "ScreenBlock"

    const-string v5, "Could not retrieve screen size, windowManager=null"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public availableKeys()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "screen.width"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "screen.height"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "screen.scale"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "screen.dpi"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
