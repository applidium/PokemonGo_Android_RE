.class Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventStubImpl;
.super Ljava/lang/Object;
.source "AccessibilityEventCompat.java"

# interfaces
.implements Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityEventStubImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public appendRecord(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/Object;)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "record"    # Ljava/lang/Object;

    .prologue
    .line 41
    return-void
.end method

.method public getContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public getRecord(Landroid/view/accessibility/AccessibilityEvent;I)Ljava/lang/Object;
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "index"    # I

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecordCount(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "types"    # I

    .prologue
    .line 51
    return-void
.end method
