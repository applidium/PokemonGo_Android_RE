.class Landroid/support/v4/widget/PopupWindowCompatApi23;
.super Ljava/lang/Object;
.source "PopupWindowCompatApi23.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getOverlapAnchor(Landroid/widget/PopupWindow;)Z
    .locals 1
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getOverlapAnchor()Z

    move-result v0

    return v0
.end method

.method static getWindowLayoutType(Landroid/widget/PopupWindow;)I
    .locals 1
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWindowLayoutType()I

    move-result v0

    return v0
.end method

.method static setOverlapAnchor(Landroid/widget/PopupWindow;Z)V
    .locals 0
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p1, "overlapAnchor"    # Z

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    .line 25
    return-void
.end method

.method static setWindowLayoutType(Landroid/widget/PopupWindow;I)V
    .locals 0
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p1, "layoutType"    # I

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 33
    return-void
.end method
