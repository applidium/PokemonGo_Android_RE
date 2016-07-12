.class Landroid/support/v4/graphics/drawable/DrawableCompatHoneycomb;
.super Ljava/lang/Object;
.source "DrawableCompatHoneycomb.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 30
    return-void
.end method

.method public static wrapForTinting(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 33
    instance-of v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperHoneycomb;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Landroid/support/v4/graphics/drawable/DrawableWrapperHoneycomb;

    invoke-direct {v0, p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperHoneycomb;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object p0, v0

    .line 36
    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object p0
.end method
