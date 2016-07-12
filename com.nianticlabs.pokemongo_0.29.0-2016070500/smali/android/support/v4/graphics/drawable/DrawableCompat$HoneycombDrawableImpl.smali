.class Landroid/support/v4/graphics/drawable/DrawableCompat$HoneycombDrawableImpl;
.super Landroid/support/v4/graphics/drawable/DrawableCompat$BaseDrawableImpl;
.source "DrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/drawable/DrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HoneycombDrawableImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$BaseDrawableImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 108
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompatHoneycomb;->jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V

    .line 109
    return-void
.end method

.method public wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 113
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompatHoneycomb;->wrapForTinting(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
