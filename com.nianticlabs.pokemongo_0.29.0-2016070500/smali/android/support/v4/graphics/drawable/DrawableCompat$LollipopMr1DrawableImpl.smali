.class Landroid/support/v4/graphics/drawable/DrawableCompat$LollipopMr1DrawableImpl;
.super Landroid/support/v4/graphics/drawable/DrawableCompat$LollipopDrawableImpl;
.source "DrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/drawable/DrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LollipopMr1DrawableImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$LollipopDrawableImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 191
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompatApi22;->wrapForTinting(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
