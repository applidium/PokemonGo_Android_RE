.class public abstract Landroid/support/v4/widget/AutoScrollHelper;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/AutoScrollHelper$1;,
        Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;,
        Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;
    }
.end annotation


# static fields
.field private static final DEFAULT_ACTIVATION_DELAY:I

.field private static final DEFAULT_EDGE_TYPE:I = 0x1

.field private static final DEFAULT_MAXIMUM_EDGE:F = 3.4028235E38f

.field private static final DEFAULT_MAXIMUM_VELOCITY_DIPS:I = 0x627

.field private static final DEFAULT_MINIMUM_VELOCITY_DIPS:I = 0x13b

.field private static final DEFAULT_RAMP_DOWN_DURATION:I = 0x1f4

.field private static final DEFAULT_RAMP_UP_DURATION:I = 0x1f4

.field private static final DEFAULT_RELATIVE_EDGE:F = 0.2f

.field private static final DEFAULT_RELATIVE_VELOCITY:F = 1.0f

.field public static final EDGE_TYPE_INSIDE:I = 0x0

.field public static final EDGE_TYPE_INSIDE_EXTEND:I = 0x1

.field public static final EDGE_TYPE_OUTSIDE:I = 0x2

.field private static final HORIZONTAL:I = 0x0

.field public static final NO_MAX:F = 3.4028235E38f

.field public static final NO_MIN:F = 0.0f

.field public static final RELATIVE_UNSPECIFIED:F = 0.0f

.field private static final VERTICAL:I = 0x1


# instance fields
.field private mActivationDelay:I

.field private mAlreadyDelayed:Z

.field private mAnimating:Z

.field private final mEdgeInterpolator:Landroid/view/animation/Interpolator;

.field private mEdgeType:I

.field private mEnabled:Z

.field private mExclusive:Z

.field private mMaximumEdges:[F

.field private mMaximumVelocity:[F

.field private mMinimumVelocity:[F

.field private mNeedsCancel:Z

.field private mNeedsReset:Z

.field private mRelativeEdges:[F

.field private mRelativeVelocity:[F

.field private mRunnable:Ljava/lang/Runnable;

.field private final mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

.field private final mTarget:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 194
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroid/support/v4/widget/AutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 9
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const v8, 0x7f7fffff    # Float.MAX_VALUE

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const v5, 0x3e4ccccd    # 0.2f

    const/4 v4, 0x2

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v3, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    invoke-direct {v3}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;-><init>()V

    iput-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    .line 140
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    .line 149
    new-array v3, v4, [F

    fill-array-data v3, :array_0

    iput-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    .line 152
    new-array v3, v4, [F

    fill-array-data v3, :array_1

    iput-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    .line 161
    new-array v3, v4, [F

    fill-array-data v3, :array_2

    iput-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    .line 164
    new-array v3, v4, [F

    fill-array-data v3, :array_3

    iput-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    .line 167
    new-array v3, v4, [F

    fill-array-data v3, :array_4

    iput-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    .line 210
    iput-object p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    .line 212
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 213
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    const v3, 0x44c4e000    # 1575.0f

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v6

    float-to-int v0, v3

    .line 214
    .local v0, "maxVelocity":I
    const v3, 0x439d8000    # 315.0f

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v6

    float-to-int v2, v3

    .line 215
    .local v2, "minVelocity":I
    int-to-float v3, v0

    int-to-float v4, v0

    invoke-virtual {p0, v3, v4}, Landroid/support/v4/widget/AutoScrollHelper;->setMaximumVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;

    .line 216
    int-to-float v3, v2

    int-to-float v4, v2

    invoke-virtual {p0, v3, v4}, Landroid/support/v4/widget/AutoScrollHelper;->setMinimumVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;

    .line 218
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/AutoScrollHelper;->setEdgeType(I)Landroid/support/v4/widget/AutoScrollHelper;

    .line 219
    invoke-virtual {p0, v8, v8}, Landroid/support/v4/widget/AutoScrollHelper;->setMaximumEdges(FF)Landroid/support/v4/widget/AutoScrollHelper;

    .line 220
    invoke-virtual {p0, v5, v5}, Landroid/support/v4/widget/AutoScrollHelper;->setRelativeEdges(FF)Landroid/support/v4/widget/AutoScrollHelper;

    .line 221
    invoke-virtual {p0, v7, v7}, Landroid/support/v4/widget/AutoScrollHelper;->setRelativeVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;

    .line 222
    sget v3, Landroid/support/v4/widget/AutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/AutoScrollHelper;->setActivationDelay(I)Landroid/support/v4/widget/AutoScrollHelper;

    .line 223
    const/16 v3, 0x1f4

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/AutoScrollHelper;->setRampUpDuration(I)Landroid/support/v4/widget/AutoScrollHelper;

    .line 224
    const/16 v3, 0x1f4

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/AutoScrollHelper;->setRampDownDuration(I)Landroid/support/v4/widget/AutoScrollHelper;

    .line 225
    return-void

    .line 149
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 152
    :array_1
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data

    .line 161
    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 164
    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 167
    :array_4
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data
.end method

.method static synthetic access$100(Landroid/support/v4/widget/AutoScrollHelper;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/AutoScrollHelper;

    .prologue
    .line 84
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    return v0
.end method

.method static synthetic access$102(Landroid/support/v4/widget/AutoScrollHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/widget/AutoScrollHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    return p1
.end method

.method static synthetic access$200(Landroid/support/v4/widget/AutoScrollHelper;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/AutoScrollHelper;

    .prologue
    .line 84
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsReset:Z

    return v0
.end method

.method static synthetic access$202(Landroid/support/v4/widget/AutoScrollHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/widget/AutoScrollHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsReset:Z

    return p1
.end method

.method static synthetic access$300(Landroid/support/v4/widget/AutoScrollHelper;)Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/AutoScrollHelper;

    .prologue
    .line 84
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v4/widget/AutoScrollHelper;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/AutoScrollHelper;

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->shouldAnimate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/support/v4/widget/AutoScrollHelper;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/AutoScrollHelper;

    .prologue
    .line 84
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsCancel:Z

    return v0
.end method

.method static synthetic access$502(Landroid/support/v4/widget/AutoScrollHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/widget/AutoScrollHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsCancel:Z

    return p1
.end method

.method static synthetic access$600(Landroid/support/v4/widget/AutoScrollHelper;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/widget/AutoScrollHelper;

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->cancelTargetTouch()V

    return-void
.end method

.method static synthetic access$700(Landroid/support/v4/widget/AutoScrollHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/AutoScrollHelper;

    .prologue
    .line 84
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(III)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 84
    invoke-static {p0, p1, p2}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(FFF)F
    .locals 1
    .param p0, "x0"    # F
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 84
    invoke-static {p0, p1, p2}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method private cancelTargetTouch()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 677
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 678
    .local v0, "eventTime":J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 680
    .local v8, "cancel":Landroid/view/MotionEvent;
    iget-object v2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 681
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 682
    return-void
.end method

.method private computeTargetVelocity(IFFF)F
    .locals 9
    .param p1, "direction"    # I
    .param p2, "coordinate"    # F
    .param p3, "srcSize"    # F
    .param p4, "dstSize"    # F

    .prologue
    const/4 v7, 0x0

    .line 539
    iget-object v8, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    aget v3, v8, p1

    .line 540
    .local v3, "relativeEdge":F
    iget-object v8, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    aget v0, v8, p1

    .line 541
    .local v0, "maximumEdge":F
    invoke-direct {p0, v3, p3, v0, p2}, Landroid/support/v4/widget/AutoScrollHelper;->getEdgeValue(FFFF)F

    move-result v6

    .line 542
    .local v6, "value":F
    cmpl-float v8, v6, v7

    if-nez v8, :cond_0

    .line 558
    :goto_0
    return v7

    .line 547
    :cond_0
    iget-object v8, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    aget v4, v8, p1

    .line 548
    .local v4, "relativeVelocity":F
    iget-object v8, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    aget v2, v8, p1

    .line 549
    .local v2, "minimumVelocity":F
    iget-object v8, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    aget v1, v8, p1

    .line 550
    .local v1, "maximumVelocity":F
    mul-float v5, v4, p4

    .line 555
    .local v5, "targetVelocity":F
    cmpl-float v7, v6, v7

    if-lez v7, :cond_1

    .line 556
    mul-float v7, v6, v5

    invoke-static {v7, v2, v1}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v7

    goto :goto_0

    .line 558
    :cond_1
    neg-float v7, v6

    mul-float/2addr v7, v5

    invoke-static {v7, v2, v1}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v7

    neg-float v7, v7

    goto :goto_0
.end method

.method private static constrain(FFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 663
    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    .line 668
    .end local p2    # "max":F
    :goto_0
    return p2

    .line 665
    .restart local p2    # "max":F
    :cond_0
    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    move p2, p1

    .line 666
    goto :goto_0

    :cond_1
    move p2, p0

    .line 668
    goto :goto_0
.end method

.method private static constrain(III)I
    .locals 0
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 653
    if-le p0, p2, :cond_0

    .line 658
    .end local p2    # "max":I
    :goto_0
    return p2

    .line 655
    .restart local p2    # "max":I
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    .line 656
    goto :goto_0

    :cond_1
    move p2, p0

    .line 658
    goto :goto_0
.end method

.method private constrainEdgeValue(FF)F
    .locals 4
    .param p1, "current"    # F
    .param p2, "leading"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 624
    cmpl-float v2, p2, v0

    if-nez v2, :cond_1

    .line 649
    :cond_0
    :goto_0
    return v0

    .line 628
    :cond_1
    iget v2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeType:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 631
    :pswitch_0
    cmpg-float v2, p1, p2

    if-gez v2, :cond_0

    .line 632
    cmpl-float v2, p1, v0

    if-ltz v2, :cond_2

    .line 634
    div-float v0, p1, p2

    sub-float v0, v1, v0

    goto :goto_0

    .line 635
    :cond_2
    iget-boolean v2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 637
    goto :goto_0

    .line 642
    :pswitch_1
    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    .line 644
    neg-float v0, p2

    div-float v0, p1, v0

    goto :goto_0

    .line 628
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getEdgeValue(FFFF)F
    .locals 7
    .param p1, "relativeValue"    # F
    .param p2, "size"    # F
    .param p3, "maxValue"    # F
    .param p4, "current"    # F

    .prologue
    const/4 v5, 0x0

    .line 607
    mul-float v6, p1, p2

    invoke-static {v6, v5, p3}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v0

    .line 608
    .local v0, "edgeSize":F
    invoke-direct {p0, p4, v0}, Landroid/support/v4/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    move-result v3

    .line 609
    .local v3, "valueLeading":F
    sub-float v6, p2, p4

    invoke-direct {p0, v6, v0}, Landroid/support/v4/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    move-result v4

    .line 610
    .local v4, "valueTrailing":F
    sub-float v2, v4, v3

    .line 612
    .local v2, "value":F
    cmpg-float v6, v2, v5

    if-gez v6, :cond_1

    .line 613
    iget-object v5, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    neg-float v6, v2

    invoke-interface {v5, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    neg-float v1, v5

    .line 620
    .local v1, "interpolated":F
    :goto_0
    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v1, v5, v6}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v5

    .end local v1    # "interpolated":F
    :cond_0
    return v5

    .line 614
    :cond_1
    cmpl-float v6, v2, v5

    if-lez v6, :cond_0

    .line 615
    iget-object v5, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .restart local v1    # "interpolated":F
    goto :goto_0
.end method

.method private requestStop()V
    .locals 1

    .prologue
    .line 528
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsReset:Z

    if-eqz v0, :cond_0

    .line 531
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    .line 535
    :goto_0
    return-void

    .line 533
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->requestStop()V

    goto :goto_0
.end method

.method private shouldAnimate()Z
    .locals 4

    .prologue
    .line 492
    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    .line 493
    .local v1, "scroller":Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;
    invoke-virtual {v1}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->getVerticalDirection()I

    move-result v2

    .line 494
    .local v2, "verticalDirection":I
    invoke-virtual {v1}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->getHorizontalDirection()I

    move-result v0

    .line 496
    .local v0, "horizontalDirection":I
    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/AutoScrollHelper;->canTargetScrollVertically(I)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/AutoScrollHelper;->canTargetScrollHorizontally(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private startAnimating()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 504
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 505
    new-instance v0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;-><init>(Landroid/support/v4/widget/AutoScrollHelper;Landroid/support/v4/widget/AutoScrollHelper$1;)V

    iput-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    .line 508
    :cond_0
    iput-boolean v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    .line 509
    iput-boolean v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsReset:Z

    .line 511
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mActivationDelay:I

    if-lez v0, :cond_1

    .line 512
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    iget v2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mActivationDelay:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 519
    :goto_0
    iput-boolean v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    .line 520
    return-void

    .line 514
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method


# virtual methods
.method public abstract canTargetScrollHorizontally(I)Z
.end method

.method public abstract canTargetScrollVertically(I)Z
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEnabled:Z

    return v0
.end method

.method public isExclusive()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mExclusive:Z

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 456
    iget-boolean v5, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEnabled:Z

    if-nez v5, :cond_0

    .line 485
    :goto_0
    return v4

    .line 460
    :cond_0
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 461
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 485
    :cond_1
    :goto_1
    iget-boolean v5, p0, Landroid/support/v4/widget/AutoScrollHelper;->mExclusive:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    if-eqz v5, :cond_2

    :goto_2
    move v4, v3

    goto :goto_0

    .line 463
    :pswitch_0
    iput-boolean v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsCancel:Z

    .line 464
    iput-boolean v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    .line 467
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {p0, v4, v5, v6, v7}, Landroid/support/v4/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    move-result v1

    .line 469
    .local v1, "xTargetVelocity":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {p0, v3, v5, v6, v7}, Landroid/support/v4/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    move-result v2

    .line 471
    .local v2, "yTargetVelocity":F
    iget-object v5, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v5, v1, v2}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->setTargetVelocity(FF)V

    .line 475
    iget-boolean v5, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    if-nez v5, :cond_1

    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->shouldAnimate()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 476
    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->startAnimating()V

    goto :goto_1

    .line 481
    .end local v1    # "xTargetVelocity":F
    .end local v2    # "yTargetVelocity":F
    :pswitch_2
    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->requestStop()V

    goto :goto_1

    :cond_2
    move v3, v4

    .line 485
    goto :goto_2

    .line 461
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public abstract scrollTargetBy(II)V
.end method

.method public setActivationDelay(I)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 0
    .param p1, "delayMillis"    # I

    .prologue
    .line 412
    iput p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mActivationDelay:I

    .line 413
    return-object p0
.end method

.method public setEdgeType(I)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 354
    iput p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeType:I

    .line 355
    return-object p0
.end method

.method public setEnabled(Z)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 235
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 236
    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->requestStop()V

    .line 239
    :cond_0
    iput-boolean p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEnabled:Z

    .line 240
    return-object p0
.end method

.method public setExclusive(Z)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 0
    .param p1, "exclusive"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mExclusive:Z

    .line 264
    return-object p0
.end method

.method public setMaximumEdges(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 2
    .param p1, "horizontalMax"    # F
    .param p2, "verticalMax"    # F

    .prologue
    .line 395
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 396
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 397
    return-object p0
.end method

.method public setMaximumVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 4
    .param p1, "horizontalMax"    # F
    .param p2, "verticalMax"    # F

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 294
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    const/4 v1, 0x0

    div-float v2, p1, v3

    aput v2, v0, v1

    .line 295
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    const/4 v1, 0x1

    div-float v2, p2, v3

    aput v2, v0, v1

    .line 296
    return-object p0
.end method

.method public setMinimumVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 4
    .param p1, "horizontalMin"    # F
    .param p2, "verticalMin"    # F

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 312
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    const/4 v1, 0x0

    div-float v2, p1, v3

    aput v2, v0, v1

    .line 313
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    const/4 v1, 0x1

    div-float v2, p2, v3

    aput v2, v0, v1

    .line 314
    return-object p0
.end method

.method public setRampDownDuration(I)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 1
    .param p1, "durationMillis"    # I

    .prologue
    .line 442
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->setRampDownDuration(I)V

    .line 443
    return-object p0
.end method

.method public setRampUpDuration(I)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 1
    .param p1, "durationMillis"    # I

    .prologue
    .line 427
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->setRampUpDuration(I)V

    .line 428
    return-object p0
.end method

.method public setRelativeEdges(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 2
    .param p1, "horizontal"    # F
    .param p2, "vertical"    # F

    .prologue
    .line 373
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 374
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 375
    return-object p0
.end method

.method public setRelativeVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 4
    .param p1, "horizontal"    # F
    .param p2, "vertical"    # F

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 333
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    const/4 v1, 0x0

    div-float v2, p1, v3

    aput v2, v0, v1

    .line 334
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    const/4 v1, 0x1

    div-float v2, p2, v3

    aput v2, v0, v1

    .line 335
    return-object p0
.end method
