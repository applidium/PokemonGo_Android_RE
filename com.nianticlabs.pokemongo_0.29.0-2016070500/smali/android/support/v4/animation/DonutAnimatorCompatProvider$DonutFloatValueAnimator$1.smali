.class Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;
.super Ljava/lang/Object;
.source "DonutAnimatorCompatProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;


# direct methods
.method constructor <init>(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;->this$0:Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 57
    iget-object v3, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;->this$0:Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;

    # invokes: Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->getTime()J
    invoke-static {v3}, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->access$000(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)J

    move-result-wide v4

    iget-object v3, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;->this$0:Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;

    # getter for: Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mStartTime:J
    invoke-static {v3}, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->access$100(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 58
    .local v0, "dt":J
    long-to-float v3, v0

    mul-float/2addr v3, v8

    iget-object v4, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;->this$0:Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;

    # getter for: Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mDuration:J
    invoke-static {v4}, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->access$200(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)J

    move-result-wide v4

    long-to-float v4, v4

    div-float v2, v3, v4

    .line 59
    .local v2, "fraction":F
    cmpl-float v3, v2, v8

    if-gtz v3, :cond_0

    iget-object v3, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;->this$0:Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;

    iget-object v3, v3, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_1

    .line 60
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 62
    :cond_1
    iget-object v3, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;->this$0:Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;

    # setter for: Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mFraction:F
    invoke-static {v3, v2}, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->access$302(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;F)F

    .line 63
    iget-object v3, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;->this$0:Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;

    # invokes: Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->notifyUpdateListeners()V
    invoke-static {v3}, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->access$400(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)V

    .line 64
    iget-object v3, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;->this$0:Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;

    # getter for: Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mFraction:F
    invoke-static {v3}, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->access$300(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)F

    move-result v3

    cmpl-float v3, v3, v8

    if-ltz v3, :cond_2

    .line 65
    iget-object v3, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;->this$0:Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;

    # invokes: Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->dispatchEnd()V
    invoke-static {v3}, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->access$500(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_2
    iget-object v3, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;->this$0:Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;

    iget-object v3, v3, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mTarget:Landroid/view/View;

    iget-object v4, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;->this$0:Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;

    # getter for: Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mLoopRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->access$600(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v6, 0x10

    invoke-virtual {v3, v4, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
