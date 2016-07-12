.class public Landroid/support/v4/view/PagerTabStrip;
.super Landroid/support/v4/view/PagerTitleStrip;
.source "PagerTabStrip.java"


# static fields
.field private static final FULL_UNDERLINE_HEIGHT:I = 0x1

.field private static final INDICATOR_HEIGHT:I = 0x3

.field private static final MIN_PADDING_BOTTOM:I = 0x6

.field private static final MIN_STRIP_HEIGHT:I = 0x20

.field private static final MIN_TEXT_SPACING:I = 0x40

.field private static final TAB_PADDING:I = 0x10

.field private static final TAB_SPACING:I = 0x20

.field private static final TAG:Ljava/lang/String; = "PagerTabStrip"


# instance fields
.field private mDrawFullUnderline:Z

.field private mDrawFullUnderlineSet:Z

.field private mFullUnderlineHeight:I

.field private mIgnoreTap:Z

.field private mIndicatorColor:I

.field private mIndicatorHeight:I

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mMinPaddingBottom:I

.field private mMinStripHeight:I

.field private mMinTextSpacing:I

.field private mTabAlpha:I

.field private mTabPadding:I

.field private final mTabPaint:Landroid/graphics/Paint;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/view/PagerTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/PagerTitleStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    .line 65
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v4/view/PagerTabStrip;->mTempRect:Landroid/graphics/Rect;

    .line 67
    const/16 v1, 0xff

    iput v1, p0, Landroid/support/v4/view/PagerTabStrip;->mTabAlpha:I

    .line 69
    iput-boolean v5, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderline:Z

    .line 70
    iput-boolean v5, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderlineSet:Z

    .line 85
    iget v1, p0, Landroid/support/v4/view/PagerTabStrip;->mTextColor:I

    iput v1, p0, Landroid/support/v4/view/PagerTabStrip;->mIndicatorColor:I

    .line 86
    iget-object v1, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/support/v4/view/PagerTabStrip;->mIndicatorColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 91
    .local v0, "density":F
    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/view/PagerTabStrip;->mIndicatorHeight:I

    .line 92
    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/view/PagerTabStrip;->mMinPaddingBottom:I

    .line 93
    const/high16 v1, 0x42800000    # 64.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/view/PagerTabStrip;->mMinTextSpacing:I

    .line 94
    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I

    .line 95
    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/view/PagerTabStrip;->mFullUnderlineHeight:I

    .line 96
    const/high16 v1, 0x42000000    # 32.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/view/PagerTabStrip;->mMinStripHeight:I

    .line 97
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/PagerTabStrip;->mTouchSlop:I

    .line 100
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/support/v4/view/PagerTabStrip;->setPadding(IIII)V

    .line 101
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getTextSpacing()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v4/view/PagerTabStrip;->setTextSpacing(I)V

    .line 103
    invoke-virtual {p0, v5}, Landroid/support/v4/view/PagerTabStrip;->setWillNotDraw(Z)V

    .line 105
    iget-object v1, p0, Landroid/support/v4/view/PagerTabStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 106
    iget-object v1, p0, Landroid/support/v4/view/PagerTabStrip;->mPrevText:Landroid/widget/TextView;

    new-instance v2, Landroid/support/v4/view/PagerTabStrip$1;

    invoke-direct {v2, p0}, Landroid/support/v4/view/PagerTabStrip$1;-><init>(Landroid/support/v4/view/PagerTabStrip;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v1, p0, Landroid/support/v4/view/PagerTabStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 114
    iget-object v1, p0, Landroid/support/v4/view/PagerTabStrip;->mNextText:Landroid/widget/TextView;

    new-instance v2, Landroid/support/v4/view/PagerTabStrip$2;

    invoke-direct {v2, p0}, Landroid/support/v4/view/PagerTabStrip$2;-><init>(Landroid/support/v4/view/PagerTabStrip;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 122
    iput-boolean v6, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderline:Z

    .line 124
    :cond_0
    return-void
.end method


# virtual methods
.method public getDrawFullUnderline()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderline:Z

    return v0
.end method

.method getMinHeight()I
    .locals 2

    .prologue
    .line 219
    invoke-super {p0}, Landroid/support/v4/view/PagerTitleStrip;->getMinHeight()I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/PagerTabStrip;->mMinStripHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getTabIndicatorColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 151
    iget v0, p0, Landroid/support/v4/view/PagerTabStrip;->mIndicatorColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const v11, 0xffffff

    .line 261
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerTitleStrip;->onDraw(Landroid/graphics/Canvas;)V

    .line 263
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getHeight()I

    move-result v7

    .line 264
    .local v7, "height":I
    move v6, v7

    .line 265
    .local v6, "bottom":I
    iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I

    sub-int v8, v0, v1

    .line 266
    .local v8, "left":I
    iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getRight()I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I

    add-int v9, v0, v1

    .line 267
    .local v9, "right":I
    iget v0, p0, Landroid/support/v4/view/PagerTabStrip;->mIndicatorHeight:I

    sub-int v10, v6, v0

    .line 269
    .local v10, "top":I
    iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/v4/view/PagerTabStrip;->mTabAlpha:I

    shl-int/lit8 v1, v1, 0x18

    iget v2, p0, Landroid/support/v4/view/PagerTabStrip;->mIndicatorColor:I

    and-int/2addr v2, v11

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 270
    int-to-float v1, v8

    int-to-float v2, v10

    int-to-float v3, v9

    int-to-float v4, v6

    iget-object v5, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 272
    iget-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderline:Z

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    iget v2, p0, Landroid/support/v4/view/PagerTabStrip;->mIndicatorColor:I

    and-int/2addr v2, v11

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 274
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getPaddingLeft()I

    move-result v0

    int-to-float v1, v0

    iget v0, p0, Landroid/support/v4/view/PagerTabStrip;->mFullUnderlineHeight:I

    sub-int v0, v7, v0

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    int-to-float v4, v7

    iget-object v5, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 277
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 224
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 225
    .local v0, "action":I
    if-eqz v0, :cond_0

    iget-boolean v5, p0, Landroid/support/v4/view/PagerTabStrip;->mIgnoreTap:Z

    if-eqz v5, :cond_0

    .line 256
    :goto_0
    return v3

    .line 231
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 232
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 233
    .local v2, "y":F
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    move v3, v4

    .line 256
    goto :goto_0

    .line 235
    :pswitch_0
    iput v1, p0, Landroid/support/v4/view/PagerTabStrip;->mInitialMotionX:F

    .line 236
    iput v2, p0, Landroid/support/v4/view/PagerTabStrip;->mInitialMotionY:F

    .line 237
    iput-boolean v3, p0, Landroid/support/v4/view/PagerTabStrip;->mIgnoreTap:Z

    goto :goto_1

    .line 241
    :pswitch_1
    iget v3, p0, Landroid/support/v4/view/PagerTabStrip;->mInitialMotionX:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, p0, Landroid/support/v4/view/PagerTabStrip;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_2

    iget v3, p0, Landroid/support/v4/view/PagerTabStrip;->mInitialMotionY:F

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, p0, Landroid/support/v4/view/PagerTabStrip;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    .line 243
    :cond_2
    iput-boolean v4, p0, Landroid/support/v4/view/PagerTabStrip;->mIgnoreTap:Z

    goto :goto_1

    .line 248
    :pswitch_2
    iget-object v3, p0, Landroid/support/v4/view/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLeft()I

    move-result v3

    iget v5, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_3

    .line 249
    iget-object v3, p0, Landroid/support/v4/view/PagerTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v5, p0, Landroid/support/v4/view/PagerTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_1

    .line 250
    :cond_3
    iget-object v3, p0, Landroid/support/v4/view/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getRight()I

    move-result v3

    iget v5, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_1

    .line 251
    iget-object v3, p0, Landroid/support/v4/view/PagerTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v5, p0, Landroid/support/v4/view/PagerTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_1

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerTitleStrip;->setBackgroundColor(I)V

    .line 181
    iget-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderlineSet:Z

    if-nez v0, :cond_0

    .line 182
    const/high16 v0, -0x1000000

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderline:Z

    .line 184
    :cond_0
    return-void

    .line 182
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 172
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerTitleStrip;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    iget-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderlineSet:Z

    if-nez v0, :cond_0

    .line 174
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderline:Z

    .line 176
    :cond_0
    return-void

    .line 174
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 188
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerTitleStrip;->setBackgroundResource(I)V

    .line 189
    iget-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderlineSet:Z

    if-nez v0, :cond_0

    .line 190
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderline:Z

    .line 192
    :cond_0
    return-void

    .line 190
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDrawFullUnderline(Z)V
    .locals 1
    .param p1, "drawFull"    # Z

    .prologue
    .line 201
    iput-boolean p1, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderline:Z

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderlineSet:Z

    .line 203
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->invalidate()V

    .line 204
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 156
    iget v0, p0, Landroid/support/v4/view/PagerTabStrip;->mMinPaddingBottom:I

    if-ge p4, v0, :cond_0

    .line 157
    iget p4, p0, Landroid/support/v4/view/PagerTabStrip;->mMinPaddingBottom:I

    .line 159
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/view/PagerTitleStrip;->setPadding(IIII)V

    .line 160
    return-void
.end method

.method public setTabIndicatorColor(I)V
    .locals 2
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 132
    iput p1, p0, Landroid/support/v4/view/PagerTabStrip;->mIndicatorColor:I

    .line 133
    iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/v4/view/PagerTabStrip;->mIndicatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->invalidate()V

    .line 135
    return-void
.end method

.method public setTabIndicatorColorResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 143
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColor(I)V

    .line 144
    return-void
.end method

.method public setTextSpacing(I)V
    .locals 1
    .param p1, "textSpacing"    # I

    .prologue
    .line 164
    iget v0, p0, Landroid/support/v4/view/PagerTabStrip;->mMinTextSpacing:I

    if-ge p1, v0, :cond_0

    .line 165
    iget p1, p0, Landroid/support/v4/view/PagerTabStrip;->mMinTextSpacing:I

    .line 167
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerTitleStrip;->setTextSpacing(I)V

    .line 168
    return-void
.end method

.method updateTextPositions(IFZ)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "force"    # Z

    .prologue
    .line 281
    iget-object v2, p0, Landroid/support/v4/view/PagerTabStrip;->mTempRect:Landroid/graphics/Rect;

    .line 282
    .local v2, "r":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getHeight()I

    move-result v0

    .line 283
    .local v0, "bottom":I
    iget-object v5, p0, Landroid/support/v4/view/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLeft()I

    move-result v5

    iget v6, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I

    sub-int v1, v5, v6

    .line 284
    .local v1, "left":I
    iget-object v5, p0, Landroid/support/v4/view/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getRight()I

    move-result v5

    iget v6, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I

    add-int v3, v5, v6

    .line 285
    .local v3, "right":I
    iget v5, p0, Landroid/support/v4/view/PagerTabStrip;->mIndicatorHeight:I

    sub-int v4, v0, v5

    .line 287
    .local v4, "top":I
    invoke-virtual {v2, v1, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 289
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/PagerTitleStrip;->updateTextPositions(IFZ)V

    .line 290
    const/high16 v5, 0x3f000000    # 0.5f

    sub-float v5, p2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/support/v4/view/PagerTabStrip;->mTabAlpha:I

    .line 292
    iget-object v5, p0, Landroid/support/v4/view/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLeft()I

    move-result v5

    iget v6, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I

    sub-int v1, v5, v6

    .line 293
    iget-object v5, p0, Landroid/support/v4/view/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getRight()I

    move-result v5

    iget v6, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I

    add-int v3, v5, v6

    .line 294
    invoke-virtual {v2, v1, v4, v3, v0}, Landroid/graphics/Rect;->union(IIII)V

    .line 296
    invoke-virtual {p0, v2}, Landroid/support/v4/view/PagerTabStrip;->invalidate(Landroid/graphics/Rect;)V

    .line 297
    return-void
.end method
