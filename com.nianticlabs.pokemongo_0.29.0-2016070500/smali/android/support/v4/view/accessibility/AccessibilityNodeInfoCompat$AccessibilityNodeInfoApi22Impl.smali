.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi22Impl;
.super Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi21Impl;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoApi22Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1844
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi21Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getTraversalAfter(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1862
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi22;->getTraversalAfter(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTraversalBefore(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1847
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi22;->getTraversalBefore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setTraversalAfter(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 1867
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi22;->setTraversalAfter(Ljava/lang/Object;Landroid/view/View;)V

    .line 1868
    return-void
.end method

.method public setTraversalAfter(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "root"    # Landroid/view/View;
    .param p3, "virtualDescendantId"    # I

    .prologue
    .line 1872
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi22;->setTraversalAfter(Ljava/lang/Object;Landroid/view/View;I)V

    .line 1873
    return-void
.end method

.method public setTraversalBefore(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 1852
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi22;->setTraversalBefore(Ljava/lang/Object;Landroid/view/View;)V

    .line 1853
    return-void
.end method

.method public setTraversalBefore(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "root"    # Landroid/view/View;
    .param p3, "virtualDescendantId"    # I

    .prologue
    .line 1857
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi22;->setTraversalBefore(Ljava/lang/Object;Landroid/view/View;I)V

    .line 1858
    return-void
.end method
