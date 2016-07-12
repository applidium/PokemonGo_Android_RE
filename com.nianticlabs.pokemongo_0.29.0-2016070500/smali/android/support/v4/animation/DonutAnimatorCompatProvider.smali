.class Landroid/support/v4/animation/DonutAnimatorCompatProvider;
.super Ljava/lang/Object;
.source "DonutAnimatorCompatProvider.java"

# interfaces
.implements Landroid/support/v4/animation/AnimatorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public clearInterpolator(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 154
    return-void
.end method

.method public emptyValueAnimator()Landroid/support/v4/animation/ValueAnimatorCompat;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;

    invoke-direct {v0}, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;-><init>()V

    return-object v0
.end method
