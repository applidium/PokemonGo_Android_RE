.class Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventIcsImpl;
.super Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventStubImpl;
.source "AccessibilityEventCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityEventIcsImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventStubImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public appendRecord(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/Object;)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "record"    # Ljava/lang/Object;

    .prologue
    .line 68
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatIcs;->appendRecord(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public getRecord(Landroid/view/accessibility/AccessibilityEvent;I)Ljava/lang/Object;
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "index"    # I

    .prologue
    .line 73
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatIcs;->getRecord(Landroid/view/accessibility/AccessibilityEvent;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRecordCount(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 78
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatIcs;->getRecordCount(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v0

    return v0
.end method
