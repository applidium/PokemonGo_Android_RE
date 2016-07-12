.class Landroid/support/v4/widget/SwipeRefreshLayout$4;
.super Landroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/SwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

.field final synthetic val$endingAlpha:I

.field final synthetic val$startingAlpha:I


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SwipeRefreshLayout;II)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$4;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    iput p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout$4;->val$startingAlpha:I

    iput p3, p0, Landroid/support/v4/widget/SwipeRefreshLayout$4;->val$endingAlpha:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 455
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$4;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    # getter for: Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;
    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$100(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/MaterialProgressDrawable;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$4;->val$startingAlpha:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout$4;->val$endingAlpha:I

    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout$4;->val$startingAlpha:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    .line 458
    return-void
.end method
