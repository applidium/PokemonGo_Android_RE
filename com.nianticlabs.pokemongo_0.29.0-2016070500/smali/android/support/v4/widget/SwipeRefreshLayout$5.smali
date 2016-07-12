.class Landroid/support/v4/widget/SwipeRefreshLayout$5;
.super Ljava/lang/Object;
.source "SwipeRefreshLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/SwipeRefreshLayout;->finishSpinner(F)V
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
    .line 919
    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$5;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 927
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$5;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    # getter for: Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z
    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$600(Landroid/support/v4/widget/SwipeRefreshLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 928
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$5;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    # invokes: Landroid/support/v4/widget/SwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    invoke-static {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$1000(Landroid/support/v4/widget/SwipeRefreshLayout;Landroid/view/animation/Animation$AnimationListener;)V

    .line 930
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 934
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 923
    return-void
.end method
