.class Landroid/support/v4/view/ViewCompat$JBViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JBViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1225
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1270
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->getAccessibilityNodeProvider(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    .line 1271
    .local v0, "compat":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1272
    new-instance v1, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;

    invoke-direct {v1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;-><init>(Ljava/lang/Object;)V

    .line 1274
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFitsSystemWindows(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1299
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public getImportantForAccessibility(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1252
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getMinimumHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1289
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getMinimumWidth(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1284
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->getMinimumWidth(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1279
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public hasOverlappingRendering(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1304
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->hasOverlappingRendering(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public hasTransientState(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1228
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->hasTransientState(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 1266
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/ViewCompatJB;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1236
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1237
    return-void
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;IIII)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1240
    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/view/ViewCompatJB;->postInvalidateOnAnimation(Landroid/view/View;IIII)V

    .line 1241
    return-void
.end method

.method public postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 1244
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatJB;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1245
    return-void
.end method

.method public postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "delayMillis"    # J

    .prologue
    .line 1248
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/view/ViewCompatJB;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 1249
    return-void
.end method

.method public requestApplyInsets(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1294
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->requestApplyInsets(Landroid/view/View;)V

    .line 1295
    return-void
.end method

.method public setHasTransientState(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasTransientState"    # Z

    .prologue
    .line 1232
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatJB;->setHasTransientState(Landroid/view/View;Z)V

    .line 1233
    return-void
.end method

.method public setImportantForAccessibility(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "mode"    # I

    .prologue
    .line 1259
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 1260
    const/4 p2, 0x2

    .line 1262
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatJB;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 1263
    return-void
.end method
