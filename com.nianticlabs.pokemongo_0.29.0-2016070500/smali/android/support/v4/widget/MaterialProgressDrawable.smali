.class Landroid/support/v4/widget/MaterialProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/MaterialProgressDrawable$Ring;,
        Landroid/support/v4/widget/MaterialProgressDrawable$ProgressDrawableSize;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x534

.field private static final ARROW_HEIGHT:I = 0x5

.field private static final ARROW_HEIGHT_LARGE:I = 0x6

.field private static final ARROW_OFFSET_ANGLE:F = 5.0f

.field private static final ARROW_WIDTH:I = 0xa

.field private static final ARROW_WIDTH_LARGE:I = 0xc

.field private static final CENTER_RADIUS:F = 8.75f

.field private static final CENTER_RADIUS_LARGE:F = 12.5f

.field private static final CIRCLE_DIAMETER:I = 0x28

.field private static final CIRCLE_DIAMETER_LARGE:I = 0x38

.field private static final COLOR_START_DELAY_OFFSET:F = 0.75f

.field static final DEFAULT:I = 0x1

.field private static final END_TRIM_START_DELAY_OFFSET:F = 0.5f

.field private static final FULL_ROTATION:F = 1080.0f

.field static final LARGE:I = 0x0

.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MAX_PROGRESS_ARC:F = 0.8f

.field private static final NUM_POINTS:F = 5.0f

.field private static final START_TRIM_DURATION_OFFSET:F = 0.5f

.field private static final STROKE_WIDTH:F = 2.5f

.field private static final STROKE_WIDTH_LARGE:F = 3.0f


# instance fields
.field private final COLORS:[I

.field private mAnimation:Landroid/view/animation/Animation;

.field private final mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallback:Landroid/graphics/drawable/Drawable$Callback;

.field mFinishing:Z

.field private mHeight:D

.field private mParent:Landroid/view/View;

.field private mResources:Landroid/content/res/Resources;

.field private final mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

.field private mRotation:F

.field private mRotationCount:F

.field private mWidth:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/support/v4/widget/MaterialProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 54
    new-instance v0, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Landroid/support/v4/widget/MaterialProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 119
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 75
    new-array v0, v3, [I

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    aput v2, v0, v1

    iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->COLORS:[I

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mAnimators:Ljava/util/ArrayList;

    .line 450
    new-instance v0, Landroid/support/v4/widget/MaterialProgressDrawable$3;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/MaterialProgressDrawable$3;-><init>(Landroid/support/v4/widget/MaterialProgressDrawable;)V

    iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 120
    iput-object p2, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mParent:Landroid/view/View;

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mResources:Landroid/content/res/Resources;

    .line 123
    new-instance v0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-direct {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    .line 124
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->COLORS:[I

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColors([I)V

    .line 126
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/MaterialProgressDrawable;->updateSizes(I)V

    .line 127
    invoke-direct {p0}, Landroid/support/v4/widget/MaterialProgressDrawable;->setupAnimators()V

    .line 128
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/widget/MaterialProgressDrawable;FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/widget/MaterialProgressDrawable;
    .param p1, "x1"    # F
    .param p2, "x2"    # Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/MaterialProgressDrawable;->applyFinishTranslation(FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v4/widget/MaterialProgressDrawable;Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)F
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/MaterialProgressDrawable;
    .param p1, "x1"    # Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable;->getMinProgressArc(Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)F

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/support/v4/widget/MaterialProgressDrawable;FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/widget/MaterialProgressDrawable;
    .param p1, "x1"    # F
    .param p2, "x2"    # Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/MaterialProgressDrawable;->updateRingColor(FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V

    return-void
.end method

.method static synthetic access$300()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Landroid/support/v4/widget/MaterialProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v4/widget/MaterialProgressDrawable;)F
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/MaterialProgressDrawable;

    .prologue
    .line 52
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRotationCount:F

    return v0
.end method

.method static synthetic access$402(Landroid/support/v4/widget/MaterialProgressDrawable;F)F
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/widget/MaterialProgressDrawable;
    .param p1, "x1"    # F

    .prologue
    .line 52
    iput p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRotationCount:F

    return p1
.end method

.method private applyFinishTranslation(FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V
    .locals 8
    .param p1, "interpolatedTime"    # F
    .param p2, "ring"    # Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    .prologue
    .line 348
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/MaterialProgressDrawable;->updateRingColor(FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V

    .line 349
    invoke-virtual {p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v4

    const v5, 0x3f4ccccd    # 0.8f

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    double-to-float v3, v4

    .line 351
    .local v3, "targetRotation":F
    invoke-direct {p0, p2}, Landroid/support/v4/widget/MaterialProgressDrawable;->getMinProgressArc(Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)F

    move-result v0

    .line 352
    .local v0, "minProgressArc":F
    invoke-virtual {p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v4

    invoke-virtual {p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v5

    sub-float/2addr v5, v0

    invoke-virtual {p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v6

    sub-float/2addr v5, v6

    mul-float/2addr v5, p1

    add-float v2, v4, v5

    .line 355
    .local v2, "startTrim":F
    invoke-virtual {p2, v2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 356
    invoke-virtual {p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v4

    invoke-virtual {p2, v4}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 357
    invoke-virtual {p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v4

    invoke-virtual {p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v5

    sub-float v5, v3, v5

    mul-float/2addr v5, p1

    add-float v1, v4, v5

    .line 359
    .local v1, "rotation":F
    invoke-virtual {p2, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setRotation(F)V

    .line 360
    return-void
.end method

.method private evaluateColorChange(FII)I
    .locals 12
    .param p1, "fraction"    # F
    .param p2, "startValue"    # I
    .param p3, "endValue"    # I

    .prologue
    .line 310
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 311
    .local v8, "startInt":I
    shr-int/lit8 v10, v8, 0x18

    and-int/lit16 v5, v10, 0xff

    .line 312
    .local v5, "startA":I
    shr-int/lit8 v10, v8, 0x10

    and-int/lit16 v9, v10, 0xff

    .line 313
    .local v9, "startR":I
    shr-int/lit8 v10, v8, 0x8

    and-int/lit16 v7, v10, 0xff

    .line 314
    .local v7, "startG":I
    and-int/lit16 v6, v8, 0xff

    .line 316
    .local v6, "startB":I
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 317
    .local v3, "endInt":I
    shr-int/lit8 v10, v3, 0x18

    and-int/lit16 v0, v10, 0xff

    .line 318
    .local v0, "endA":I
    shr-int/lit8 v10, v3, 0x10

    and-int/lit16 v4, v10, 0xff

    .line 319
    .local v4, "endR":I
    shr-int/lit8 v10, v3, 0x8

    and-int/lit16 v2, v10, 0xff

    .line 320
    .local v2, "endG":I
    and-int/lit16 v1, v3, 0xff

    .line 322
    .local v1, "endB":I
    sub-int v10, v0, v5

    int-to-float v10, v10

    mul-float/2addr v10, p1

    float-to-int v10, v10

    add-int/2addr v10, v5

    shl-int/lit8 v10, v10, 0x18

    sub-int v11, v4, v9

    int-to-float v11, v11

    mul-float/2addr v11, p1

    float-to-int v11, v11

    add-int/2addr v11, v9

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v10, v11

    sub-int v11, v2, v7

    int-to-float v11, v11

    mul-float/2addr v11, p1

    float-to-int v11, v11

    add-int/2addr v11, v7

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v10, v11

    sub-int v11, v1, v6

    int-to-float v11, v11

    mul-float/2addr v11, p1

    float-to-int v11, v11

    add-int/2addr v11, v6

    or-int/2addr v10, v11

    return v10
.end method

.method private getMinProgressArc(Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)F
    .locals 6
    .param p1, "ring"    # Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    .prologue
    .line 304
    invoke-virtual {p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStrokeWidth()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    invoke-virtual {p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getCenterRadius()D

    move-result-wide v4

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private getRotation()F
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRotation:F

    return v0
.end method

.method private setSizeParameters(DDDDFF)V
    .locals 7
    .param p1, "progressCircleWidth"    # D
    .param p3, "progressCircleHeight"    # D
    .param p5, "centerRadius"    # D
    .param p7, "strokeWidth"    # D
    .param p9, "arrowWidth"    # F
    .param p10, "arrowHeight"    # F

    .prologue
    .line 132
    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    .line 133
    .local v1, "ring":Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
    iget-object v3, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 134
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    .line 136
    .local v2, "screenDensity":F
    float-to-double v4, v2

    mul-double/2addr v4, p1

    iput-wide v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mWidth:D

    .line 137
    float-to-double v4, v2

    mul-double/2addr v4, p3

    iput-wide v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mHeight:D

    .line 138
    double-to-float v3, p7

    mul-float/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setStrokeWidth(F)V

    .line 139
    float-to-double v4, v2

    mul-double/2addr v4, p5

    invoke-virtual {v1, v4, v5}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setCenterRadius(D)V

    .line 140
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 141
    mul-float v3, p9, v2

    mul-float v4, p10, v2

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setArrowDimensions(FF)V

    .line 142
    iget-wide v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mWidth:D

    double-to-int v3, v4

    iget-wide v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mHeight:D

    double-to-int v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setInsets(II)V

    .line 143
    return-void
.end method

.method private setupAnimators()V
    .locals 3

    .prologue
    .line 363
    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    .line 364
    .local v1, "ring":Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
    new-instance v0, Landroid/support/v4/widget/MaterialProgressDrawable$1;

    invoke-direct {v0, p0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$1;-><init>(Landroid/support/v4/widget/MaterialProgressDrawable;Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)V

    .line 416
    .local v0, "animation":Landroid/view/animation/Animation;
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 417
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 418
    sget-object v2, Landroid/support/v4/widget/MaterialProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 419
    new-instance v2, Landroid/support/v4/widget/MaterialProgressDrawable$2;

    invoke-direct {v2, p0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$2;-><init>(Landroid/support/v4/widget/MaterialProgressDrawable;Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 447
    iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    .line 448
    return-void
.end method

.method private updateRingColor(FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V
    .locals 3
    .param p1, "interpolatedTime"    # F
    .param p2, "ring"    # Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    .prologue
    const/high16 v1, 0x3f400000    # 0.75f

    .line 334
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    .line 338
    sub-float v0, p1, v1

    const/high16 v1, 0x3e800000    # 0.25f

    div-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingColor()I

    move-result v1

    invoke-virtual {p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getNextColor()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/widget/MaterialProgressDrawable;->evaluateColorChange(FII)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColor(I)V

    .line 342
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 227
    invoke-virtual {p0}, Landroid/support/v4/widget/MaterialProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 228
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 229
    .local v1, "saveCount":I
    iget v2, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRotation:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 230
    iget-object v2, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v2, p1, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 231
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 232
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 217
    iget-wide v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mHeight:D

    double-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 222
    iget-wide v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mWidth:D

    double-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 261
    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 5

    .prologue
    .line 266
    iget-object v2, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mAnimators:Ljava/util/ArrayList;

    .line 267
    .local v2, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 268
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 269
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Animation;

    .line 270
    .local v1, "animator":Landroid/view/animation/Animation;
    invoke-virtual {v1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v4

    if-nez v4, :cond_0

    .line 271
    const/4 v4, 0x1

    .line 274
    .end local v1    # "animator":Landroid/view/animation/Animation;
    :goto_1
    return v4

    .line 268
    .restart local v1    # "animator":Landroid/view/animation/Animation;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 274
    .end local v1    # "animator":Landroid/view/animation/Animation;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 236
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setAlpha(I)V

    .line 237
    return-void
.end method

.method public setArrowScale(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 173
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setArrowScale(F)V

    .line 174
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 200
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setBackgroundColor(I)V

    .line 201
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 245
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 246
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 2
    .param p1, "colors"    # [I

    .prologue
    .line 211
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColors([I)V

    .line 212
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 213
    return-void
.end method

.method public setProgressRotation(F)V
    .locals 1
    .param p1, "rotation"    # F

    .prologue
    .line 193
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setRotation(F)V

    .line 194
    return-void
.end method

.method setRotation(F)V
    .locals 0
    .param p1, "rotation"    # F

    .prologue
    .line 250
    iput p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRotation:F

    .line 251
    invoke-virtual {p0}, Landroid/support/v4/widget/MaterialProgressDrawable;->invalidateSelf()V

    .line 252
    return-void
.end method

.method public setStartEndTrim(FF)V
    .locals 1
    .param p1, "startAngle"    # F
    .param p2, "endAngle"    # F

    .prologue
    .line 183
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 184
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 185
    return-void
.end method

.method public showArrow(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 166
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    .line 167
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 279
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 280
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->storeOriginals()V

    .line 282
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getEndTrim()F

    move-result v0

    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartTrim()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mFinishing:Z

    .line 284
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x29a

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 285
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mParent:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 292
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 288
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->resetOriginals()V

    .line 289
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x534

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 290
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mParent:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 296
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 297
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->setRotation(F)V

    .line 298
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    .line 299
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 300
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->resetOriginals()V

    .line 301
    return-void
.end method

.method public updateSizes(I)V
    .locals 14
    .param p1, "size"    # I
        .annotation build Landroid/support/v4/widget/MaterialProgressDrawable$ProgressDrawableSize;
        .end annotation
    .end param

    .prologue
    const-wide/high16 v2, 0x404c000000000000L    # 56.0

    const-wide/high16 v12, 0x4044000000000000L    # 40.0

    .line 153
    if-nez p1, :cond_0

    .line 154
    const-wide/high16 v6, 0x4029000000000000L    # 12.5

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    const/high16 v10, 0x41400000    # 12.0f

    const/high16 v11, 0x40c00000    # 6.0f

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v1 .. v11}, Landroid/support/v4/widget/MaterialProgressDrawable;->setSizeParameters(DDDDFF)V

    .line 160
    :goto_0
    return-void

    .line 157
    :cond_0
    const-wide v6, 0x4021800000000000L    # 8.75

    const-wide/high16 v8, 0x4004000000000000L    # 2.5

    const/high16 v10, 0x41200000    # 10.0f

    const/high16 v11, 0x40a00000    # 5.0f

    move-object v1, p0

    move-wide v2, v12

    move-wide v4, v12

    invoke-direct/range {v1 .. v11}, Landroid/support/v4/widget/MaterialProgressDrawable;->setSizeParameters(DDDDFF)V

    goto :goto_0
.end method
