.class Landroid/support/v4/view/ScaleGestureDetectorCompatKitKat;
.super Ljava/lang/Object;
.source "ScaleGestureDetectorCompatKitKat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static isQuickScaleEnabled(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "scaleGestureDetector"    # Ljava/lang/Object;

    .prologue
    .line 37
    check-cast p0, Landroid/view/ScaleGestureDetector;

    .end local p0    # "scaleGestureDetector":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/ScaleGestureDetector;->isQuickScaleEnabled()Z

    move-result v0

    return v0
.end method

.method public static setQuickScaleEnabled(Ljava/lang/Object;Z)V
    .locals 0
    .param p0, "scaleGestureDetector"    # Ljava/lang/Object;
    .param p1, "enabled"    # Z

    .prologue
    .line 33
    check-cast p0, Landroid/view/ScaleGestureDetector;

    .end local p0    # "scaleGestureDetector":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    .line 34
    return-void
.end method
