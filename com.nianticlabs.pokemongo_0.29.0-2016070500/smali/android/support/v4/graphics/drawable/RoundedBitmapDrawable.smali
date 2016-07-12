.class public abstract Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RoundedBitmapDrawable.java"


# static fields
.field private static final DEFAULT_PAINT_FLAGS:I = 0x3


# instance fields
.field private mApplyGravity:Z

.field final mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private final mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBitmapWidth:I

.field private mCornerRadius:F

.field final mDstRect:Landroid/graphics/Rect;

.field private final mDstRectF:Landroid/graphics/RectF;

.field private mGravity:I

.field private mIsCircular:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private final mShaderMatrix:Landroid/graphics/Matrix;

.field private mTargetDensity:I


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 375
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 47
    const/16 v0, 0xa0

    iput v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mTargetDensity:I

    .line 48
    const/16 v0, 0x77

    iput v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mGravity:I

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 51
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mDstRectF:Landroid/graphics/RectF;

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mApplyGravity:Z

    .line 376
    if-eqz p1, :cond_0

    .line 377
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mTargetDensity:I

    .line 380
    :cond_0
    iput-object p2, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 381
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 382
    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->computeBitmapSize()V

    .line 383
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 388
    :goto_0
    return-void

    .line 385
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapHeight:I

    iput v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapWidth:I

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    goto :goto_0
.end method

.method private computeBitmapSize()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mTargetDensity:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->getScaledWidth(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapWidth:I

    .line 80
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mTargetDensity:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->getScaledHeight(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapHeight:I

    .line 81
    return-void
.end method

.method private static isGreaterThanZero(F)Z
    .locals 1
    .param p0, "toCompare"    # F

    .prologue
    .line 391
    const v0, 0x3d4ccccd    # 0.05f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateCircularCornerRadius()V
    .locals 3

    .prologue
    .line 308
    iget v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapHeight:I

    iget v2, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapWidth:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 309
    .local v0, "minCircularSize":I
    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    iput v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    .line 310
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 255
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 256
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 266
    :goto_0
    return-void

    .line 260
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->updateDstRect()V

    .line 261
    iget-object v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    if-nez v1, :cond_1

    .line 262
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 264
    :cond_1
    iget-object v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mDstRectF:Landroid/graphics/RectF;

    iget v2, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    iget v3, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    iget-object v4, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getCornerRadius()F
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mGravity:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 354
    iget v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 4

    .prologue
    const/4 v1, -0x3

    .line 364
    iget v2, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mGravity:I

    const/16 v3, 0x77

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mIsCircular:Z

    if-eqz v2, :cond_1

    .line 368
    :cond_0
    :goto_0
    return v1

    .line 367
    :cond_1
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 368
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    const/16 v3, 0xff

    if-lt v2, v3, :cond_0

    iget v2, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    invoke-static {v2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->isGreaterThanZero(F)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method gravityCompatApply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "gravity"    # I
    .param p2, "bitmapWidth"    # I
    .param p3, "bitmapHeight"    # I
    .param p4, "bounds"    # Landroid/graphics/Rect;
    .param p5, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 218
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasAntiAlias()Z
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->isAntiAlias()Z

    move-result v0

    return v0
.end method

.method public hasMipMap()Z
    .locals 1

    .prologue
    .line 177
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isCircular()Z
    .locals 1

    .prologue
    .line 316
    iget-boolean v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mIsCircular:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 338
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 339
    iget-boolean v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mIsCircular:Z

    if-eqz v0, :cond_0

    .line 340
    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->updateCircularCornerRadius()V

    .line 342
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mApplyGravity:Z

    .line 343
    return-void
.end method

.method public setAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    .prologue
    .line 270
    iget-object v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 271
    .local v0, "oldAlpha":I
    if-eq p1, v0, :cond_0

    .line 272
    iget-object v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 273
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    .line 275
    :cond_0
    return-void
.end method

.method public setAntiAlias(Z)V
    .locals 1
    .param p1, "aa"    # Z

    .prologue
    .line 189
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 190
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    .line 191
    return-void
.end method

.method public setCircular(Z)V
    .locals 2
    .param p1, "circular"    # Z

    .prologue
    .line 296
    iput-boolean p1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mIsCircular:Z

    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mApplyGravity:Z

    .line 298
    if-eqz p1, :cond_0

    .line 299
    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->updateCircularCornerRadius()V

    .line 300
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 301
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    .line 305
    :goto_0
    return-void

    .line 303
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    goto :goto_0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 283
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 284
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    .line 285
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 2
    .param p1, "cornerRadius"    # F

    .prologue
    .line 323
    iget v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 334
    :goto_0
    return-void

    .line 325
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mIsCircular:Z

    .line 326
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->isGreaterThanZero(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 332
    :goto_1
    iput p1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    .line 333
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    goto :goto_0

    .line 329
    :cond_1
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_1
.end method

.method public setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    .prologue
    .line 212
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 213
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    .line 214
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z

    .prologue
    .line 206
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 207
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    .line 208
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 146
    iget v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 147
    iput p1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mGravity:I

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mApplyGravity:Z

    .line 149
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    .line 151
    :cond_0
    return-void
.end method

.method public setMipMap(Z)V
    .locals 1
    .param p1, "mipMap"    # Z

    .prologue
    .line 165
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setTargetDensity(I)V
    .locals 1
    .param p1, "density"    # I

    .prologue
    .line 118
    iget v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mTargetDensity:I

    if-eq v0, p1, :cond_2

    .line 119
    if-nez p1, :cond_0

    const/16 p1, 0xa0

    .end local p1    # "density":I
    :cond_0
    iput p1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mTargetDensity:I

    .line 120
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 121
    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->computeBitmapSize()V

    .line 123
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    .line 125
    :cond_2
    return-void
.end method

.method public setTargetDensity(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getDensity()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setTargetDensity(I)V

    .line 95
    return-void
.end method

.method public setTargetDensity(Landroid/util/DisplayMetrics;)V
    .locals 1
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 106
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p0, v0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setTargetDensity(I)V

    .line 107
    return-void
.end method

.method updateDstRect()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 222
    iget-boolean v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mApplyGravity:Z

    if-eqz v0, :cond_1

    .line 223
    iget-boolean v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mIsCircular:Z

    if-eqz v0, :cond_2

    .line 224
    iget v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapWidth:I

    iget v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 225
    .local v2, "minDimen":I
    iget v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mGravity:I

    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    move-object v0, p0

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->gravityCompatApply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 229
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 230
    .local v11, "minDrawDimen":I
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr v0, v11

    div-int/lit8 v0, v0, 0x2

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 231
    .local v9, "insetX":I
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr v0, v11

    div-int/lit8 v0, v0, 0x2

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 232
    .local v10, "insetY":I
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Rect;->inset(II)V

    .line 233
    const/high16 v0, 0x3f000000    # 0.5f

    int-to-float v1, v11

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    .line 237
    .end local v2    # "minDimen":I
    .end local v9    # "insetX":I
    .end local v10    # "insetY":I
    .end local v11    # "minDrawDimen":I
    :goto_0
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mDstRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 239
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mDstRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mDstRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 242
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mDstRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v3, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    iget-object v3, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mDstRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v4, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 245
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 246
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 249
    :cond_0
    iput-boolean v12, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mApplyGravity:Z

    .line 251
    :cond_1
    return-void

    .line 235
    :cond_2
    iget v4, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mGravity:I

    iget v5, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapWidth:I

    iget v6, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapHeight:I

    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    iget-object v8, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->gravityCompatApply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method
