.class Landroid/support/v4/graphics/drawable/DrawableCompatBase;
.super Ljava/lang/Object;
.source "DrawableCompatBase.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTint(Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "tint"    # I

    .prologue
    .line 29
    instance-of v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    if-eqz v0, :cond_0

    .line 30
    check-cast p0, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-interface {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapper;->setTint(I)V

    .line 32
    :cond_0
    return-void
.end method

.method public static setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 35
    instance-of v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    if-eqz v0, :cond_0

    .line 36
    check-cast p0, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-interface {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapper;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 38
    :cond_0
    return-void
.end method

.method public static setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 41
    instance-of v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    if-eqz v0, :cond_0

    .line 42
    check-cast p0, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-interface {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapper;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 44
    :cond_0
    return-void
.end method

.method public static wrapForTinting(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 47
    instance-of v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;

    invoke-direct {v0, p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object p0, v0

    .line 50
    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object p0
.end method
