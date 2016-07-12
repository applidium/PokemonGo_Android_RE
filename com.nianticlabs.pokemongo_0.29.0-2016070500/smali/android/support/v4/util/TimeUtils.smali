.class public Landroid/support/v4/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static final HUNDRED_DAY_FIELD_LEN:I = 0x13

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static sFormatStr:[C

.field private static final sFormatSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    .line 36
    const/16 v0, 0x18

    new-array v0, v0, [C

    sput-object v0, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accumField(IIZI)I
    .locals 1
    .param p0, "amt"    # I
    .param p1, "suffix"    # I
    .param p2, "always"    # Z
    .param p3, "zeropad"    # I

    .prologue
    .line 39
    const/16 v0, 0x63

    if-gt p0, v0, :cond_0

    if-eqz p2, :cond_1

    const/4 v0, 0x3

    if-lt p3, v0, :cond_1

    .line 40
    :cond_0
    add-int/lit8 v0, p1, 0x3

    .line 48
    :goto_0
    return v0

    .line 42
    :cond_1
    const/16 v0, 0x9

    if-gt p0, v0, :cond_2

    if-eqz p2, :cond_3

    const/4 v0, 0x2

    if-lt p3, v0, :cond_3

    .line 43
    :cond_2
    add-int/lit8 v0, p1, 0x2

    goto :goto_0

    .line 45
    :cond_3
    if-nez p2, :cond_4

    if-lez p0, :cond_5

    .line 46
    :cond_4
    add-int/lit8 v0, p1, 0x1

    goto :goto_0

    .line 48
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static formatDuration(JJLjava/io/PrintWriter;)V
    .locals 4
    .param p0, "time"    # J
    .param p2, "now"    # J
    .param p4, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 169
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 170
    const-string v0, "--"

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 174
    :goto_0
    return-void

    .line 173
    :cond_0
    sub-long v0, p0, p2

    const/4 v2, 0x0

    invoke-static {v0, v1, p4, v2}, Landroid/support/v4/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    goto :goto_0
.end method

.method public static formatDuration(JLjava/io/PrintWriter;)V
    .locals 2
    .param p0, "duration"    # J
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/support/v4/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 165
    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;I)V
    .locals 6
    .param p0, "duration"    # J
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "fieldLen"    # I

    .prologue
    .line 156
    sget-object v2, Landroid/support/v4/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v2

    .line 157
    :try_start_0
    invoke-static {p0, p1, p3}, Landroid/support/v4/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v0

    .line 158
    .local v0, "len":I
    new-instance v1, Ljava/lang/String;

    sget-object v3, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 159
    monitor-exit v2

    .line 160
    return-void

    .line 159
    .end local v0    # "len":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static formatDuration(JLjava/lang/StringBuilder;)V
    .locals 4
    .param p0, "duration"    # J
    .param p2, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 148
    sget-object v2, Landroid/support/v4/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v2

    .line 149
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Landroid/support/v4/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v0

    .line 150
    .local v0, "len":I
    sget-object v1, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 151
    monitor-exit v2

    .line 152
    return-void

    .line 151
    .end local v0    # "len":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static formatDurationLocked(JI)I
    .locals 20
    .param p0, "duration"    # J
    .param p2, "fieldLen"    # I

    .prologue
    .line 76
    sget-object v4, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    array-length v4, v4

    move/from16 v0, p2

    if-ge v4, v0, :cond_0

    .line 77
    move/from16 v0, p2

    new-array v4, v0, [C

    sput-object v4, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    .line 80
    :cond_0
    sget-object v2, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    .line 82
    .local v2, "formatStr":[C
    const-wide/16 v6, 0x0

    cmp-long v4, p0, v6

    if-nez v4, :cond_2

    .line 83
    const/4 v5, 0x0

    .line 84
    .local v5, "pos":I
    add-int/lit8 p2, p2, -0x1

    .line 85
    :goto_0
    move/from16 v0, p2

    if-ge v5, v0, :cond_1

    .line 86
    const/16 v4, 0x20

    aput-char v4, v2, v5

    goto :goto_0

    .line 88
    :cond_1
    const/16 v4, 0x30

    aput-char v4, v2, v5

    .line 89
    const/4 v4, 0x1

    .line 143
    :goto_1
    return v4

    .line 93
    .end local v5    # "pos":I
    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v4, p0, v6

    if-lez v4, :cond_6

    .line 94
    const/16 v16, 0x2b

    .line 100
    .local v16, "prefix":C
    :goto_2
    const-wide/16 v6, 0x3e8

    rem-long v6, p0, v6

    long-to-int v13, v6

    .line 101
    .local v13, "millis":I
    const-wide/16 v6, 0x3e8

    div-long v6, p0, v6

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v17, v0

    .line 102
    .local v17, "seconds":I
    const/4 v3, 0x0

    .local v3, "days":I
    const/4 v12, 0x0

    .local v12, "hours":I
    const/4 v14, 0x0

    .line 104
    .local v14, "minutes":I
    const v4, 0x15180

    move/from16 v0, v17

    if-le v0, v4, :cond_3

    .line 105
    const v4, 0x15180

    div-int v3, v17, v4

    .line 106
    const v4, 0x15180

    mul-int/2addr v4, v3

    sub-int v17, v17, v4

    .line 108
    :cond_3
    const/16 v4, 0xe10

    move/from16 v0, v17

    if-le v0, v4, :cond_4

    .line 109
    move/from16 v0, v17

    div-int/lit16 v12, v0, 0xe10

    .line 110
    mul-int/lit16 v4, v12, 0xe10

    sub-int v17, v17, v4

    .line 112
    :cond_4
    const/16 v4, 0x3c

    move/from16 v0, v17

    if-le v0, v4, :cond_5

    .line 113
    div-int/lit8 v14, v17, 0x3c

    .line 114
    mul-int/lit8 v4, v14, 0x3c

    sub-int v17, v17, v4

    .line 117
    :cond_5
    const/4 v5, 0x0

    .line 119
    .restart local v5    # "pos":I
    if-eqz p2, :cond_b

    .line 120
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v4, v6, v7}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v15

    .line 121
    .local v15, "myLen":I
    const/4 v6, 0x1

    if-lez v15, :cond_7

    const/4 v4, 0x1

    :goto_3
    const/4 v7, 0x2

    invoke-static {v12, v6, v4, v7}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v4

    add-int/2addr v15, v4

    .line 122
    const/4 v6, 0x1

    if-lez v15, :cond_8

    const/4 v4, 0x1

    :goto_4
    const/4 v7, 0x2

    invoke-static {v14, v6, v4, v7}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v4

    add-int/2addr v15, v4

    .line 123
    const/4 v6, 0x1

    if-lez v15, :cond_9

    const/4 v4, 0x1

    :goto_5
    const/4 v7, 0x2

    move/from16 v0, v17

    invoke-static {v0, v6, v4, v7}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v4

    add-int/2addr v15, v4

    .line 124
    const/4 v6, 0x2

    const/4 v7, 0x1

    if-lez v15, :cond_a

    const/4 v4, 0x3

    :goto_6
    invoke-static {v13, v6, v7, v4}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v15, v4

    .line 125
    :goto_7
    move/from16 v0, p2

    if-ge v15, v0, :cond_b

    .line 126
    const/16 v4, 0x20

    aput-char v4, v2, v5

    .line 127
    add-int/lit8 v5, v5, 0x1

    .line 128
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 96
    .end local v3    # "days":I
    .end local v5    # "pos":I
    .end local v12    # "hours":I
    .end local v13    # "millis":I
    .end local v14    # "minutes":I
    .end local v15    # "myLen":I
    .end local v16    # "prefix":C
    .end local v17    # "seconds":I
    :cond_6
    const/16 v16, 0x2d

    .line 97
    .restart local v16    # "prefix":C
    move-wide/from16 v0, p0

    neg-long v0, v0

    move-wide/from16 p0, v0

    goto/16 :goto_2

    .line 121
    .restart local v3    # "days":I
    .restart local v5    # "pos":I
    .restart local v12    # "hours":I
    .restart local v13    # "millis":I
    .restart local v14    # "minutes":I
    .restart local v15    # "myLen":I
    .restart local v17    # "seconds":I
    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    .line 122
    :cond_8
    const/4 v4, 0x0

    goto :goto_4

    .line 123
    :cond_9
    const/4 v4, 0x0

    goto :goto_5

    .line 124
    :cond_a
    const/4 v4, 0x0

    goto :goto_6

    .line 132
    .end local v15    # "myLen":I
    :cond_b
    aput-char v16, v2, v5

    .line 133
    add-int/lit8 v5, v5, 0x1

    .line 135
    move/from16 v18, v5

    .line 136
    .local v18, "start":I
    if-eqz p2, :cond_c

    const/16 v19, 0x1

    .line 137
    .local v19, "zeropad":Z
    :goto_8
    const/16 v4, 0x64

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    move-result v5

    .line 138
    const/16 v8, 0x68

    move/from16 v0, v18

    if-eq v5, v0, :cond_d

    const/4 v10, 0x1

    :goto_9
    if-eqz v19, :cond_e

    const/4 v11, 0x2

    :goto_a
    move-object v6, v2

    move v7, v12

    move v9, v5

    invoke-static/range {v6 .. v11}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    move-result v5

    .line 139
    const/16 v8, 0x6d

    move/from16 v0, v18

    if-eq v5, v0, :cond_f

    const/4 v10, 0x1

    :goto_b
    if-eqz v19, :cond_10

    const/4 v11, 0x2

    :goto_c
    move-object v6, v2

    move v7, v14

    move v9, v5

    invoke-static/range {v6 .. v11}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    move-result v5

    .line 140
    const/16 v8, 0x73

    move/from16 v0, v18

    if-eq v5, v0, :cond_11

    const/4 v10, 0x1

    :goto_d
    if-eqz v19, :cond_12

    const/4 v11, 0x2

    :goto_e
    move-object v6, v2

    move/from16 v7, v17

    move v9, v5

    invoke-static/range {v6 .. v11}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    move-result v5

    .line 141
    const/16 v8, 0x6d

    const/4 v10, 0x1

    if-eqz v19, :cond_13

    move/from16 v0, v18

    if-eq v5, v0, :cond_13

    const/4 v11, 0x3

    :goto_f
    move-object v6, v2

    move v7, v13

    move v9, v5

    invoke-static/range {v6 .. v11}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    move-result v5

    .line 142
    const/16 v4, 0x73

    aput-char v4, v2, v5

    .line 143
    add-int/lit8 v4, v5, 0x1

    goto/16 :goto_1

    .line 136
    .end local v19    # "zeropad":Z
    :cond_c
    const/16 v19, 0x0

    goto :goto_8

    .line 138
    .restart local v19    # "zeropad":Z
    :cond_d
    const/4 v10, 0x0

    goto :goto_9

    :cond_e
    const/4 v11, 0x0

    goto :goto_a

    .line 139
    :cond_f
    const/4 v10, 0x0

    goto :goto_b

    :cond_10
    const/4 v11, 0x0

    goto :goto_c

    .line 140
    :cond_11
    const/4 v10, 0x0

    goto :goto_d

    :cond_12
    const/4 v11, 0x0

    goto :goto_e

    .line 141
    :cond_13
    const/4 v11, 0x0

    goto :goto_f
.end method

.method private static printField([CICIZI)I
    .locals 3
    .param p0, "formatStr"    # [C
    .param p1, "amt"    # I
    .param p2, "suffix"    # C
    .param p3, "pos"    # I
    .param p4, "always"    # Z
    .param p5, "zeropad"    # I

    .prologue
    .line 53
    if-nez p4, :cond_0

    if-lez p1, :cond_7

    .line 54
    :cond_0
    move v1, p3

    .line 55
    .local v1, "startPos":I
    if-eqz p4, :cond_1

    const/4 v2, 0x3

    if-ge p5, v2, :cond_2

    :cond_1
    const/16 v2, 0x63

    if-le p1, v2, :cond_3

    .line 56
    :cond_2
    div-int/lit8 v0, p1, 0x64

    .line 57
    .local v0, "dig":I
    add-int/lit8 v2, v0, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    .line 58
    add-int/lit8 p3, p3, 0x1

    .line 59
    mul-int/lit8 v2, v0, 0x64

    sub-int/2addr p1, v2

    .line 61
    .end local v0    # "dig":I
    :cond_3
    if-eqz p4, :cond_4

    const/4 v2, 0x2

    if-ge p5, v2, :cond_5

    :cond_4
    const/16 v2, 0x9

    if-gt p1, v2, :cond_5

    if-eq v1, p3, :cond_6

    .line 62
    :cond_5
    div-int/lit8 v0, p1, 0xa

    .line 63
    .restart local v0    # "dig":I
    add-int/lit8 v2, v0, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    .line 64
    add-int/lit8 p3, p3, 0x1

    .line 65
    mul-int/lit8 v2, v0, 0xa

    sub-int/2addr p1, v2

    .line 67
    .end local v0    # "dig":I
    :cond_6
    add-int/lit8 v2, p1, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    .line 68
    add-int/lit8 p3, p3, 0x1

    .line 69
    aput-char p2, p0, p3

    .line 70
    add-int/lit8 p3, p3, 0x1

    .line 72
    .end local v1    # "startPos":I
    :cond_7
    return p3
.end method
