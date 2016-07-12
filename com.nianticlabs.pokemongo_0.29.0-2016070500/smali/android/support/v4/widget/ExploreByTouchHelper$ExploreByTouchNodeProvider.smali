.class Landroid/support/v4/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;
.super Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
.source "ExploreByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ExploreByTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExploreByTouchNodeProvider"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/ExploreByTouchHelper;


# direct methods
.method private constructor <init>(Landroid/support/v4/widget/ExploreByTouchHelper;)V
    .locals 0

    .prologue
    .line 739
    iput-object p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;->this$0:Landroid/support/v4/widget/ExploreByTouchHelper;

    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/widget/ExploreByTouchHelper;Landroid/support/v4/widget/ExploreByTouchHelper$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/widget/ExploreByTouchHelper;
    .param p2, "x1"    # Landroid/support/v4/widget/ExploreByTouchHelper$1;

    .prologue
    .line 739
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;-><init>(Landroid/support/v4/widget/ExploreByTouchHelper;)V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1
    .param p1, "virtualViewId"    # I

    .prologue
    .line 742
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;->this$0:Landroid/support/v4/widget/ExploreByTouchHelper;

    # invokes: Landroid/support/v4/widget/ExploreByTouchHelper;->createNode(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-static {v0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->access$100(Landroid/support/v4/widget/ExploreByTouchHelper;I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 747
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;->this$0:Landroid/support/v4/widget/ExploreByTouchHelper;

    # invokes: Landroid/support/v4/widget/ExploreByTouchHelper;->performAction(IILandroid/os/Bundle;)Z
    invoke-static {v0, p1, p2, p3}, Landroid/support/v4/widget/ExploreByTouchHelper;->access$200(Landroid/support/v4/widget/ExploreByTouchHelper;IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
