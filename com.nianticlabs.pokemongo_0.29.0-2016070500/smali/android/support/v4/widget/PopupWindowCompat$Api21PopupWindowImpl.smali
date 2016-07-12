.class Landroid/support/v4/widget/PopupWindowCompat$Api21PopupWindowImpl;
.super Landroid/support/v4/widget/PopupWindowCompat$KitKatPopupWindowImpl;
.source "PopupWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/PopupWindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api21PopupWindowImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/support/v4/widget/PopupWindowCompat$KitKatPopupWindowImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getOverlapAnchor(Landroid/widget/PopupWindow;)Z
    .locals 1
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;

    .prologue
    .line 104
    invoke-static {p1}, Landroid/support/v4/widget/PopupWindowCompatApi21;->getOverlapAnchor(Landroid/widget/PopupWindow;)Z

    move-result v0

    return v0
.end method

.method public setOverlapAnchor(Landroid/widget/PopupWindow;Z)V
    .locals 0
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p2, "overlapAnchor"    # Z

    .prologue
    .line 99
    invoke-static {p1, p2}, Landroid/support/v4/widget/PopupWindowCompatApi21;->setOverlapAnchor(Landroid/widget/PopupWindow;Z)V

    .line 100
    return-void
.end method
