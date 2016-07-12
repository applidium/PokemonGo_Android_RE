.class Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsMr1Impl;
.super Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsImpl;
.source "AccessibilityRecordCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityRecordIcsMr1Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 476
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxScrollX(Ljava/lang/Object;)I
    .locals 1
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 479
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcsMr1;->getMaxScrollX(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getMaxScrollY(Ljava/lang/Object;)I
    .locals 1
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 484
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcsMr1;->getMaxScrollY(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setMaxScrollX(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "maxScrollX"    # I

    .prologue
    .line 489
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcsMr1;->setMaxScrollX(Ljava/lang/Object;I)V

    .line 490
    return-void
.end method

.method public setMaxScrollY(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "maxScrollY"    # I

    .prologue
    .line 494
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcsMr1;->setMaxScrollY(Ljava/lang/Object;I)V

    .line 495
    return-void
.end method
