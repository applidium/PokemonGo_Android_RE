.class Landroid/support/v4/widget/SwipeRefreshLayout$1;
.super Ljava/lang/Object;
.source "SwipeRefreshLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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
    .line 165
    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/16 v2, 0xff

    .line 176
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    # getter for: Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z
    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$000(Landroid/support/v4/widget/SwipeRefreshLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    # getter for: Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;
    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$100(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/MaterialProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    .line 179
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    # getter for: Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;
    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$100(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/MaterialProgressDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->start()V

    .line 180
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    # getter for: Landroid/support/v4/widget/SwipeRefreshLayout;->mNotify:Z
    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$200(Landroid/support/v4/widget/SwipeRefreshLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    # getter for: Landroid/support/v4/widget/SwipeRefreshLayout;->mListener:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;
    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$300(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    # getter for: Landroid/support/v4/widget/SwipeRefreshLayout;->mListener:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;
    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$300(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;->onRefresh()V

    .line 197
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    # getter for: Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;
    invoke-static {v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$400(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/CircleImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/widget/CircleImageView;->getTop()I

    move-result v1

    # setter for: Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I
    invoke-static {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$802(Landroid/support/v4/widget/SwipeRefreshLayout;I)I

    .line 198
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    # getter for: Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;
    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$100(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/MaterialProgressDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->stop()V

    .line 187
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    # getter for: Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;
    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$400(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/CircleImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    # invokes: Landroid/support/v4/widget/SwipeRefreshLayout;->setColorViewAlpha(I)V
    invoke-static {v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$500(Landroid/support/v4/widget/SwipeRefreshLayout;I)V

    .line 190
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    # getter for: Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z
    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$600(Landroid/support/v4/widget/SwipeRefreshLayout;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    # invokes: Landroid/support/v4/widget/SwipeRefreshLayout;->setAnimationProgress(F)V
    invoke-static {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$700(Landroid/support/v4/widget/SwipeRefreshLayout;F)V

    goto :goto_0

    .line 193
    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    # getter for: Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I
    invoke-static {v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$800(Landroid/support/v4/widget/SwipeRefreshLayout;)I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    # invokes: Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V
    invoke-static {v0, v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$900(Landroid/support/v4/widget/SwipeRefreshLayout;IZ)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 172
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 168
    return-void
.end method
