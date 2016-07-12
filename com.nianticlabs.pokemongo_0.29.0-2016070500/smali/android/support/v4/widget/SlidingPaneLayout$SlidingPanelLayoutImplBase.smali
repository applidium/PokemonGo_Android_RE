.class Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;
.super Ljava/lang/Object;
.source "SlidingPaneLayout.java"

# interfaces
.implements Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SlidingPanelLayoutImplBase"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateChildRegion(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V
    .locals 4
    .param p1, "parent"    # Landroid/support/v4/widget/SlidingPaneLayout;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 1485
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;IIII)V

    .line 1487
    return-void
.end method
