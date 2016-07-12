.class Landroid/support/v4/view/ViewCompat$JbMr2ViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$JbMr1ViewCompatImpl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JbMr2ViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1361
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$JbMr1ViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1369
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJellybeanMr2;->getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "clipBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1364
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatJellybeanMr2;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1365
    return-void
.end method
