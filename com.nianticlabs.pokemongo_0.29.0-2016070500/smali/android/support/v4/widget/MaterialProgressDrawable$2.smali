.class Landroid/support/v4/widget/MaterialProgressDrawable$2;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/MaterialProgressDrawable;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

.field final synthetic val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/MaterialProgressDrawable;Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    iput-object p2, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 429
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 433
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->storeOriginals()V

    .line 434
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->goToNextColor()V

    .line 435
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getEndTrim()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 436
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    iget-boolean v0, v0, Landroid/support/v4/widget/MaterialProgressDrawable;->mFinishing:Z

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    iput-boolean v2, v0, Landroid/support/v4/widget/MaterialProgressDrawable;->mFinishing:Z

    .line 440
    const-wide/16 v0, 0x534

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 441
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    .line 445
    :goto_0
    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    # getter for: Landroid/support/v4/widget/MaterialProgressDrawable;->mRotationCount:F
    invoke-static {v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->access$400(Landroid/support/v4/widget/MaterialProgressDrawable;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    rem-float/2addr v1, v2

    # setter for: Landroid/support/v4/widget/MaterialProgressDrawable;->mRotationCount:F
    invoke-static {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->access$402(Landroid/support/v4/widget/MaterialProgressDrawable;F)F

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 423
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    const/4 v1, 0x0

    # setter for: Landroid/support/v4/widget/MaterialProgressDrawable;->mRotationCount:F
    invoke-static {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->access$402(Landroid/support/v4/widget/MaterialProgressDrawable;F)F

    .line 424
    return-void
.end method
