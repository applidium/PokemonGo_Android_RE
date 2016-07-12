.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatJellybeanMr2;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompatJellybeanMr2.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findAccessibilityNodeInfosByViewId(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "viewId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 36
    .local v0, "result":Ljava/util/List;
    check-cast v0, Ljava/util/List;

    .end local v0    # "result":Ljava/util/List;
    return-object v0
.end method

.method public static getTextSelectionEnd(Ljava/lang/Object;)I
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .prologue
    .line 48
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getTextSelectionEnd()I

    move-result v0

    return v0
.end method

.method public static getTextSelectionStart(Ljava/lang/Object;)I
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .prologue
    .line 44
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getTextSelectionStart()I

    move-result v0

    return v0
.end method

.method public static getViewIdResourceName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isEditable(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .prologue
    .line 52
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEditable()Z

    move-result v0

    return v0
.end method

.method public static refresh(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .prologue
    .line 60
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->refresh()Z

    move-result v0

    return v0
.end method

.method public static setEditable(Ljava/lang/Object;Z)V
    .locals 0
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "editable"    # Z

    .prologue
    .line 56
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    .line 57
    return-void
.end method

.method public static setTextSelection(Ljava/lang/Object;II)V
    .locals 0
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 40
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTextSelection(II)V

    .line 41
    return-void
.end method

.method public static setViewIdResourceName(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "viewId"    # Ljava/lang/String;

    .prologue
    .line 26
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setViewIdResourceName(Ljava/lang/String;)V

    .line 27
    return-void
.end method
