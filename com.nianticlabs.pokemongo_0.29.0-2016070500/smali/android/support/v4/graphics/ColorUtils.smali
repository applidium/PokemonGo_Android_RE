.class public Landroid/support/v4/graphics/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# static fields
.field private static final MIN_ALPHA_SEARCH_MAX_ITERATIONS:I = 0xa

.field private static final MIN_ALPHA_SEARCH_PRECISION:I = 0xa


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HSLToColor([F)I
    .locals 13
    .param p0, "hsl"    # [F

    .prologue
    .line 226
    const/4 v10, 0x0

    aget v3, p0, v10

    .line 227
    .local v3, "h":F
    const/4 v10, 0x1

    aget v8, p0, v10

    .line 228
    .local v8, "s":F
    const/4 v10, 0x2

    aget v5, p0, v10

    .line 230
    .local v5, "l":F
    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v11, v5

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    sub-float/2addr v10, v11

    mul-float v1, v10, v8

    .line 231
    .local v1, "c":F
    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v10, v1

    sub-float v6, v5, v10

    .line 232
    .local v6, "m":F
    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x42700000    # 60.0f

    div-float v11, v3, v11

    const/high16 v12, 0x40000000    # 2.0f

    rem-float/2addr v11, v12

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    sub-float/2addr v10, v11

    mul-float v9, v1, v10

    .line 234
    .local v9, "x":F
    float-to-int v10, v3

    div-int/lit8 v4, v10, 0x3c

    .line 236
    .local v4, "hueSegment":I
    const/4 v7, 0x0

    .local v7, "r":I
    const/4 v2, 0x0

    .local v2, "g":I
    const/4 v0, 0x0

    .line 238
    .local v0, "b":I
    packed-switch v4, :pswitch_data_0

    .line 272
    :goto_0
    const/4 v10, 0x0

    const/16 v11, 0xff

    invoke-static {v7, v10, v11}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    move-result v7

    .line 273
    const/4 v10, 0x0

    const/16 v11, 0xff

    invoke-static {v2, v10, v11}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    move-result v2

    .line 274
    const/4 v10, 0x0

    const/16 v11, 0xff

    invoke-static {v0, v10, v11}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    move-result v0

    .line 276
    invoke-static {v7, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    return v10

    .line 240
    :pswitch_0
    const/high16 v10, 0x437f0000    # 255.0f

    add-float v11, v1, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 241
    const/high16 v10, 0x437f0000    # 255.0f

    add-float v11, v9, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 242
    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 243
    goto :goto_0

    .line 245
    :pswitch_1
    const/high16 v10, 0x437f0000    # 255.0f

    add-float v11, v9, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 246
    const/high16 v10, 0x437f0000    # 255.0f

    add-float v11, v1, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 247
    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 248
    goto :goto_0

    .line 250
    :pswitch_2
    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 251
    const/high16 v10, 0x437f0000    # 255.0f

    add-float v11, v1, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 252
    const/high16 v10, 0x437f0000    # 255.0f

    add-float v11, v9, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 253
    goto :goto_0

    .line 255
    :pswitch_3
    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 256
    const/high16 v10, 0x437f0000    # 255.0f

    add-float v11, v9, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 257
    const/high16 v10, 0x437f0000    # 255.0f

    add-float v11, v1, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 258
    goto/16 :goto_0

    .line 260
    :pswitch_4
    const/high16 v10, 0x437f0000    # 255.0f

    add-float v11, v9, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 261
    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 262
    const/high16 v10, 0x437f0000    # 255.0f

    add-float v11, v1, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 263
    goto/16 :goto_0

    .line 266
    :pswitch_5
    const/high16 v10, 0x437f0000    # 255.0f

    add-float v11, v1, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 267
    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 268
    const/high16 v10, 0x437f0000    # 255.0f

    add-float v11, v9, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto/16 :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static RGBToHSL(III[F)V
    .locals 12
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .param p3, "hsl"    # [F

    .prologue
    .line 162
    int-to-float v9, p0

    const/high16 v10, 0x437f0000    # 255.0f

    div-float v7, v9, v10

    .line 163
    .local v7, "rf":F
    int-to-float v9, p1

    const/high16 v10, 0x437f0000    # 255.0f

    div-float v2, v9, v10

    .line 164
    .local v2, "gf":F
    int-to-float v9, p2

    const/high16 v10, 0x437f0000    # 255.0f

    div-float v0, v9, v10

    .line 166
    .local v0, "bf":F
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 167
    .local v5, "max":F
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 168
    .local v6, "min":F
    sub-float v1, v5, v6

    .line 171
    .local v1, "deltaMaxMin":F
    add-float v9, v5, v6

    const/high16 v10, 0x40000000    # 2.0f

    div-float v4, v9, v10

    .line 173
    .local v4, "l":F
    cmpl-float v9, v5, v6

    if-nez v9, :cond_1

    .line 175
    const/4 v8, 0x0

    .local v8, "s":F
    move v3, v8

    .line 188
    .local v3, "h":F
    :goto_0
    const/high16 v9, 0x42700000    # 60.0f

    mul-float/2addr v9, v3

    const/high16 v10, 0x43b40000    # 360.0f

    rem-float v3, v9, v10

    .line 189
    const/4 v9, 0x0

    cmpg-float v9, v3, v9

    if-gez v9, :cond_0

    .line 190
    const/high16 v9, 0x43b40000    # 360.0f

    add-float/2addr v3, v9

    .line 193
    :cond_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x43b40000    # 360.0f

    invoke-static {v3, v10, v11}, Landroid/support/v4/graphics/ColorUtils;->constrain(FFF)F

    move-result v10

    aput v10, p3, v9

    .line 194
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v8, v10, v11}, Landroid/support/v4/graphics/ColorUtils;->constrain(FFF)F

    move-result v10

    aput v10, p3, v9

    .line 195
    const/4 v9, 0x2

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v4, v10, v11}, Landroid/support/v4/graphics/ColorUtils;->constrain(FFF)F

    move-result v10

    aput v10, p3, v9

    .line 196
    return-void

    .line 177
    .end local v3    # "h":F
    .end local v8    # "s":F
    :cond_1
    cmpl-float v9, v5, v7

    if-nez v9, :cond_2

    .line 178
    sub-float v9, v2, v0

    div-float/2addr v9, v1

    const/high16 v10, 0x40c00000    # 6.0f

    rem-float v3, v9, v10

    .line 185
    .restart local v3    # "h":F
    :goto_1
    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v10, v4

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    sub-float/2addr v9, v10

    div-float v8, v1, v9

    .restart local v8    # "s":F
    goto :goto_0

    .line 179
    .end local v3    # "h":F
    .end local v8    # "s":F
    :cond_2
    cmpl-float v9, v5, v2

    if-nez v9, :cond_3

    .line 180
    sub-float v9, v0, v7

    div-float/2addr v9, v1

    const/high16 v10, 0x40000000    # 2.0f

    add-float v3, v9, v10

    .restart local v3    # "h":F
    goto :goto_1

    .line 182
    .end local v3    # "h":F
    :cond_3
    sub-float v9, v7, v2

    div-float/2addr v9, v1

    const/high16 v10, 0x40800000    # 4.0f

    add-float v3, v9, v10

    .restart local v3    # "h":F
    goto :goto_1
.end method

.method public static calculateContrast(II)D
    .locals 8
    .param p0, "foreground"    # I
    .param p1, "background"    # I

    .prologue
    const/16 v5, 0xff

    const-wide v6, 0x3fa999999999999aL    # 0.05

    .line 84
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    if-eq v4, v5, :cond_0

    .line 85
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "background can not be translucent"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 87
    :cond_0
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    if-ge v4, v5, :cond_1

    .line 89
    invoke-static {p0, p1}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result p0

    .line 92
    :cond_1
    invoke-static {p0}, Landroid/support/v4/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v4

    add-double v0, v4, v6

    .line 93
    .local v0, "luminance1":D
    invoke-static {p1}, Landroid/support/v4/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v4

    add-double v2, v4, v6

    .line 96
    .local v2, "luminance2":D
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    div-double/2addr v4, v6

    return-wide v4
.end method

.method public static calculateLuminance(I)D
    .locals 10
    .param p0, "color"    # I

    .prologue
    .line 64
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x406fe00000000000L    # 255.0

    div-double v4, v6, v8

    .line 65
    .local v4, "red":D
    const-wide v6, 0x3fa41c8216c61523L    # 0.03928

    cmpg-double v6, v4, v6

    if-gez v6, :cond_0

    const-wide v6, 0x4029d70a3d70a3d7L    # 12.92

    div-double/2addr v4, v6

    .line 67
    :goto_0
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x406fe00000000000L    # 255.0

    div-double v2, v6, v8

    .line 68
    .local v2, "green":D
    const-wide v6, 0x3fa41c8216c61523L    # 0.03928

    cmpg-double v6, v2, v6

    if-gez v6, :cond_1

    const-wide v6, 0x4029d70a3d70a3d7L    # 12.92

    div-double/2addr v2, v6

    .line 70
    :goto_1
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x406fe00000000000L    # 255.0

    div-double v0, v6, v8

    .line 71
    .local v0, "blue":D
    const-wide v6, 0x3fa41c8216c61523L    # 0.03928

    cmpg-double v6, v0, v6

    if-gez v6, :cond_2

    const-wide v6, 0x4029d70a3d70a3d7L    # 12.92

    div-double/2addr v0, v6

    .line 73
    :goto_2
    const-wide v6, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v6, v4

    const-wide v8, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    const-wide v8, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    return-wide v6

    .line 65
    .end local v0    # "blue":D
    .end local v2    # "green":D
    :cond_0
    const-wide v6, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v6, v4

    const-wide v8, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v6, v8

    const-wide v8, 0x4003333333333333L    # 2.4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    goto :goto_0

    .line 68
    .restart local v2    # "green":D
    :cond_1
    const-wide v6, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v6, v2

    const-wide v8, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v6, v8

    const-wide v8, 0x4003333333333333L    # 2.4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    goto :goto_1

    .line 71
    .restart local v0    # "blue":D
    :cond_2
    const-wide v6, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v6, v0

    const-wide v8, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v6, v8

    const-wide v8, 0x4003333333333333L    # 2.4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_2
.end method

.method public static calculateMinimumAlpha(IIF)I
    .locals 11
    .param p0, "foreground"    # I
    .param p1, "background"    # I
    .param p2, "minContrastRatio"    # F

    .prologue
    const/16 v8, 0xff

    const/16 v10, 0xa

    .line 111
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    if-eq v5, v8, :cond_0

    .line 112
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v8, "background can not be translucent"

    invoke-direct {v5, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 116
    :cond_0
    invoke-static {p0, v8}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    .line 117
    .local v4, "testForeground":I
    invoke-static {v4, p1}, Landroid/support/v4/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v6

    .line 118
    .local v6, "testRatio":D
    float-to-double v8, p2

    cmpg-double v5, v6, v8

    if-gez v5, :cond_2

    .line 120
    const/4 v0, -0x1

    .line 145
    :cond_1
    return v0

    .line 124
    :cond_2
    const/4 v2, 0x0

    .line 125
    .local v2, "numIterations":I
    const/4 v1, 0x0

    .line 126
    .local v1, "minAlpha":I
    const/16 v0, 0xff

    .line 128
    .local v0, "maxAlpha":I
    :goto_0
    if-gt v2, v10, :cond_1

    sub-int v5, v0, v1

    if-le v5, v10, :cond_1

    .line 130
    add-int v5, v1, v0

    div-int/lit8 v3, v5, 0x2

    .line 132
    .local v3, "testAlpha":I
    invoke-static {p0, v3}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    .line 133
    invoke-static {v4, p1}, Landroid/support/v4/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v6

    .line 135
    float-to-double v8, p2

    cmpg-double v5, v6, v8

    if-gez v5, :cond_3

    .line 136
    move v1, v3

    .line 141
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 142
    goto :goto_0

    .line 138
    :cond_3
    move v0, v3

    goto :goto_1
.end method

.method public static colorToHSL(I[F)V
    .locals 3
    .param p0, "color"    # I
    .param p1, "hsl"    # [F

    .prologue
    .line 210
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Landroid/support/v4/graphics/ColorUtils;->RGBToHSL(III[F)V

    .line 211
    return-void
.end method

.method private static compositeAlpha(II)I
    .locals 2
    .param p0, "foregroundAlpha"    # I
    .param p1, "backgroundAlpha"    # I

    .prologue
    .line 50
    rsub-int v0, p1, 0xff

    rsub-int v1, p0, 0xff

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0xff

    rsub-int v0, v0, 0xff

    return v0
.end method

.method public static compositeColors(II)I
    .locals 8
    .param p0, "foreground"    # I
    .param p1, "background"    # I

    .prologue
    .line 35
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    .line 36
    .local v2, "bgAlpha":I
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    .line 37
    .local v3, "fgAlpha":I
    invoke-static {v3, v2}, Landroid/support/v4/graphics/ColorUtils;->compositeAlpha(II)I

    move-result v0

    .line 39
    .local v0, "a":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static {v6, v3, v7, v2, v0}, Landroid/support/v4/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v5

    .line 41
    .local v5, "r":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-static {v6, v3, v7, v2, v0}, Landroid/support/v4/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v4

    .line 43
    .local v4, "g":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-static {v6, v3, v7, v2, v0}, Landroid/support/v4/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v1

    .line 46
    .local v1, "b":I
    invoke-static {v0, v5, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    return v6
.end method

.method private static compositeComponent(IIIII)I
    .locals 3
    .param p0, "fgC"    # I
    .param p1, "fgA"    # I
    .param p2, "bgC"    # I
    .param p3, "bgA"    # I
    .param p4, "a"    # I

    .prologue
    .line 54
    if-nez p4, :cond_0

    const/4 v0, 0x0

    .line 55
    :goto_0
    return v0

    :cond_0
    mul-int/lit16 v0, p0, 0xff

    mul-int/2addr v0, p1

    mul-int v1, p2, p3

    rsub-int v2, p1, 0xff

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit16 v1, p4, 0xff

    div-int/2addr v0, v1

    goto :goto_0
.end method

.method private static constrain(FFF)F
    .locals 1
    .param p0, "amount"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .prologue
    .line 290
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .end local p1    # "low":F
    :goto_0
    return p1

    .restart local p1    # "low":F
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method private static constrain(III)I
    .locals 0
    .param p0, "amount"    # I
    .param p1, "low"    # I
    .param p2, "high"    # I

    .prologue
    .line 294
    if-ge p0, p1, :cond_0

    .end local p1    # "low":I
    :goto_0
    return p1

    .restart local p1    # "low":I
    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method public static setAlphaComponent(II)I
    .locals 2
    .param p0, "color"    # I
    .param p1, "alpha"    # I

    .prologue
    .line 283
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 284
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "alpha must be between 0 and 255."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_1
    const v0, 0xffffff

    and-int/2addr v0, p0

    shl-int/lit8 v1, p1, 0x18

    or-int/2addr v0, v1

    return v0
.end method
