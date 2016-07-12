.class Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;
.super Ljava/lang/Object;
.source "HoneycombMr1AnimatorCompatProvider.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimatorListenerCompatWrapper"
.end annotation


# instance fields
.field final mValueAnimatorCompat:Landroid/support/v4/animation/ValueAnimatorCompat;

.field final mWrapped:Landroid/support/v4/animation/AnimatorListenerCompat;


# direct methods
.method public constructor <init>(Landroid/support/v4/animation/AnimatorListenerCompat;Landroid/support/v4/animation/ValueAnimatorCompat;)V
    .locals 0
    .param p1, "wrapped"    # Landroid/support/v4/animation/AnimatorListenerCompat;
    .param p2, "valueAnimatorCompat"    # Landroid/support/v4/animation/ValueAnimatorCompat;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;->mWrapped:Landroid/support/v4/animation/AnimatorListenerCompat;

    .line 104
    iput-object p2, p0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;->mValueAnimatorCompat:Landroid/support/v4/animation/ValueAnimatorCompat;

    .line 105
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 119
    iget-object v0, p0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;->mWrapped:Landroid/support/v4/animation/AnimatorListenerCompat;

    iget-object v1, p0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;->mValueAnimatorCompat:Landroid/support/v4/animation/ValueAnimatorCompat;

    invoke-interface {v0, v1}, Landroid/support/v4/animation/AnimatorListenerCompat;->onAnimationCancel(Landroid/support/v4/animation/ValueAnimatorCompat;)V

    .line 120
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 114
    iget-object v0, p0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;->mWrapped:Landroid/support/v4/animation/AnimatorListenerCompat;

    iget-object v1, p0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;->mValueAnimatorCompat:Landroid/support/v4/animation/ValueAnimatorCompat;

    invoke-interface {v0, v1}, Landroid/support/v4/animation/AnimatorListenerCompat;->onAnimationEnd(Landroid/support/v4/animation/ValueAnimatorCompat;)V

    .line 115
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 124
    iget-object v0, p0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;->mWrapped:Landroid/support/v4/animation/AnimatorListenerCompat;

    iget-object v1, p0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;->mValueAnimatorCompat:Landroid/support/v4/animation/ValueAnimatorCompat;

    invoke-interface {v0, v1}, Landroid/support/v4/animation/AnimatorListenerCompat;->onAnimationRepeat(Landroid/support/v4/animation/ValueAnimatorCompat;)V

    .line 125
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 109
    iget-object v0, p0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;->mWrapped:Landroid/support/v4/animation/AnimatorListenerCompat;

    iget-object v1, p0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;->mValueAnimatorCompat:Landroid/support/v4/animation/ValueAnimatorCompat;

    invoke-interface {v0, v1}, Landroid/support/v4/animation/AnimatorListenerCompat;->onAnimationStart(Landroid/support/v4/animation/ValueAnimatorCompat;)V

    .line 110
    return-void
.end method
