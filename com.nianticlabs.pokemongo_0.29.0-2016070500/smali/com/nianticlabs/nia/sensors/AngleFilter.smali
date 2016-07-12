.class public Lcom/nianticlabs/nia/sensors/AngleFilter;
.super Ljava/lang/Object;
.source "AngleFilter.java"


# static fields
.field private static final FRICTION_COEFFICIENT_1:F = 1.0f

.field private static final FRICTION_COEFFICIENT_2:F = 0.5f

.field private static final MAX_DT:F = 10.0f

.field private static final SIGNAL_LEVEL:F = 10.0f

.field private static final STEP_SIZE:F = 0.5f

.field private static final TIME_NORMALIZATION_MS:F = 100.0f


# instance fields
.field protected currentValue:F

.field private lastReadingTime:J

.field private speed:F

.field private final wrap:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 2
    .param p1, "wrap"    # Z

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticlabs/nia/sensors/AngleFilter;->speed:F

    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nianticlabs/nia/sensors/AngleFilter;->lastReadingTime:J

    .line 91
    iput-boolean p1, p0, Lcom/nianticlabs/nia/sensors/AngleFilter;->wrap:Z

    .line 92
    return-void
.end method

.method private step(FF)V
    .locals 9
    .param p1, "dT"    # F
    .param p2, "in"    # F

    .prologue
    const/high16 v5, 0x41200000    # 10.0f

    const/4 v8, 0x0

    .line 143
    iget v3, p0, Lcom/nianticlabs/nia/sensors/AngleFilter;->currentValue:F

    sub-float v3, p2, v3

    div-float v1, v3, v5

    .line 144
    .local v1, "diff":F
    iget v3, p0, Lcom/nianticlabs/nia/sensors/AngleFilter;->speed:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v1

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, p0, Lcom/nianticlabs/nia/sensors/AngleFilter;->speed:F

    .line 146
    iget v3, p0, Lcom/nianticlabs/nia/sensors/AngleFilter;->speed:F

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_0

    .line 147
    mul-float v3, v1, v5

    iget v4, p0, Lcom/nianticlabs/nia/sensors/AngleFilter;->speed:F

    div-float v2, v3, v4

    .line 148
    .local v2, "diffSpeedRatio":F
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    neg-float v3, v2

    mul-float/2addr v3, v2

    float-to-double v6, v3

    .line 149
    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-float v0, v4

    .line 151
    .local v0, "c":F
    mul-float v3, v0, p1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 152
    iput v8, p0, Lcom/nianticlabs/nia/sensors/AngleFilter;->speed:F

    .line 158
    .end local v0    # "c":F
    .end local v2    # "diffSpeedRatio":F
    :cond_0
    :goto_0
    return-void

    .line 154
    .restart local v0    # "c":F
    .restart local v2    # "diffSpeedRatio":F
    :cond_1
    iget v3, p0, Lcom/nianticlabs/nia/sensors/AngleFilter;->speed:F

    iget v4, p0, Lcom/nianticlabs/nia/sensors/AngleFilter;->speed:F

    mul-float/2addr v4, v0

    mul-float/2addr v4, p1

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/nianticlabs/nia/sensors/AngleFilter;->speed:F

    .line 155
    iget v3, p0, Lcom/nianticlabs/nia/sensors/AngleFilter;->currentValue:F

    iget v4, p0, Lcom/nianticlabs/nia/sensors/AngleFilter;->speed:F

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, p0, Lcom/nianticlabs/nia/sensors/AngleFilter;->currentValue:F

    goto :goto_0
.end method


# virtual methods
.method public filter(JF)F
    .locals 9
    .param p1, "time"    # J
    .param p3, "in"    # F

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    const/high16 v6, 0x43b40000    # 360.0f

    .line 102
    iget-wide v2, p0, Lcom/nianticlabs/nia/sensors/AngleFilter;->lastReadingTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/nianticlabs/nia/sensors/AngleFilter;->lastReadingTime:J

    cmp-long v2, p1, v2

    if-gez v2, :cond_2

    .line 103
    :cond_0
    iput p3, p0, Lcom/nianticlabs/nia/sensors/AngleFilter;->currentValue:F

    .line 127
    :cond_1
    :goto_0
    iput-wide p1, p0, Lcom/nianticlabs/nia/sensors/AngleFilter;->lastReadingTime:J

    .line 130
    iget-boolean v2, p0, Lcom/nianticlabs/nia/sensors/AngleFilter;->wrap:Z

    if-eqz v2, :cond_8

    .line 131
    :goto_1
    iget v2, p0, Lcom/nianticlabs/nia/sensors/AngleFilter;->currentValue:F

    cmpl-float v2, v2, v6

    if-ltz v2, :cond_7

    .line 132
    iget v2, p0, Lcom/nianticlabs/nia/sensors/AngleFilter;->currentValue:F

    sub-float/2addr v2, v6

    iput v2, p0, Lcom/nianticlabs/nia/sensors/AngleFilter;->currentValue:F

    goto :goto_1

    .line 106
    :cond_2
    iget-boolean v2, p0, Lcom/nianticlabs/nia/sensors/AngleFilter;->wrap:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/nianticlabs/nia/sensors/AngleFilter;->currentValue:F

    sub-float v2, p3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    cmpl-float v2, v2, v6

    if-lez v2, :cond_3

    .line 107
    iget v2, p0, Lcom/nianticlabs/nia/sensors/AngleFilter;->currentValue:F

    cmpg-float v2, p3, v2

    if-gez v2, :cond_5

    .line 108
    add-float/2addr p3, v6

    .line 114
    :cond_3
    :goto_2
    iget-wide v2, p0, Lcom/nianticlabs/nia/sensors/AngleFilter;->lastReadingTime:J

    sub-long v2, p1, v2

    long-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v0, v2, v3

    .line 115
    .local v0, "dT":F
    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_4

    cmpg-float v2, v0, v7

    if-gez v2, :cond_6

    .line 117
    :cond_4
    iput p3, p0, Lcom/nianticlabs/nia/sensors/AngleFilter;->currentValue:F

    .line 118
    iput v7, p0, Lcom/nianticlabs/nia/sensors/AngleFilter;->speed:F

    goto :goto_0

    .line 110
    .end local v0    # "dT":F
    :cond_5
    sub-float/2addr p3, v6

    goto :goto_2

    .line 120
    .restart local v0    # "dT":F
    :cond_6
    :goto_3
    cmpl-float v2, v0, v7

    if-lez v2, :cond_1

    .line 121
    invoke-static {v8, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 122
    .local v1, "thisDT":F
    invoke-direct {p0, v1, p3}, Lcom/nianticlabs/nia/sensors/AngleFilter;->step(FF)V

    .line 123
    sub-float/2addr v0, v8

    .line 124
    goto :goto_3

    .line 134
    .end local v0    # "dT":F
    .end local v1    # "thisDT":F
    :cond_7
    :goto_4
    iget v2, p0, Lcom/nianticlabs/nia/sensors/AngleFilter;->currentValue:F

    cmpg-float v2, v2, v7

    if-gez v2, :cond_8

    .line 135
    iget v2, p0, Lcom/nianticlabs/nia/sensors/AngleFilter;->currentValue:F

    add-float/2addr v2, v6

    iput v2, p0, Lcom/nianticlabs/nia/sensors/AngleFilter;->currentValue:F

    goto :goto_4

    .line 139
    :cond_8
    iget v2, p0, Lcom/nianticlabs/nia/sensors/AngleFilter;->currentValue:F

    return v2
.end method
