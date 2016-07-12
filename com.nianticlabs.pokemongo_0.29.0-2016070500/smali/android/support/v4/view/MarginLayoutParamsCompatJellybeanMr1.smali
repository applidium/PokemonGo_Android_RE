.class Landroid/support/v4/view/MarginLayoutParamsCompatJellybeanMr1;
.super Ljava/lang/Object;
.source "MarginLayoutParamsCompatJellybeanMr1.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLayoutDirection(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 1
    .param p0, "lp"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 44
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getLayoutDirection()I

    move-result v0

    return v0
.end method

.method public static getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 1
    .param p0, "lp"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    return v0
.end method

.method public static getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 1
    .param p0, "lp"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    return v0
.end method

.method public static isMarginRelative(Landroid/view/ViewGroup$MarginLayoutParams;)Z
    .locals 1
    .param p0, "lp"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 40
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->isMarginRelative()Z

    move-result v0

    return v0
.end method

.method public static resolveLayoutDirection(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .locals 0
    .param p0, "lp"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p1, "layoutDirection"    # I

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    .line 54
    return-void
.end method

.method public static setLayoutDirection(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .locals 0
    .param p0, "lp"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p1, "layoutDirection"    # I

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setLayoutDirection(I)V

    .line 49
    return-void
.end method

.method public static setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .locals 0
    .param p0, "lp"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p1, "marginEnd"    # I

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 37
    return-void
.end method

.method public static setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .locals 0
    .param p0, "lp"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p1, "marginStart"    # I

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 33
    return-void
.end method
