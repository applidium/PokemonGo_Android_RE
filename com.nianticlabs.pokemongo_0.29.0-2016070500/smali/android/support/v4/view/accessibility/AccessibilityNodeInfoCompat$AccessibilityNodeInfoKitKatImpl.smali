.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoKitKatImpl;
.super Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr2Impl;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoKitKatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1607
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr2Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public canOpenPopup(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1714
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->canOpenPopup(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getCollectionInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1620
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getCollectionInfo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCollectionInfoColumnCount(Ljava/lang/Object;)I
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1644
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionInfo;->getColumnCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getCollectionInfoRowCount(Ljava/lang/Object;)I
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1649
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionInfo;->getRowCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getCollectionItemColumnIndex(Ljava/lang/Object;)I
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1674
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionItemInfo;->getColumnIndex(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getCollectionItemColumnSpan(Ljava/lang/Object;)I
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1679
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionItemInfo;->getColumnSpan(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getCollectionItemInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1659
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getCollectionItemInfo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCollectionItemRowIndex(Ljava/lang/Object;)I
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1684
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionItemInfo;->getRowIndex(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getCollectionItemRowSpan(Ljava/lang/Object;)I
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1689
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionItemInfo;->getRowSpan(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getExtras(Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1724
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getExtras(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getInputType(Ljava/lang/Object;)I
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1729
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getInputType(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getLiveRegion(Ljava/lang/Object;)I
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1610
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getLiveRegion(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getRangeInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1664
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getRangeInfo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCollectionInfoHierarchical(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1654
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionInfo;->isHierarchical(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCollectionItemHeading(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1694
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionItemInfo;->isHeading(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isContentInvalid(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1709
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->isContentInvalid(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDismissable(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1739
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->isDismissable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMultiLine(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1749
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->isMultiLine(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public obtainCollectionInfo(IIZI)Ljava/lang/Object;
    .locals 1
    .param p1, "rowCount"    # I
    .param p2, "columnCount"    # I
    .param p3, "hierarchical"    # Z
    .param p4, "selectionMode"    # I

    .prologue
    .line 1631
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->obtainCollectionInfo(IIZI)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public obtainCollectionItemInfo(IIIIZZ)Ljava/lang/Object;
    .locals 1
    .param p1, "rowIndex"    # I
    .param p2, "rowSpan"    # I
    .param p3, "columnIndex"    # I
    .param p4, "columnSpan"    # I
    .param p5, "heading"    # Z
    .param p6, "selected"    # Z

    .prologue
    .line 1638
    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->obtainCollectionItemInfo(IIIIZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setCanOpenPopup(Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "opensPopup"    # Z

    .prologue
    .line 1719
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setCanOpenPopup(Ljava/lang/Object;Z)V

    .line 1720
    return-void
.end method

.method public setCollectionInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "collectionInfo"    # Ljava/lang/Object;

    .prologue
    .line 1625
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setCollectionInfo(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1626
    return-void
.end method

.method public setCollectionItemInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "collectionItemInfo"    # Ljava/lang/Object;

    .prologue
    .line 1699
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setCollectionItemInfo(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1700
    return-void
.end method

.method public setContentInvalid(Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "contentInvalid"    # Z

    .prologue
    .line 1704
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setContentInvalid(Ljava/lang/Object;Z)V

    .line 1705
    return-void
.end method

.method public setDismissable(Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "dismissable"    # Z

    .prologue
    .line 1744
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setDismissable(Ljava/lang/Object;Z)V

    .line 1745
    return-void
.end method

.method public setInputType(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "inputType"    # I

    .prologue
    .line 1734
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setInputType(Ljava/lang/Object;I)V

    .line 1735
    return-void
.end method

.method public setLiveRegion(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "mode"    # I

    .prologue
    .line 1615
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setLiveRegion(Ljava/lang/Object;I)V

    .line 1616
    return-void
.end method

.method public setMultiLine(Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "multiLine"    # Z

    .prologue
    .line 1754
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setMultiLine(Ljava/lang/Object;Z)V

    .line 1755
    return-void
.end method

.method public setRangeInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "rangeInfo"    # Ljava/lang/Object;

    .prologue
    .line 1669
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setRangeInfo(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1670
    return-void
.end method
