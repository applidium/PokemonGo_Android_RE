.class public final Lcom/nianticlabs/nia/sensors/MathUtil;
.super Ljava/lang/Object;
.source "MathUtil.java"


# static fields
.field public static final DEGREES_TO_RADIANS:F = 0.017453292f

.field public static final HALF_PI:F = 1.5707964f

.field public static final NANOSECONDS_PER_SECOND:D = 1.0E9

.field public static final NANOSECONDS_PER_SECOND_AS_LONG:J = 0x3b9aca00L

.field public static final PI:F = 3.1415927f

.field public static final RADIANS_TO_DEGREES:F = 57.29578f

.field public static final TWO_PI:F = 6.2831855f


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    return-void
.end method

.method public static clamp(FFF)F
    .locals 1
    .param p0, "f"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .prologue
    .line 43
    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static clamp(III)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "low"    # I
    .param p2, "high"    # I

    .prologue
    .line 50
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static degToRad(F)F
    .locals 1
    .param p0, "degrees"    # F

    .prologue
    .line 60
    const v0, 0x3c8efa35

    mul-float/2addr v0, p0

    return v0
.end method

.method public static ease(F)F
    .locals 4
    .param p0, "t"    # F

    .prologue
    .line 29
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static lerp(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "t"    # F

    .prologue
    .line 16
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method public static linearStep(FFF)F
    .locals 2
    .param p0, "edge1"    # F
    .param p1, "edge2"    # F
    .param p2, "t"    # F

    .prologue
    .line 25
    sub-float v0, p2, p0

    sub-float v1, p1, p0

    div-float/2addr v0, v1

    invoke-static {v0}, Lcom/nianticlabs/nia/sensors/MathUtil;->saturate(F)F

    move-result v0

    return v0
.end method

.method public static nextPowerOf2(J)J
    .locals 6
    .param p0, "val"    # J

    .prologue
    const-wide/16 v4, 0x1

    .line 138
    const-wide/16 v2, 0x0

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 139
    .local v0, "v":J
    sub-long/2addr v0, v4

    .line 140
    const/4 v2, 0x1

    shr-long v2, v0, v2

    or-long/2addr v0, v2

    .line 141
    const/4 v2, 0x2

    shr-long v2, v0, v2

    or-long/2addr v0, v2

    .line 142
    const/4 v2, 0x4

    shr-long v2, v0, v2

    or-long/2addr v0, v2

    .line 143
    const/16 v2, 0x8

    shr-long v2, v0, v2

    or-long/2addr v0, v2

    .line 144
    const/16 v2, 0x10

    shr-long v2, v0, v2

    or-long/2addr v0, v2

    .line 145
    add-long/2addr v0, v4

    .line 146
    return-wide v0
.end method

.method public static normalizeAngle(D)D
    .locals 4
    .param p0, "radians"    # D

    .prologue
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    .line 76
    :goto_0
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    sub-double/2addr p0, v2

    goto :goto_0

    .line 77
    :cond_0
    :goto_1
    const-wide v0, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_1

    add-double/2addr p0, v2

    goto :goto_1

    .line 78
    :cond_1
    return-wide p0
.end method

.method public static normalizeAngle(F)F
    .locals 2
    .param p0, "radians"    # F

    .prologue
    const v1, 0x40c90fdb

    .line 67
    :goto_0
    const v0, 0x40490fdb    # (float)Math.PI

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    sub-float/2addr p0, v1

    goto :goto_0

    .line 68
    :cond_0
    :goto_1
    const v0, -0x3fb6f025

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_1

    add-float/2addr p0, v1

    goto :goto_1

    .line 69
    :cond_1
    return p0
.end method

.method public static quadraticBezier(FFFFFFI)[F
    .locals 8
    .param p0, "x0"    # F
    .param p1, "y0"    # F
    .param p2, "x1"    # F
    .param p3, "y1"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F
    .param p6, "N"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 108
    mul-int/lit8 v3, p6, 0x2

    new-array v0, v3, [F

    .line 110
    .local v0, "a":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p6, :cond_0

    .line 111
    int-to-float v3, v1

    add-int/lit8 v4, p6, -0x1

    int-to-float v4, v4

    div-float v4, v6, v4

    mul-float v2, v3, v4

    .line 114
    .local v2, "t":F
    mul-int/lit8 v3, v1, 0x2

    sub-float v4, v6, v2

    sub-float v5, v6, v2

    mul-float/2addr v4, v5

    mul-float/2addr v4, p0

    sub-float v5, v6, v2

    mul-float/2addr v5, v7

    mul-float/2addr v5, v2

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    mul-float v5, v2, v2

    mul-float/2addr v5, p4

    add-float/2addr v4, v5

    aput v4, v0, v3

    .line 117
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    sub-float v4, v6, v2

    sub-float v5, v6, v2

    mul-float/2addr v4, v5

    mul-float/2addr v4, p1

    sub-float v5, v6, v2

    mul-float/2addr v5, v7

    mul-float/2addr v5, v2

    mul-float/2addr v5, p3

    add-float/2addr v4, v5

    mul-float v5, v2, v2

    mul-float/2addr v5, p5

    add-float/2addr v4, v5

    aput v4, v0, v3

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    .end local v2    # "t":F
    :cond_0
    return-object v0
.end method

.method public static radToDeg(F)F
    .locals 1
    .param p0, "radians"    # F

    .prologue
    .line 55
    const v0, 0x42652ee1

    mul-float/2addr v0, p0

    return v0
.end method

.method public static randomRange(FF)F
    .locals 4
    .param p0, "min"    # F
    .param p1, "max"    # F

    .prologue
    .line 126
    sub-float v0, p1, p0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method public static saturate(F)F
    .locals 2
    .param p0, "f"    # F

    .prologue
    .line 36
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Lcom/nianticlabs/nia/sensors/MathUtil;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method public static wrapAngle(D)D
    .locals 4
    .param p0, "radians"    # D

    .prologue
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    .line 94
    :goto_0
    cmpl-double v0, p0, v2

    if-ltz v0, :cond_0

    sub-double/2addr p0, v2

    goto :goto_0

    .line 95
    :cond_0
    :goto_1
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    add-double/2addr p0, v2

    goto :goto_1

    .line 96
    :cond_1
    return-wide p0
.end method

.method public static wrapAngle(F)F
    .locals 2
    .param p0, "radians"    # F

    .prologue
    const v1, 0x40c90fdb

    .line 85
    :goto_0
    cmpl-float v0, p0, v1

    if-ltz v0, :cond_0

    sub-float/2addr p0, v1

    goto :goto_0

    .line 86
    :cond_0
    :goto_1
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1

    add-float/2addr p0, v1

    goto :goto_1

    .line 87
    :cond_1
    return p0
.end method
