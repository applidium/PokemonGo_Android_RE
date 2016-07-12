.class public Landroid/support/v4/widget/NestedScrollView;
.super Landroid/widget/FrameLayout;
.source "NestedScrollView.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingChild;
.implements Landroid/support/v4/view/NestedScrollingParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/NestedScrollView$AccessibilityDelegate;,
        Landroid/support/v4/widget/NestedScrollView$SavedState;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_DELEGATE:Landroid/support/v4/widget/NestedScrollView$AccessibilityDelegate;

.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final INVALID_POINTER:I = -0x1

.field static final MAX_SCROLL_FACTOR:F = 0.5f

.field private static final SCROLLVIEW_STYLEABLE:[I

.field private static final TAG:Ljava/lang/String; = "NestedScrollView"


# instance fields
.field private mActivePointerId:I

.field private final mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mFillViewport:Z

.field private mIsBeingDragged:Z

.field private mIsLaidOut:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionY:I

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNestedYOffset:I

.field private final mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

.field private mSavedState:Landroid/support/v4/widget/NestedScrollView$SavedState;

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I

.field private mScroller:Landroid/support/v4/widget/ScrollerCompat;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScrollFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 145
    new-instance v0, Landroid/support/v4/widget/NestedScrollView$AccessibilityDelegate;

    invoke-direct {v0}, Landroid/support/v4/widget/NestedScrollView$AccessibilityDelegate;-><init>()V

    sput-object v0, Landroid/support/v4/widget/NestedScrollView;->ACCESSIBILITY_DELEGATE:Landroid/support/v4/widget/NestedScrollView$AccessibilityDelegate;

    .line 147
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101017a

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/widget/NestedScrollView;->SCROLLVIEW_STYLEABLE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 165
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 87
    iput-boolean v3, p0, Landroid/support/v4/widget/NestedScrollView;->mIsLayoutDirty:Z

    .line 88
    iput-boolean v2, p0, Landroid/support/v4/widget/NestedScrollView;->mIsLaidOut:Z

    .line 95
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 102
    iput-boolean v2, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 118
    iput-boolean v3, p0, Landroid/support/v4/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    .line 128
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    .line 133
    new-array v1, v4, [I

    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    .line 134
    new-array v1, v4, [I

    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mScrollConsumed:[I

    .line 166
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->initScrollView()V

    .line 168
    sget-object v1, Landroid/support/v4/widget/NestedScrollView;->SCROLLVIEW_STYLEABLE:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 171
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->setFillViewport(Z)V

    .line 173
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 175
    new-instance v1, Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-direct {v1, p0}, Landroid/support/v4/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    .line 176
    new-instance v1, Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-direct {v1, p0}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 179
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 181
    sget-object v1, Landroid/support/v4/widget/NestedScrollView;->ACCESSIBILITY_DELEGATE:Landroid/support/v4/widget/NestedScrollView$AccessibilityDelegate;

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 182
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/widget/NestedScrollView;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/NestedScrollView;

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v0

    return v0
.end method

.method private canScroll()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 382
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 383
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 385
    .local v1, "childHeight":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    .line 387
    .end local v1    # "childHeight":I
    :cond_0
    return v2
.end method

.method private static clamp(III)I
    .locals 1
    .param p0, "n"    # I
    .param p1, "my"    # I
    .param p2, "child"    # I

    .prologue
    .line 1712
    if-ge p1, p2, :cond_0

    if-gez p0, :cond_2

    .line 1728
    :cond_0
    const/4 p0, 0x0

    .line 1738
    .end local p0    # "n":I
    :cond_1
    :goto_0
    return p0

    .line 1730
    .restart local p0    # "n":I
    :cond_2
    add-int v0, p1, p0

    if-le v0, p2, :cond_1

    .line 1736
    sub-int p0, p2, p1

    goto :goto_0
.end method

.method private doScrollY(I)V
    .locals 2
    .param p1, "delta"    # I

    .prologue
    const/4 v1, 0x0

    .line 1231
    if-eqz p1, :cond_0

    .line 1232
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 1233
    invoke-virtual {p0, v1, p1}, Landroid/support/v4/widget/NestedScrollView;->smoothScrollBy(II)V

    .line 1238
    :cond_0
    :goto_0
    return-void

    .line 1235
    :cond_1
    invoke-virtual {p0, v1, p1}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private endDrag()V
    .locals 1

    .prologue
    .line 1636
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 1638
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->recycleVelocityTracker()V

    .line 1639
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->stopNestedScroll()V

    .line 1641
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 1642
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    .line 1643
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    .line 1645
    :cond_0
    return-void
.end method

.method private ensureGlows()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1666
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 1667
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    if-nez v1, :cond_0

    .line 1668
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1669
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1670
    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1676
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 1673
    :cond_1
    iput-object v3, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1674
    iput-object v3, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    goto :goto_0
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .param p1, "topFocus"    # Z
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .prologue
    .line 977
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Landroid/support/v4/widget/NestedScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 978
    .local v2, "focusables":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 987
    .local v1, "focusCandidate":Landroid/view/View;
    const/4 v3, 0x0

    .line 989
    .local v3, "foundFullyContainedFocusable":Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 990
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_8

    .line 991
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 992
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    .line 993
    .local v9, "viewTop":I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 995
    .local v6, "viewBottom":I
    if-ge p2, v6, :cond_0

    if-ge v9, p3, :cond_0

    .line 1001
    if-ge p2, v9, :cond_1

    if-ge v6, p3, :cond_1

    const/4 v8, 0x1

    .line 1004
    .local v8, "viewIsFullyContained":Z
    :goto_1
    if-nez v1, :cond_2

    .line 1006
    move-object v1, v5

    .line 1007
    move v3, v8

    .line 990
    .end local v8    # "viewIsFullyContained":Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1001
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 1009
    .restart local v8    # "viewIsFullyContained":Z
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v9, v10, :cond_4

    :cond_3
    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    if-le v6, v10, :cond_5

    :cond_4
    const/4 v7, 0x1

    .line 1014
    .local v7, "viewIsCloserToBoundary":Z
    :goto_3
    if-eqz v3, :cond_6

    .line 1015
    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    .line 1021
    move-object v1, v5

    goto :goto_2

    .line 1009
    .end local v7    # "viewIsCloserToBoundary":Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 1024
    .restart local v7    # "viewIsCloserToBoundary":Z
    :cond_6
    if-eqz v8, :cond_7

    .line 1026
    move-object v1, v5

    .line 1027
    const/4 v3, 0x1

    goto :goto_2

    .line 1028
    :cond_7
    if-eqz v7, :cond_0

    .line 1033
    move-object v1, v5

    goto :goto_2

    .line 1040
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "viewBottom":I
    .end local v7    # "viewIsCloserToBoundary":Z
    .end local v8    # "viewIsFullyContained":Z
    .end local v9    # "viewTop":I
    :cond_8
    return-object v1
.end method

.method private flingWithNestedDispatch(I)V
    .locals 4
    .param p1, "velocityY"    # I

    .prologue
    const/4 v3, 0x0

    .line 1624
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    .line 1625
    .local v1, "scrollY":I
    if-gtz v1, :cond_0

    if-lez p1, :cond_3

    :cond_0
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v2

    if-lt v1, v2, :cond_1

    if-gez p1, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 1627
    .local v0, "canFling":Z
    :goto_0
    int-to-float v2, p1

    invoke-virtual {p0, v3, v2}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1628
    int-to-float v2, p1

    invoke-virtual {p0, v3, v2, v0}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    .line 1629
    if-eqz v0, :cond_2

    .line 1630
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->fling(I)V

    .line 1633
    :cond_2
    return-void

    .line 1625
    .end local v0    # "canFling":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getScrollRange()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 951
    const/4 v1, 0x0

    .line 952
    .local v1, "scrollRange":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 953
    invoke-virtual {p0, v5}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 954
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 957
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return v1
.end method

.method private getVerticalScrollFactorCompat()F
    .locals 5

    .prologue
    .line 877
    iget v2, p0, Landroid/support/v4/widget/NestedScrollView;->mVerticalScrollFactor:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 878
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 879
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 880
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101004d

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 882
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Expected theme to define listPreferredItemHeight."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 885
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Landroid/support/v4/widget/NestedScrollView;->mVerticalScrollFactor:F

    .line 888
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "outValue":Landroid/util/TypedValue;
    :cond_1
    iget v2, p0, Landroid/support/v4/widget/NestedScrollView;->mVerticalScrollFactor:F

    return v2
.end method

.method private inChild(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 520
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 521
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    .line 522
    .local v1, "scrollY":I
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 523
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    const/4 v2, 0x1

    .line 528
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "scrollY":I
    :cond_0
    return v2
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 533
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 537
    :goto_0
    return-void

    .line 535
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 4

    .prologue
    .line 332
    new-instance v1, Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/support/v4/widget/ScrollerCompat;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 333
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->setFocusable(Z)V

    .line 334
    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->setDescendantFocusability(I)V

    .line 335
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->setWillNotDraw(Z)V

    .line 336
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 337
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTouchSlop:I

    .line 338
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/NestedScrollView;->mMinimumVelocity:I

    .line 339
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/NestedScrollView;->mMaximumVelocity:I

    .line 340
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 541
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 543
    :cond_0
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .param p1, "descendant"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 1210
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p0, "child"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 1596
    if-ne p0, p1, :cond_1

    .line 1601
    :cond_0
    :goto_0
    return v1

    .line 1600
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1601
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-static {v0, p1}, Landroid/support/v4/widget/NestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 2
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "delta"    # I
    .param p3, "height"    # I

    .prologue
    .line 1218
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1219
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1221
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 831
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 833
    .local v2, "pointerIndex":I
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 834
    .local v1, "pointerId":I
    iget v3, p0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 838
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 839
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    .line 840
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    iput v3, p0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    .line 841
    iget-object v3, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 842
    iget-object v3, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 845
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 838
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 548
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 550
    :cond_0
    return-void
.end method

.method private scrollAndFocus(III)Z
    .locals 8
    .param p1, "direction"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .prologue
    .line 1123
    const/4 v3, 0x1

    .line 1125
    .local v3, "handled":Z
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v4

    .line 1126
    .local v4, "height":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    .line 1127
    .local v1, "containerTop":I
    add-int v0, v1, v4

    .line 1128
    .local v0, "containerBottom":I
    const/16 v7, 0x21

    if-ne p1, v7, :cond_2

    const/4 v6, 0x1

    .line 1130
    .local v6, "up":Z
    :goto_0
    invoke-direct {p0, v6, p2, p3}, Landroid/support/v4/widget/NestedScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1131
    .local v5, "newFocused":Landroid/view/View;
    if-nez v5, :cond_0

    .line 1132
    move-object v5, p0

    .line 1135
    :cond_0
    if-lt p2, v1, :cond_3

    if-gt p3, v0, :cond_3

    .line 1136
    const/4 v3, 0x0

    .line 1142
    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1144
    :cond_1
    return v3

    .line 1128
    .end local v5    # "newFocused":Landroid/view/View;
    .end local v6    # "up":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 1138
    .restart local v5    # "newFocused":Landroid/view/View;
    .restart local v6    # "up":Z
    :cond_3
    if-eqz v6, :cond_4

    sub-int v2, p2, v1

    .line 1139
    .local v2, "delta":I
    :goto_2
    invoke-direct {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->doScrollY(I)V

    goto :goto_1

    .line 1138
    .end local v2    # "delta":I
    :cond_4
    sub-int v2, p3, v0

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1373
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1376
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1378
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1380
    .local v0, "scrollDelta":I
    if-eqz v0, :cond_0

    .line 1381
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    .line 1383
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1394
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1395
    .local v0, "delta":I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1396
    .local v1, "scroll":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1397
    if-eqz p2, :cond_2

    .line 1398
    invoke-virtual {p0, v2, v0}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    .line 1403
    :cond_0
    :goto_1
    return v1

    .end local v1    # "scroll":Z
    :cond_1
    move v1, v2

    .line 1395
    goto :goto_0

    .line 1400
    .restart local v1    # "scroll":Z
    :cond_2
    invoke-virtual {p0, v2, v0}, Landroid/support/v4/widget/NestedScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 344
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 345
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 349
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 353
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 354
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 358
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 371
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 372
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 376
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 362
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 363
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .param p1, "direction"    # I

    .prologue
    const/16 v10, 0x82

    const/4 v7, 0x0

    .line 1156
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1157
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1159
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1161
    .local v4, "nextFocused":Landroid/view/View;
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 1163
    .local v3, "maxJump":I
    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v8

    invoke-direct {p0, v4, v3, v8}, Landroid/support/v4/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1164
    iget-object v7, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1165
    iget-object v7, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Landroid/support/v4/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1166
    iget-object v7, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Landroid/support/v4/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 1167
    .local v6, "scrollDelta":I
    invoke-direct {p0, v6}, Landroid/support/v4/widget/NestedScrollView;->doScrollY(I)V

    .line 1168
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1190
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1197
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getDescendantFocusability()I

    move-result v2

    .line 1198
    .local v2, "descendantFocusability":I
    const/high16 v7, 0x20000

    invoke-virtual {p0, v7}, Landroid/support/v4/widget/NestedScrollView;->setDescendantFocusability(I)V

    .line 1199
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->requestFocus()Z

    .line 1200
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->setDescendantFocusability(I)V

    .line 1202
    .end local v2    # "descendantFocusability":I
    :cond_1
    const/4 v7, 0x1

    :cond_2
    return v7

    .line 1171
    .end local v6    # "scrollDelta":I
    :cond_3
    move v6, v3

    .line 1173
    .restart local v6    # "scrollDelta":I
    const/16 v8, 0x21

    if-ne p1, v8, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v8

    if-ge v8, v6, :cond_5

    .line 1174
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v6

    .line 1184
    :cond_4
    :goto_1
    if-eqz v6, :cond_2

    .line 1187
    if-ne p1, v10, :cond_6

    move v7, v6

    :goto_2
    invoke-direct {p0, v7}, Landroid/support/v4/widget/NestedScrollView;->doScrollY(I)V

    goto :goto_0

    .line 1175
    :cond_5
    if-ne p1, v10, :cond_4

    .line 1176
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_4

    .line 1177
    invoke-virtual {p0, v7}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1178
    .local v1, "daBottom":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v8

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v9

    sub-int v5, v8, v9

    .line 1179
    .local v5, "screenBottom":I
    sub-int v8, v1, v5

    if-ge v8, v3, :cond_4

    .line 1180
    sub-int v6, v1, v5

    goto :goto_1

    .line 1187
    .end local v1    # "daBottom":I
    .end local v5    # "screenBottom":I
    :cond_6
    neg-int v7, v6

    goto :goto_2
.end method

.method public computeScroll()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 1340
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1341
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v3

    .line 1342
    .local v3, "oldX":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v4

    .line 1343
    .local v4, "oldY":I
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v12

    .line 1344
    .local v12, "x":I
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v13

    .line 1346
    .local v13, "y":I
    if-ne v3, v12, :cond_0

    if-eq v4, v13, :cond_2

    .line 1347
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v6

    .line 1348
    .local v6, "range":I
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v11

    .line 1349
    .local v11, "overscrollMode":I
    if-eqz v11, :cond_1

    if-ne v11, v10, :cond_3

    if-lez v6, :cond_3

    .line 1352
    .local v10, "canOverscroll":Z
    :cond_1
    :goto_0
    sub-int v1, v12, v3

    sub-int v2, v13, v4

    move-object v0, p0

    move v7, v5

    move v8, v5

    move v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/support/v4/widget/NestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    .line 1355
    if-eqz v10, :cond_2

    .line 1356
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->ensureGlows()V

    .line 1357
    if-gtz v13, :cond_4

    if-lez v4, :cond_4

    .line 1358
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    .line 1365
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v6    # "range":I
    .end local v10    # "canOverscroll":Z
    .end local v11    # "overscrollMode":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_2
    :goto_1
    return-void

    .restart local v3    # "oldX":I
    .restart local v4    # "oldY":I
    .restart local v6    # "range":I
    .restart local v11    # "overscrollMode":I
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    :cond_3
    move v10, v5

    .line 1349
    goto :goto_0

    .line 1359
    .restart local v10    # "canOverscroll":Z
    :cond_4
    if-lt v13, v6, :cond_2

    if-ge v4, v6, :cond_2

    .line 1360
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    goto :goto_1
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x0

    .line 1415
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1

    move v6, v7

    .line 1469
    :cond_0
    :goto_0
    return v6

    .line 1417
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v3

    .line 1418
    .local v3, "height":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v5

    .line 1419
    .local v5, "screenTop":I
    add-int v4, v5, v3

    .line 1421
    .local v4, "screenBottom":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 1424
    .local v2, "fadingEdge":I
    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-lez v8, :cond_2

    .line 1425
    add-int/2addr v5, v2

    .line 1429
    :cond_2
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v7}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 1430
    sub-int/2addr v4, v2

    .line 1433
    :cond_3
    const/4 v6, 0x0

    .line 1435
    .local v6, "scrollYDelta":I
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    if-le v8, v4, :cond_5

    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-le v8, v5, :cond_5

    .line 1440
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v8, v3, :cond_4

    .line 1442
    iget v8, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v5

    add-int/2addr v6, v8

    .line 1449
    :goto_1
    invoke-virtual {p0, v7}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1450
    .local v0, "bottom":I
    sub-int v1, v0, v4

    .line 1451
    .local v1, "distanceToBottom":I
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1453
    goto :goto_0

    .line 1445
    .end local v0    # "bottom":I
    .end local v1    # "distanceToBottom":I
    :cond_4
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v4

    add-int/2addr v6, v8

    goto :goto_1

    .line 1453
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-ge v7, v5, :cond_0

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v4, :cond_0

    .line 1458
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v3, :cond_6

    .line 1460
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v4, v7

    sub-int/2addr v6, v7

    .line 1467
    :goto_2
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v7

    neg-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_0

    .line 1463
    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int v7, v5, v7

    sub-int/2addr v6, v7

    goto :goto_2
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    .prologue
    .line 1306
    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1286
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v1

    .line 1287
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v6

    sub-int v0, v5, v6

    .line 1288
    .local v0, "contentHeight":I
    if-nez v1, :cond_0

    .line 1301
    .end local v0    # "contentHeight":I
    :goto_0
    return v0

    .line 1292
    .restart local v0    # "contentHeight":I
    :cond_0
    invoke-virtual {p0, v7}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1293
    .local v3, "scrollRange":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v4

    .line 1294
    .local v4, "scrollY":I
    sub-int v5, v3, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1295
    .local v2, "overscrollBottom":I
    if-gez v4, :cond_2

    .line 1296
    sub-int/2addr v3, v4

    :cond_1
    :goto_1
    move v0, v3

    .line 1301
    goto :goto_0

    .line 1297
    :cond_2
    if-le v4, v2, :cond_1

    .line 1298
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    goto :goto_1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 466
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z

    .prologue
    .line 225
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    .line 230
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I

    .prologue
    .line 220
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I

    .prologue
    .line 214
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1680
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1681
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v4, :cond_3

    .line 1682
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    .line 1683
    .local v2, "scrollY":I
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1684
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1685
    .local v1, "restoreCount":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v5

    sub-int v3, v4, v5

    .line 1687
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1688
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1689
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1690
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1692
    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1694
    .end local v1    # "restoreCount":I
    .end local v3    # "width":I
    :cond_1
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1695
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1696
    .restart local v1    # "restoreCount":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v5

    sub-int v3, v4, v5

    .line 1697
    .restart local v3    # "width":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v0

    .line 1699
    .local v0, "height":I
    neg-int v4, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v0

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1701
    const/high16 v4, 0x43340000    # 180.0f

    int-to-float v5, v3

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1702
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4, v3, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1703
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1704
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1706
    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1709
    .end local v0    # "height":I
    .end local v1    # "restoreCount":I
    .end local v2    # "scrollY":I
    .end local v3    # "width":I
    :cond_3
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x21

    const/16 v5, 0x82

    .line 478
    iget-object v6, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 480
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->canScroll()Z

    move-result v6

    if-nez v6, :cond_2

    .line 481
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/4 v6, 0x4

    if-eq v4, v6, :cond_1

    .line 482
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 483
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 484
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    invoke-virtual {v4, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 486
    .local v2, "nextFocused":Landroid/view/View;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 516
    .end local v0    # "currentFocused":Landroid/view/View;
    .end local v2    # "nextFocused":Landroid/view/View;
    :cond_1
    :goto_0
    return v3

    .line 493
    :cond_2
    const/4 v1, 0x0

    .line 494
    .local v1, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 495
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_3
    :goto_1
    move v3, v1

    .line 516
    goto :goto_0

    .line 497
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 498
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/NestedScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 500
    :cond_4
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/NestedScrollView;->fullScroll(I)Z

    move-result v1

    .line 502
    goto :goto_1

    .line 504
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 505
    invoke-virtual {p0, v5}, Landroid/support/v4/widget/NestedScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 507
    :cond_5
    invoke-virtual {p0, v5}, Landroid/support/v4/widget/NestedScrollView;->fullScroll(I)Z

    move-result v1

    .line 509
    goto :goto_1

    .line 511
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/NestedScrollView;->pageScroll(I)Z

    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_2

    .line 495
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 13
    .param p1, "velocityY"    # I

    .prologue
    const/4 v3, 0x0

    .line 1612
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1613
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v1

    sub-int v12, v0, v1

    .line 1614
    .local v12, "height":I
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 1616
    .local v11, "bottom":I
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    sub-int v4, v11, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    div-int/lit8 v10, v12, 0x2

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    move v9, v3

    invoke-virtual/range {v0 .. v10}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIIIII)V

    .line 1619
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1621
    .end local v11    # "bottom":I
    .end local v12    # "height":I
    :cond_0
    return-void
.end method

.method public fullScroll(I)Z
    .locals 7
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x0

    .line 1092
    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 1093
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v2

    .line 1095
    .local v2, "height":I
    iget-object v5, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    .line 1096
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 1098
    if-eqz v1, :cond_0

    .line 1099
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    .line 1100
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 1101
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1102
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1103
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1107
    .end local v0    # "count":I
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Landroid/support/v4/widget/NestedScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1    # "down":Z
    .end local v2    # "height":I
    :cond_1
    move v1, v4

    .line 1092
    goto :goto_0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 309
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 310
    const/4 v3, 0x0

    .line 320
    :goto_0
    return v3

    .line 313
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v1

    .line 314
    .local v1, "length":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v4

    sub-int v0, v3, v4

    .line 315
    .local v0, "bottomEdge":I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v2, v3, v0

    .line 316
    .local v2, "span":I
    if-ge v2, v1, :cond_1

    .line 317
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    goto :goto_0

    .line 320
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 2

    .prologue
    .line 328
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 4

    .prologue
    .line 294
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 295
    const/4 v2, 0x0

    .line 304
    :goto_0
    return v2

    .line 298
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 299
    .local v0, "length":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    .line 300
    .local v1, "scrollY":I
    if-ge v1, v0, :cond_1

    .line 301
    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0

    .line 304
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isFillViewport()Z
    .locals 1

    .prologue
    .line 398
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mFillViewport:Z

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    .line 421
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    .line 1311
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1316
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/support/v4/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1319
    .local v1, "childWidthMeasureSpec":I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1321
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1322
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .prologue
    .line 1327
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1329
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/support/v4/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1332
    .local v1, "childWidthMeasureSpec":I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1335
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1336
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1570
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mIsLaidOut:Z

    .line 1571
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 848
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getSource(Landroid/view/MotionEvent;)I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 849
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 873
    :cond_0
    const/4 v5, 0x0

    :goto_0
    return v5

    .line 851
    :pswitch_0
    iget-boolean v5, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    if-nez v5, :cond_0

    .line 852
    const/16 v5, 0x9

    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getAxisValue(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 854
    .local v4, "vscroll":F
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_0

    .line 855
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getVerticalScrollFactorCompat()F

    move-result v5

    mul-float/2addr v5, v4

    float-to-int v0, v5

    .line 856
    .local v0, "delta":I
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v3

    .line 857
    .local v3, "range":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    .line 858
    .local v2, "oldScrollY":I
    sub-int v1, v2, v0

    .line 859
    .local v1, "newScrollY":I
    if-gez v1, :cond_2

    .line 860
    const/4 v1, 0x0

    .line 864
    :cond_1
    :goto_1
    if-eq v1, v2, :cond_0

    .line 865
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v5

    invoke-super {p0, v5, v1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 866
    const/4 v5, 0x1

    goto :goto_0

    .line 861
    :cond_2
    if-le v1, v3, :cond_1

    .line 862
    move v1, v3

    goto :goto_1

    .line 849
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 574
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 575
    .local v0, "action":I
    if-ne v0, v10, :cond_0

    iget-boolean v8, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    if-eqz v8, :cond_0

    .line 671
    :goto_0
    return v6

    .line 582
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v8

    if-nez v8, :cond_1

    invoke-static {p0, v6}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v8

    if-nez v8, :cond_1

    move v6, v7

    .line 583
    goto :goto_0

    .line 586
    :cond_1
    and-int/lit16 v8, v0, 0xff

    packed-switch v8, :pswitch_data_0

    .line 671
    :cond_2
    :goto_1
    :pswitch_0
    iget-boolean v6, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 597
    :pswitch_1
    iget v1, p0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    .line 598
    .local v1, "activePointerId":I
    if-eq v1, v9, :cond_2

    .line 603
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 604
    .local v3, "pointerIndex":I
    if-ne v3, v9, :cond_3

    .line 605
    const-string v6, "NestedScrollView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid pointerId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in onInterceptTouchEvent"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 610
    :cond_3
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v8

    float-to-int v4, v8

    .line 611
    .local v4, "y":I
    iget v8, p0, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    sub-int v8, v4, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 612
    .local v5, "yDiff":I
    iget v8, p0, Landroid/support/v4/widget/NestedScrollView;->mTouchSlop:I

    if-le v5, v8, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getNestedScrollAxes()I

    move-result v8

    and-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_2

    .line 614
    iput-boolean v6, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 615
    iput v4, p0, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    .line 616
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->initVelocityTrackerIfNotExists()V

    .line 617
    iget-object v8, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 618
    iput v7, p0, Landroid/support/v4/widget/NestedScrollView;->mNestedYOffset:I

    .line 619
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 620
    .local v2, "parent":Landroid/view/ViewParent;
    if-eqz v2, :cond_2

    .line 621
    invoke-interface {v2, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 628
    .end local v1    # "activePointerId":I
    .end local v2    # "parent":Landroid/view/ViewParent;
    .end local v3    # "pointerIndex":I
    .end local v4    # "y":I
    .end local v5    # "yDiff":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v4, v8

    .line 629
    .restart local v4    # "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    invoke-direct {p0, v8, v4}, Landroid/support/v4/widget/NestedScrollView;->inChild(II)Z

    move-result v8

    if-nez v8, :cond_4

    .line 630
    iput-boolean v7, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 631
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->recycleVelocityTracker()V

    goto :goto_1

    .line 639
    :cond_4
    iput v4, p0, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    .line 640
    invoke-static {p1, v7}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v8

    iput v8, p0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    .line 642
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->initOrResetVelocityTracker()V

    .line 643
    iget-object v8, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 649
    iget-object v8, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v8}, Landroid/support/v4/widget/ScrollerCompat;->isFinished()Z

    move-result v8

    if-nez v8, :cond_5

    :goto_2
    iput-boolean v6, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 650
    invoke-virtual {p0, v10}, Landroid/support/v4/widget/NestedScrollView;->startNestedScroll(I)Z

    goto/16 :goto_1

    :cond_5
    move v6, v7

    .line 649
    goto :goto_2

    .line 657
    .end local v4    # "y":I
    :pswitch_3
    iput-boolean v7, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 658
    iput v9, p0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    .line 659
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->recycleVelocityTracker()V

    .line 660
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->stopNestedScroll()V

    goto/16 :goto_1

    .line 663
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 586
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 1537
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1538
    iput-boolean v2, p0, Landroid/support/v4/widget/NestedScrollView;->mIsLayoutDirty:Z

    .line 1540
    iget-object v3, p0, Landroid/support/v4/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v4/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-static {v3, p0}, Landroid/support/v4/widget/NestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1541
    iget-object v3, p0, Landroid/support/v4/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v3}, Landroid/support/v4/widget/NestedScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1543
    :cond_0
    iput-object v5, p0, Landroid/support/v4/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1545
    iget-boolean v3, p0, Landroid/support/v4/widget/NestedScrollView;->mIsLaidOut:Z

    if-nez v3, :cond_2

    .line 1546
    iget-object v3, p0, Landroid/support/v4/widget/NestedScrollView;->mSavedState:Landroid/support/v4/widget/NestedScrollView$SavedState;

    if-eqz v3, :cond_1

    .line 1547
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v3

    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mSavedState:Landroid/support/v4/widget/NestedScrollView$SavedState;

    iget v4, v4, Landroid/support/v4/widget/NestedScrollView$SavedState;->scrollPosition:I

    invoke-virtual {p0, v3, v4}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    .line 1548
    iput-object v5, p0, Landroid/support/v4/widget/NestedScrollView;->mSavedState:Landroid/support/v4/widget/NestedScrollView$SavedState;

    .line 1551
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 1552
    .local v0, "childHeight":I
    :goto_0
    sub-int v3, p5, p3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v3, v0, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1556
    .local v1, "scrollRange":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v3

    if-le v3, v1, :cond_4

    .line 1557
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    .line 1564
    .end local v0    # "childHeight":I
    .end local v1    # "scrollRange":I
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    .line 1565
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v4/widget/NestedScrollView;->mIsLaidOut:Z

    .line 1566
    return-void

    :cond_3
    move v0, v2

    .line 1551
    goto :goto_0

    .line 1558
    .restart local v0    # "childHeight":I
    .restart local v1    # "scrollRange":I
    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v3

    if-gez v3, :cond_2

    .line 1559
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v3

    invoke-virtual {p0, v3, v2}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 434
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 436
    iget-boolean v6, p0, Landroid/support/v4/widget/NestedScrollView;->mFillViewport:Z

    if-nez v6, :cond_1

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 441
    .local v4, "heightMode":I
    if-eqz v4, :cond_0

    .line 445
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 446
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 447
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getMeasuredHeight()I

    move-result v3

    .line 448
    .local v3, "height":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-ge v6, v3, :cond_0

    .line 449
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 451
    .local v5, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1, v6, v7}, Landroid/support/v4/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result v2

    .line 453
    .local v2, "childWidthMeasureSpec":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v6

    sub-int/2addr v3, v6

    .line 454
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v3, v6

    .line 455
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 458
    .local v1, "childHeightMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 268
    if-nez p4, :cond_0

    .line 269
    float-to-int v0, p3

    invoke-direct {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->flingWithNestedDispatch(I)V

    .line 270
    const/4 v0, 0x1

    .line 272
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .prologue
    .line 264
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 7
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    const/4 v1, 0x0

    .line 254
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v6

    .line 255
    .local v6, "oldScrollY":I
    invoke-virtual {p0, v1, p5}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    .line 256
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    sub-int v2, v0, v6

    .line 257
    .local v2, "myConsumed":I
    sub-int v4, p5, v2

    .line 258
    .local v4, "myUnconsumed":I
    const/4 v5, 0x0

    move-object v0, p0

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedScroll(IIII[I)Z

    .line 259
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 242
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 243
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->startNestedScroll(I)Z

    .line 244
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 0
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 893
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 894
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 1497
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 1498
    const/16 p1, 0x82

    .line 1503
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1508
    .local v0, "nextFocus":Landroid/view/View;
    :goto_1
    if-nez v0, :cond_4

    .line 1516
    :cond_1
    :goto_2
    return v1

    .line 1499
    .end local v0    # "nextFocus":Landroid/view/View;
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 1500
    const/16 p1, 0x21

    goto :goto_0

    .line 1503
    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1512
    .restart local v0    # "nextFocus":Landroid/view/View;
    :cond_4
    invoke-direct {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1516
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1743
    move-object v0, p1

    check-cast v0, Landroid/support/v4/widget/NestedScrollView$SavedState;

    .line 1744
    .local v0, "ss":Landroid/support/v4/widget/NestedScrollView$SavedState;
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1745
    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mSavedState:Landroid/support/v4/widget/NestedScrollView$SavedState;

    .line 1746
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->requestLayout()V

    .line 1747
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1751
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1752
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/support/v4/widget/NestedScrollView$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v4/widget/NestedScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1753
    .local v0, "ss":Landroid/support/v4/widget/NestedScrollView$SavedState;
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView$SavedState;->scrollPosition:I

    .line 1754
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1575
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1577
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1578
    .local v0, "currentFocused":Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 1590
    :cond_0
    :goto_0
    return-void

    .line 1584
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p4}, Landroid/support/v4/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1585
    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1586
    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1587
    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    .line 1588
    .local v1, "scrollDelta":I
    invoke-direct {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->doScrollY(I)V

    goto :goto_0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 237
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 248
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->stopNestedScroll()V

    .line 249
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 27
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 676
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->initVelocityTrackerIfNotExists()V

    .line 678
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v25

    .line 680
    .local v25, "vtev":Landroid/view/MotionEvent;
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v15

    .line 682
    .local v15, "actionMasked":I
    if-nez v15, :cond_0

    .line 683
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->mNestedYOffset:I

    .line 685
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/widget/NestedScrollView;->mNestedYOffset:I

    int-to-float v3, v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 687
    packed-switch v15, :pswitch_data_0

    .line 823
    :cond_1
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_2

    .line 824
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 826
    :cond_2
    invoke-virtual/range {v25 .. v25}, Landroid/view/MotionEvent;->recycle()V

    .line 827
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 689
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 690
    const/4 v2, 0x0

    goto :goto_1

    .line 692
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/ScrollerCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_4

    .line 693
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    .line 694
    .local v22, "parent":Landroid/view/ViewParent;
    if-eqz v22, :cond_4

    .line 695
    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 703
    .end local v22    # "parent":Landroid/view/ViewParent;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/ScrollerCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5

    .line 704
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 708
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    .line 709
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    .line 710
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/NestedScrollView;->startNestedScroll(I)Z

    goto :goto_0

    .line 692
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 714
    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v16

    .line 716
    .local v16, "activePointerIndex":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_7

    .line 717
    const-string v2, "NestedScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid pointerId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " in onTouchEvent"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 721
    :cond_7
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v26, v0

    .line 722
    .local v26, "y":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    sub-int v4, v2, v26

    .line 723
    .local v4, "deltaY":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/widget/NestedScrollView;->mScrollConsumed:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 724
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mScrollConsumed:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int/2addr v4, v2

    .line 725
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    int-to-float v3, v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 726
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->mNestedYOffset:I

    .line 728
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    if-nez v2, :cond_a

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/widget/NestedScrollView;->mTouchSlop:I

    if-le v2, v3, :cond_a

    .line 729
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    .line 730
    .restart local v22    # "parent":Landroid/view/ViewParent;
    if-eqz v22, :cond_9

    .line 731
    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 733
    :cond_9
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 734
    if-lez v4, :cond_d

    .line 735
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->mTouchSlop:I

    sub-int/2addr v4, v2

    .line 740
    .end local v22    # "parent":Landroid/view/ViewParent;
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    .line 742
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int v2, v26, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    .line 744
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v20

    .line 745
    .local v20, "oldY":I
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v8

    .line 746
    .local v8, "range":I
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v21

    .line 747
    .local v21, "overscrollMode":I
    if-eqz v21, :cond_b

    const/4 v2, 0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_e

    if-lez v8, :cond_e

    :cond_b
    const/16 v17, 0x1

    .line 753
    .local v17, "canOverscroll":Z
    :goto_4
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Landroid/support/v4/widget/NestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->hasNestedScrollingParent()Z

    move-result v2

    if-nez v2, :cond_c

    .line 756
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 759
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    sub-int v11, v2, v20

    .line 760
    .local v11, "scrolledDeltaY":I
    sub-int v13, v4, v11

    .line 761
    .local v13, "unconsumedY":I
    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v14}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedScroll(IIII[I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 762
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    .line 763
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    int-to-float v3, v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 764
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->mNestedYOffset:I

    goto/16 :goto_0

    .line 737
    .end local v8    # "range":I
    .end local v11    # "scrolledDeltaY":I
    .end local v13    # "unconsumedY":I
    .end local v17    # "canOverscroll":Z
    .end local v20    # "oldY":I
    .end local v21    # "overscrollMode":I
    .restart local v22    # "parent":Landroid/view/ViewParent;
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->mTouchSlop:I

    add-int/2addr v4, v2

    goto/16 :goto_3

    .line 747
    .end local v22    # "parent":Landroid/view/ViewParent;
    .restart local v8    # "range":I
    .restart local v20    # "oldY":I
    .restart local v21    # "overscrollMode":I
    :cond_e
    const/16 v17, 0x0

    goto :goto_4

    .line 765
    .restart local v11    # "scrolledDeltaY":I
    .restart local v13    # "unconsumedY":I
    .restart local v17    # "canOverscroll":Z
    :cond_f
    if-eqz v17, :cond_1

    .line 766
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->ensureGlows()V

    .line 767
    add-int v23, v20, v4

    .line 768
    .local v23, "pulledToY":I
    if-gez v23, :cond_12

    .line 769
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    int-to-float v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v2, v3, v5}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    .line 771
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_10

    .line 772
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    .line 782
    :cond_10
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 784
    :cond_11
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto/16 :goto_0

    .line 774
    :cond_12
    move/from16 v0, v23

    if-le v0, v8, :cond_10

    .line 775
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    int-to-float v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-virtual {v2, v3, v5}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    .line 778
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_10

    .line 779
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    goto :goto_5

    .line 790
    .end local v4    # "deltaY":I
    .end local v8    # "range":I
    .end local v11    # "scrolledDeltaY":I
    .end local v13    # "unconsumedY":I
    .end local v16    # "activePointerIndex":I
    .end local v17    # "canOverscroll":Z
    .end local v20    # "oldY":I
    .end local v21    # "overscrollMode":I
    .end local v23    # "pulledToY":I
    .end local v26    # "y":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    .line 792
    .local v24, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v2, 0x3e8

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/widget/NestedScrollView;->mMaximumVelocity:I

    int-to-float v3, v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 793
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    move-object/from16 v0, v24

    invoke-static {v0, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v19, v0

    .line 796
    .local v19, "initialVelocity":I
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/widget/NestedScrollView;->mMinimumVelocity:I

    if-le v2, v3, :cond_13

    .line 797
    move/from16 v0, v19

    neg-int v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v4/widget/NestedScrollView;->flingWithNestedDispatch(I)V

    .line 800
    :cond_13
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    .line 801
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->endDrag()V

    goto/16 :goto_0

    .line 805
    .end local v19    # "initialVelocity":I
    .end local v24    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 806
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    .line 807
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->endDrag()V

    goto/16 :goto_0

    .line 811
    :pswitch_5
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v18

    .line 812
    .local v18, "index":I
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    .line 813
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    goto/16 :goto_0

    .line 817
    .end local v18    # "index":I
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Landroid/support/v4/widget/NestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 818
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    goto/16 :goto_0

    .line 687
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method overScrollByCompat(IIIIIIIIZ)Z
    .locals 16
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    .prologue
    .line 901
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v10

    .line 902
    .local v10, "overScrollMode":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->computeHorizontalScrollRange()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->computeHorizontalScrollExtent()I

    move-result v15

    if-le v14, v15, :cond_7

    const/4 v2, 0x1

    .line 904
    .local v2, "canScrollHorizontal":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->computeVerticalScrollRange()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->computeVerticalScrollExtent()I

    move-result v15

    if-le v14, v15, :cond_8

    const/4 v3, 0x1

    .line 906
    .local v3, "canScrollVertical":Z
    :goto_1
    if-eqz v10, :cond_0

    const/4 v14, 0x1

    if-ne v10, v14, :cond_9

    if-eqz v2, :cond_9

    :cond_0
    const/4 v9, 0x1

    .line 908
    .local v9, "overScrollHorizontal":Z
    :goto_2
    if-eqz v10, :cond_1

    const/4 v14, 0x1

    if-ne v10, v14, :cond_a

    if-eqz v3, :cond_a

    :cond_1
    const/4 v11, 0x1

    .line 911
    .local v11, "overScrollVertical":Z
    :goto_3
    add-int v7, p3, p1

    .line 912
    .local v7, "newScrollX":I
    if-nez v9, :cond_2

    .line 913
    const/16 p7, 0x0

    .line 916
    :cond_2
    add-int v8, p4, p2

    .line 917
    .local v8, "newScrollY":I
    if-nez v11, :cond_3

    .line 918
    const/16 p8, 0x0

    .line 922
    :cond_3
    move/from16 v0, p7

    neg-int v6, v0

    .line 923
    .local v6, "left":I
    add-int v12, p7, p5

    .line 924
    .local v12, "right":I
    move/from16 v0, p8

    neg-int v13, v0

    .line 925
    .local v13, "top":I
    add-int v1, p8, p6

    .line 927
    .local v1, "bottom":I
    const/4 v4, 0x0

    .line 928
    .local v4, "clampedX":Z
    if-le v7, v12, :cond_b

    .line 929
    move v7, v12

    .line 930
    const/4 v4, 0x1

    .line 936
    :cond_4
    :goto_4
    const/4 v5, 0x0

    .line 937
    .local v5, "clampedY":Z
    if-le v8, v1, :cond_c

    .line 938
    move v8, v1

    .line 939
    const/4 v5, 0x1

    .line 945
    :cond_5
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v4, v5}, Landroid/support/v4/widget/NestedScrollView;->onOverScrolled(IIZZ)V

    .line 947
    if-nez v4, :cond_6

    if-eqz v5, :cond_d

    :cond_6
    const/4 v14, 0x1

    :goto_6
    return v14

    .line 902
    .end local v1    # "bottom":I
    .end local v2    # "canScrollHorizontal":Z
    .end local v3    # "canScrollVertical":Z
    .end local v4    # "clampedX":Z
    .end local v5    # "clampedY":Z
    .end local v6    # "left":I
    .end local v7    # "newScrollX":I
    .end local v8    # "newScrollY":I
    .end local v9    # "overScrollHorizontal":Z
    .end local v11    # "overScrollVertical":Z
    .end local v12    # "right":I
    .end local v13    # "top":I
    :cond_7
    const/4 v2, 0x0

    goto :goto_0

    .line 904
    .restart local v2    # "canScrollHorizontal":Z
    :cond_8
    const/4 v3, 0x0

    goto :goto_1

    .line 906
    .restart local v3    # "canScrollVertical":Z
    :cond_9
    const/4 v9, 0x0

    goto :goto_2

    .line 908
    .restart local v9    # "overScrollHorizontal":Z
    :cond_a
    const/4 v11, 0x0

    goto :goto_3

    .line 931
    .restart local v1    # "bottom":I
    .restart local v4    # "clampedX":Z
    .restart local v6    # "left":I
    .restart local v7    # "newScrollX":I
    .restart local v8    # "newScrollY":I
    .restart local v11    # "overScrollVertical":Z
    .restart local v12    # "right":I
    .restart local v13    # "top":I
    :cond_b
    if-ge v7, v6, :cond_4

    .line 932
    move v7, v6

    .line 933
    const/4 v4, 0x1

    goto :goto_4

    .line 940
    .restart local v5    # "clampedY":Z
    :cond_c
    if-ge v8, v13, :cond_5

    .line 941
    move v8, v13

    .line 942
    const/4 v5, 0x1

    goto :goto_5

    .line 947
    :cond_d
    const/4 v14, 0x0

    goto :goto_6
.end method

.method public pageScroll(I)Z
    .locals 7
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x0

    .line 1056
    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 1057
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v2

    .line 1059
    .local v2, "height":I
    if-eqz v1, :cond_2

    .line 1060
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1061
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    .line 1062
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 1063
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1064
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 1065
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1074
    .end local v0    # "count":I
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1076
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Landroid/support/v4/widget/NestedScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1    # "down":Z
    .end local v2    # "height":I
    :cond_1
    move v1, v4

    .line 1056
    goto :goto_0

    .line 1069
    .restart local v1    # "down":Z
    .restart local v2    # "height":I
    :cond_2
    iget-object v5, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v6

    sub-int/2addr v6, v2

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1070
    iget-object v5, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gez v5, :cond_0

    .line 1071
    iget-object v5, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 1474
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    .line 1475
    invoke-direct {p0, p2}, Landroid/support/v4/widget/NestedScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1480
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1481
    return-void

    .line 1478
    :cond_0
    iput-object p2, p0, Landroid/support/v4/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 1523
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1526
    invoke-direct {p0, p2, p3}, Landroid/support/v4/widget/NestedScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 554
    if-eqz p1, :cond_0

    .line 555
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->recycleVelocityTracker()V

    .line 557
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 558
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1531
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mIsLayoutDirty:Z

    .line 1532
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1533
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1655
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1656
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1657
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Landroid/support/v4/widget/NestedScrollView;->clamp(III)I

    move-result p1

    .line 1658
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/support/v4/widget/NestedScrollView;->clamp(III)I

    move-result p2

    .line 1659
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    if-eq p2, v1, :cond_1

    .line 1660
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1663
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .param p1, "fillViewport"    # Z

    .prologue
    .line 411
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 412
    iput-boolean p1, p0, Landroid/support/v4/widget/NestedScrollView;->mFillViewport:Z

    .line 413
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->requestLayout()V

    .line 415
    :cond_0
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 188
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 189
    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .param p1, "smoothScrollingEnabled"    # Z

    .prologue
    .line 429
    iput-boolean p1, p0, Landroid/support/v4/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    .line 430
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x1

    return v0
.end method

.method public final smoothScrollBy(II)V
    .locals 11
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v10, 0x0

    .line 1247
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 1268
    :goto_0
    return-void

    .line 1251
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/support/v4/widget/NestedScrollView;->mLastScroll:J

    sub-long v2, v6, v8

    .line 1252
    .local v2, "duration":J
    const-wide/16 v6, 0xfa

    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    .line 1253
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v7

    sub-int v1, v6, v7

    .line 1254
    .local v1, "height":I
    invoke-virtual {p0, v10}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1255
    .local v0, "bottom":I
    sub-int v6, v0, v1

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1256
    .local v4, "maxY":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v5

    .line 1257
    .local v5, "scrollY":I
    add-int v6, v5, p2

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p2, v6, v5

    .line 1259
    iget-object v6, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v7

    invoke-virtual {v6, v7, v5, v10, p2}, Landroid/support/v4/widget/ScrollerCompat;->startScroll(IIII)V

    .line 1260
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1267
    .end local v0    # "bottom":I
    .end local v1    # "height":I
    .end local v4    # "maxY":I
    .end local v5    # "scrollY":I
    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/support/v4/widget/NestedScrollView;->mLastScroll:J

    goto :goto_0

    .line 1262
    :cond_1
    iget-object v6, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/ScrollerCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1263
    iget-object v6, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 1265
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    goto :goto_1
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1277
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/NestedScrollView;->smoothScrollBy(II)V

    .line 1278
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1
    .param p1, "axes"    # I

    .prologue
    .line 198
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll()V

    .line 204
    return-void
.end method
