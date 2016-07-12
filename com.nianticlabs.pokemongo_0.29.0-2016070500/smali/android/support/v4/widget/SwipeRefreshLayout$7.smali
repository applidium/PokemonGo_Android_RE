.class Landroid/support/v4/widget/SwipeRefreshLayout$7;
.super Landroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SwipeRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .locals 0

    .prologue
    .line 1069
    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$7;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 1072
    const/4 v2, 0x0

    .line 1073
    .local v2, "targetTop":I
    const/4 v0, 0x0

    .line 1074
    .local v0, "endTarget":I
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout$7;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    # getter for: Landroid/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z
    invoke-static {v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$1100(Landroid/support/v4/widget/SwipeRefreshLayout;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1075
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout$7;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    # getter for: Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F
    invoke-static {v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$1200(Landroid/support/v4/widget/SwipeRefreshLayout;)F

    move-result v3

    iget-object v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout$7;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v0, v3

    .line 1079
    :goto_0
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout$7;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    iget-object v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout$7;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    sub-int v4, v0, v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    add-int v2, v3, v4

    .line 1080
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout$7;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    # getter for: Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;
    invoke-static {v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$400(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/CircleImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/widget/CircleImageView;->getTop()I

    move-result v3

    sub-int v1, v2, v3

    .line 1081
    .local v1, "offset":I
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout$7;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v4, 0x0

    # invokes: Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V
    invoke-static {v3, v1, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$900(Landroid/support/v4/widget/SwipeRefreshLayout;IZ)V

    .line 1082
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout$7;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    # getter for: Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;
    invoke-static {v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$100(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/MaterialProgressDrawable;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, p1

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/MaterialProgressDrawable;->setArrowScale(F)V

    .line 1083
    return-void

    .line 1077
    .end local v1    # "offset":I
    :cond_0
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout$7;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    # getter for: Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F
    invoke-static {v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$1200(Landroid/support/v4/widget/SwipeRefreshLayout;)F

    move-result v3

    float-to-int v0, v3

    goto :goto_0
.end method
