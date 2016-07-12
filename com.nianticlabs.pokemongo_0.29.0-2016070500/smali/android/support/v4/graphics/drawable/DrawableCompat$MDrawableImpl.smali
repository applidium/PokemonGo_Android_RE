.class Landroid/support/v4/graphics/drawable/DrawableCompat$MDrawableImpl;
.super Landroid/support/v4/graphics/drawable/DrawableCompat$LollipopMr1DrawableImpl;
.source "DrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/drawable/DrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MDrawableImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$LollipopMr1DrawableImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 206
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompatApi23;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    return v0
.end method

.method public setLayoutDirection(Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "layoutDirection"    # I

    .prologue
    .line 201
    invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompatApi23;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)V

    .line 202
    return-void
.end method
