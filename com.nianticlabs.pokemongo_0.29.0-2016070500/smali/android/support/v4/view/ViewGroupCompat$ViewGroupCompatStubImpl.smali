.class Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatStubImpl;
.super Ljava/lang/Object;
.source "ViewGroupCompat.java"

# interfaces
.implements Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewGroupCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewGroupCompatStubImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutMode(Landroid/view/ViewGroup;)I
    .locals 1
    .param p1, "group"    # Landroid/view/ViewGroup;

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public getNestedScrollAxes(Landroid/view/ViewGroup;)I
    .locals 1
    .param p1, "group"    # Landroid/view/ViewGroup;

    .prologue
    .line 88
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingParent;

    if-eqz v0, :cond_0

    .line 89
    check-cast p1, Landroid/support/v4/view/NestedScrollingParent;

    .end local p1    # "group":Landroid/view/ViewGroup;
    invoke-interface {p1}, Landroid/support/v4/view/NestedScrollingParent;->getNestedScrollAxes()I

    move-result v0

    .line 91
    :goto_0
    return v0

    .restart local p1    # "group":Landroid/view/ViewGroup;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTransitionGroup(Landroid/view/ViewGroup;)Z
    .locals 1
    .param p1, "group"    # Landroid/view/ViewGroup;

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public setLayoutMode(Landroid/view/ViewGroup;I)V
    .locals 0
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "mode"    # I

    .prologue
    .line 75
    return-void
.end method

.method public setMotionEventSplittingEnabled(Landroid/view/ViewGroup;Z)V
    .locals 0
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "split"    # Z

    .prologue
    .line 65
    return-void
.end method

.method public setTransitionGroup(Landroid/view/ViewGroup;Z)V
    .locals 0
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "isTransitionGroup"    # Z

    .prologue
    .line 79
    return-void
.end method
