.class Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;
.super Ljava/lang/Object;
.source "AccessibilityEventCompatKitKat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 1
    .param p0, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v0

    return v0
.end method

.method public static setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 0
    .param p0, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p1, "changeTypes"    # I

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 24
    return-void
.end method
