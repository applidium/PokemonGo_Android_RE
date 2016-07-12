.class public abstract Landroid/support/v4/app/SharedElementCallback;
.super Ljava/lang/Object;
.source "SharedElementCallback.java"


# static fields
.field private static final BUNDLE_SNAPSHOT_BITMAP:Ljava/lang/String; = "sharedElement:snapshot:bitmap"

.field private static final BUNDLE_SNAPSHOT_IMAGE_MATRIX:Ljava/lang/String; = "sharedElement:snapshot:imageMatrix"

.field private static final BUNDLE_SNAPSHOT_IMAGE_SCALETYPE:Ljava/lang/String; = "sharedElement:snapshot:imageScaleType"

.field private static MAX_IMAGE_SIZE:I


# instance fields
.field private mTempMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/high16 v0, 0x100000

    sput v0, Landroid/support/v4/app/SharedElementCallback;->MAX_IMAGE_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createDrawableBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 15
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 215
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    .line 216
    .local v11, "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 217
    .local v6, "height":I
    if-lez v11, :cond_0

    if-gtz v6, :cond_1

    .line 218
    :cond_0
    const/4 v0, 0x0

    .line 237
    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 220
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/high16 v12, 0x3f800000    # 1.0f

    sget v13, Landroid/support/v4/app/SharedElementCallback;->MAX_IMAGE_SIZE:I

    int-to-float v13, v13

    mul-int v14, v11, v6

    int-to-float v14, v14

    div-float/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 221
    .local v9, "scale":F
    instance-of v12, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v12, :cond_2

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v12, v9, v12

    if-nez v12, :cond_2

    .line 223
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 225
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    int-to-float v12, v11

    mul-float/2addr v12, v9

    float-to-int v2, v12

    .line 226
    .local v2, "bitmapWidth":I
    int-to-float v12, v6

    mul-float/2addr v12, v9

    float-to-int v1, v12

    .line 227
    .local v1, "bitmapHeight":I
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 228
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 229
    .local v4, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 230
    .local v5, "existingBounds":Landroid/graphics/Rect;
    iget v7, v5, Landroid/graphics/Rect;->left:I

    .line 231
    .local v7, "left":I
    iget v10, v5, Landroid/graphics/Rect;->top:I

    .line 232
    .local v10, "top":I
    iget v8, v5, Landroid/graphics/Rect;->right:I

    .line 233
    .local v8, "right":I
    iget v3, v5, Landroid/graphics/Rect;->bottom:I

    .line 234
    .local v3, "bottom":I
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 235
    invoke-virtual {p0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 236
    invoke-virtual {p0, v7, v10, v8, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
    .locals 15
    .param p1, "sharedElement"    # Landroid/view/View;
    .param p2, "viewToGlobalMatrix"    # Landroid/graphics/Matrix;
    .param p3, "screenBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 169
    move-object/from16 v0, p1

    instance-of v12, v0, Landroid/widget/ImageView;

    if-eqz v12, :cond_1

    move-object/from16 v8, p1

    .line 170
    check-cast v8, Landroid/widget/ImageView;

    .line 171
    .local v8, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 172
    .local v7, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 173
    .local v1, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_1

    if-nez v1, :cond_1

    .line 174
    invoke-static {v7}, Landroid/support/v4/app/SharedElementCallback;->createDrawableBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 175
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 176
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 177
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v12, "sharedElement:snapshot:bitmap"

    invoke-virtual {v5, v12, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 178
    const-string v12, "sharedElement:snapshot:imageScaleType"

    invoke-virtual {v8}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/ImageView$ScaleType;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v8}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v12

    sget-object v13, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v12, v13, :cond_0

    .line 181
    invoke-virtual {v8}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    .line 182
    .local v9, "matrix":Landroid/graphics/Matrix;
    const/16 v12, 0x9

    new-array v11, v12, [F

    .line 183
    .local v11, "values":[F
    invoke-virtual {v9, v11}, Landroid/graphics/Matrix;->getValues([F)V

    .line 184
    const-string v12, "sharedElement:snapshot:imageMatrix"

    invoke-virtual {v5, v12, v11}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 208
    .end local v1    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v7    # "d":Landroid/graphics/drawable/Drawable;
    .end local v8    # "imageView":Landroid/widget/ImageView;
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    .end local v11    # "values":[F
    :cond_0
    :goto_0
    return-object v5

    .line 190
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 191
    .local v4, "bitmapWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 192
    .local v3, "bitmapHeight":I
    const/4 v2, 0x0

    .line 193
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    if-lez v4, :cond_3

    if-lez v3, :cond_3

    .line 194
    const/high16 v12, 0x3f800000    # 1.0f

    sget v13, Landroid/support/v4/app/SharedElementCallback;->MAX_IMAGE_SIZE:I

    int-to-float v13, v13

    mul-int v14, v4, v3

    int-to-float v14, v14

    div-float/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 195
    .local v10, "scale":F
    int-to-float v12, v4

    mul-float/2addr v12, v10

    float-to-int v4, v12

    .line 196
    int-to-float v12, v3

    mul-float/2addr v12, v10

    float-to-int v3, v12

    .line 197
    iget-object v12, p0, Landroid/support/v4/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    if-nez v12, :cond_2

    .line 198
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    iput-object v12, p0, Landroid/support/v4/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    .line 200
    :cond_2
    iget-object v12, p0, Landroid/support/v4/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 201
    iget-object v12, p0, Landroid/support/v4/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p3

    iget v13, v0, Landroid/graphics/RectF;->left:F

    neg-float v13, v13

    move-object/from16 v0, p3

    iget v14, v0, Landroid/graphics/RectF;->top:F

    neg-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 202
    iget-object v12, p0, Landroid/support/v4/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v12, v10, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 203
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 204
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 205
    .local v6, "canvas":Landroid/graphics/Canvas;
    iget-object v12, p0, Landroid/support/v4/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v12}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 206
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v10    # "scale":F
    :cond_3
    move-object v5, v2

    .line 208
    goto :goto_0
.end method

.method public onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "snapshot"    # Landroid/os/Parcelable;

    .prologue
    .line 258
    const/4 v5, 0x0

    .line 259
    .local v5, "view":Landroid/widget/ImageView;
    instance-of v6, p2, Landroid/os/Bundle;

    if-eqz v6, :cond_2

    move-object v1, p2

    .line 260
    check-cast v1, Landroid/os/Bundle;

    .line 261
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v6, "sharedElement:snapshot:bitmap"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 262
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 263
    const/4 v6, 0x0

    .line 281
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-object v6

    .line 265
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 266
    .local v2, "imageView":Landroid/widget/ImageView;
    move-object v5, v2

    .line 267
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 268
    const-string v6, "sharedElement:snapshot:imageScaleType"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/widget/ImageView$ScaleType;->valueOf(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 270
    invoke-virtual {v2}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v6

    sget-object v7, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v6, v7, :cond_1

    .line 271
    const-string v6, "sharedElement:snapshot:imageMatrix"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v4

    .line 272
    .local v4, "values":[F
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 273
    .local v3, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->setValues([F)V

    .line 274
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "imageView":Landroid/widget/ImageView;
    .end local v3    # "matrix":Landroid/graphics/Matrix;
    .end local v4    # "values":[F
    :cond_1
    :goto_1
    move-object v6, v5

    .line 281
    goto :goto_0

    .line 276
    :cond_2
    instance-of v6, p2, Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1

    move-object v0, p2

    .line 277
    check-cast v0, Landroid/graphics/Bitmap;

    .line 278
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/widget/ImageView;

    .end local v5    # "view":Landroid/widget/ImageView;
    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 279
    .restart local v5    # "view":Landroid/widget/ImageView;
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    return-void
.end method

.method public onRejectSharedElements(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "rejectedSharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    return-void
.end method

.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    return-void
.end method

.method public onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    return-void
.end method
