.class Landroid/support/v4/widget/PopupWindowCompat$GingerbreadPopupWindowImpl;
.super Landroid/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;
.source "PopupWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/PopupWindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GingerbreadPopupWindowImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getWindowLayoutType(Landroid/widget/PopupWindow;)I
    .locals 1
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;

    .prologue
    .line 81
    invoke-static {p1}, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->getWindowLayoutType(Landroid/widget/PopupWindow;)I

    move-result v0

    return v0
.end method

.method public setWindowLayoutType(Landroid/widget/PopupWindow;I)V
    .locals 0
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p2, "layoutType"    # I

    .prologue
    .line 76
    invoke-static {p1, p2}, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 77
    return-void
.end method
