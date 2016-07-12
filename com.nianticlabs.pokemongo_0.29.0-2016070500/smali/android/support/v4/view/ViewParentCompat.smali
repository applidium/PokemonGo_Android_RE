.class public Landroid/support/v4/view/ViewParentCompat;
.super Ljava/lang/Object;
.source "ViewParentCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/ViewParentCompat$ViewParentCompatLollipopImpl;,
        Landroid/support/v4/view/ViewParentCompat$ViewParentCompatKitKatImpl;,
        Landroid/support/v4/view/ViewParentCompat$ViewParentCompatICSImpl;,
        Landroid/support/v4/view/ViewParentCompat$ViewParentCompatStubImpl;,
        Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 203
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 204
    .local v0, "version":I
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 205
    new-instance v1, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatLollipopImpl;

    invoke-direct {v1}, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatLollipopImpl;-><init>()V

    sput-object v1, Landroid/support/v4/view/ViewParentCompat;->IMPL:Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;

    .line 213
    :goto_0
    return-void

    .line 206
    :cond_0
    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 207
    new-instance v1, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatKitKatImpl;

    invoke-direct {v1}, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatKitKatImpl;-><init>()V

    sput-object v1, Landroid/support/v4/view/ViewParentCompat;->IMPL:Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;

    goto :goto_0

    .line 208
    :cond_1
    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 209
    new-instance v1, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatICSImpl;

    invoke-direct {v1}, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatICSImpl;-><init>()V

    sput-object v1, Landroid/support/v4/view/ViewParentCompat;->IMPL:Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;

    goto :goto_0

    .line 211
    :cond_2
    new-instance v1, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatStubImpl;

    invoke-direct {v1}, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatStubImpl;-><init>()V

    sput-object v1, Landroid/support/v4/view/ViewParentCompat;->IMPL:Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    return-void
.end method

.method public static notifySubtreeAccessibilityStateChanged(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "source"    # Landroid/view/View;
    .param p3, "changeType"    # I

    .prologue
    .line 424
    sget-object v0, Landroid/support/v4/view/ViewParentCompat;->IMPL:Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;->notifySubtreeAccessibilityStateChanged(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V

    .line 425
    return-void
.end method

.method public static onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .locals 6
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 379
    sget-object v0, Landroid/support/v4/view/ViewParentCompat;->IMPL:Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;->onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public static onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .locals 1
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    .line 404
    sget-object v0, Landroid/support/v4/view/ViewParentCompat;->IMPL:Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;->onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public static onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[I)V
    .locals 6
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .prologue
    .line 355
    sget-object v0, Landroid/support/v4/view/ViewParentCompat;->IMPL:Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;->onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[I)V

    .line 356
    return-void
.end method

.method public static onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIII)V
    .locals 7
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    .line 330
    sget-object v0, Landroid/support/v4/view/ViewParentCompat;->IMPL:Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIII)V

    .line 331
    return-void
.end method

.method public static onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 289
    sget-object v0, Landroid/support/v4/view/ViewParentCompat;->IMPL:Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;->onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V

    .line 290
    return-void
.end method

.method public static onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 268
    sget-object v0, Landroid/support/v4/view/ViewParentCompat;->IMPL:Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;->onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;)V
    .locals 1
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 304
    sget-object v0, Landroid/support/v4/view/ViewParentCompat;->IMPL:Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;->onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;)V

    .line 305
    return-void
.end method

.method public static requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 241
    sget-object v0, Landroid/support/v4/view/ViewParentCompat;->IMPL:Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;->requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method
