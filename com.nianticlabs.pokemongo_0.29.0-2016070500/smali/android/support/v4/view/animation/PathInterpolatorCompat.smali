.class public Landroid/support/v4/view/animation/PathInterpolatorCompat;
.super Ljava/lang/Object;
.source "PathInterpolatorCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static create(FF)Landroid/view/animation/Interpolator;
    .locals 2
    .param p0, "controlX"    # F
    .param p1, "controlY"    # F

    .prologue
    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 63
    invoke-static {p0, p1}, Landroid/support/v4/view/animation/PathInterpolatorCompatApi21;->create(FF)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Landroid/support/v4/view/animation/PathInterpolatorCompatBase;->create(FF)Landroid/view/animation/Interpolator;

    move-result-object v0

    goto :goto_0
.end method

.method public static create(FFFF)Landroid/view/animation/Interpolator;
    .locals 2
    .param p0, "controlX1"    # F
    .param p1, "controlY1"    # F
    .param p2, "controlX2"    # F
    .param p3, "controlY2"    # F

    .prologue
    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 81
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/view/animation/PathInterpolatorCompatApi21;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/view/animation/PathInterpolatorCompatBase;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    goto :goto_0
.end method

.method public static create(Landroid/graphics/Path;)Landroid/view/animation/Interpolator;
    .locals 2
    .param p0, "path"    # Landroid/graphics/Path;

    .prologue
    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 48
    invoke-static {p0}, Landroid/support/v4/view/animation/PathInterpolatorCompatApi21;->create(Landroid/graphics/Path;)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 50
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/animation/PathInterpolatorCompatBase;->create(Landroid/graphics/Path;)Landroid/view/animation/Interpolator;

    move-result-object v0

    goto :goto_0
.end method
