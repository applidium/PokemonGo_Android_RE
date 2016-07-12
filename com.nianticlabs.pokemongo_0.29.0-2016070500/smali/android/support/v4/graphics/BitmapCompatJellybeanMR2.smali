.class Landroid/support/v4/graphics/BitmapCompatJellybeanMR2;
.super Ljava/lang/Object;
.source "BitmapCompatJellybeanMR2.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasMipMap(Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 22
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasMipMap()Z

    move-result v0

    return v0
.end method

.method public static setHasMipMap(Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "hasMipMap"    # Z

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->setHasMipMap(Z)V

    .line 27
    return-void
.end method
