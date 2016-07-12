.class Landroid/support/v4/view/ViewPropertyAnimatorCompatLollipop;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompatLollipop.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static translationZ(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    .line 25
    return-void
.end method

.method public static translationZBy(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationZBy(F)Landroid/view/ViewPropertyAnimator;

    .line 29
    return-void
.end method

.method public static z(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F

    .prologue
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->z(F)Landroid/view/ViewPropertyAnimator;

    .line 33
    return-void
.end method

.method public static zBy(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->zBy(F)Landroid/view/ViewPropertyAnimator;

    .line 37
    return-void
.end method
