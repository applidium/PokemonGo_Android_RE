.class public final Lcom/fasterxml/jackson/core/io/NumberOutput;
.super Ljava/lang/Object;
.source "NumberOutput.java"


# static fields
.field private static BILLION:I

.field static final FULL_3:[C

.field static final FULL_TRIPLETS_B:[B

.field static final LEAD_3:[C

.field private static MAX_INT_AS_LONG:J

.field private static MILLION:I

.field private static MIN_INT_AS_LONG:J

.field private static final NC:C

.field static final SMALLEST_LONG:Ljava/lang/String;

.field private static TEN_BILLION_L:J

.field private static THOUSAND_L:J

.field static final sSmallIntStrs:[Ljava/lang/String;

.field static final sSmallIntStrs2:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    .line 7
    const v10, 0xf4240

    sput v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->MILLION:I

    .line 8
    const v10, 0x3b9aca00

    sput v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION:I

    .line 9
    const-wide v10, 0x2540be400L

    sput-wide v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->TEN_BILLION_L:J

    .line 10
    const-wide/16 v10, 0x3e8

    sput-wide v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->THOUSAND_L:J

    .line 12
    const-wide/32 v10, -0x80000000

    sput-wide v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->MIN_INT_AS_LONG:J

    .line 13
    const-wide/32 v10, 0x7fffffff

    sput-wide v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->MAX_INT_AS_LONG:J

    .line 15
    const-wide/high16 v10, -0x8000000000000000L

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_LONG:Ljava/lang/String;

    .line 17
    const/16 v10, 0xfa0

    new-array v10, v10, [C

    sput-object v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->LEAD_3:[C

    .line 18
    const/16 v10, 0xfa0

    new-array v10, v10, [C

    sput-object v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->FULL_3:[C

    .line 23
    const/4 v7, 0x0

    .line 24
    .local v7, "ix":I
    const/4 v4, 0x0

    .local v4, "i1":I
    :goto_0
    const/16 v10, 0xa

    if-ge v4, v10, :cond_4

    .line 25
    add-int/lit8 v10, v4, 0x30

    int-to-char v0, v10

    .line 26
    .local v0, "f1":C
    if-nez v4, :cond_0

    const/4 v8, 0x0

    .line 27
    .local v8, "l1":C
    :goto_1
    const/4 v5, 0x0

    .local v5, "i2":I
    :goto_2
    const/16 v10, 0xa

    if-ge v5, v10, :cond_3

    .line 28
    add-int/lit8 v10, v5, 0x30

    int-to-char v1, v10

    .line 29
    .local v1, "f2":C
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    const/4 v9, 0x0

    .line 30
    .local v9, "l2":C
    :goto_3
    const/4 v6, 0x0

    .local v6, "i3":I
    :goto_4
    const/16 v10, 0xa

    if-ge v6, v10, :cond_2

    .line 32
    add-int/lit8 v10, v6, 0x30

    int-to-char v2, v10

    .line 33
    .local v2, "f3":C
    sget-object v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->LEAD_3:[C

    aput-char v8, v10, v7

    .line 34
    sget-object v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->LEAD_3:[C

    add-int/lit8 v11, v7, 0x1

    aput-char v9, v10, v11

    .line 35
    sget-object v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->LEAD_3:[C

    add-int/lit8 v11, v7, 0x2

    aput-char v2, v10, v11

    .line 36
    sget-object v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->FULL_3:[C

    aput-char v0, v10, v7

    .line 37
    sget-object v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->FULL_3:[C

    add-int/lit8 v11, v7, 0x1

    aput-char v1, v10, v11

    .line 38
    sget-object v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->FULL_3:[C

    add-int/lit8 v11, v7, 0x2

    aput-char v2, v10, v11

    .line 39
    add-int/lit8 v7, v7, 0x4

    .line 30
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .end local v1    # "f2":C
    .end local v2    # "f3":C
    .end local v5    # "i2":I
    .end local v6    # "i3":I
    .end local v8    # "l1":C
    .end local v9    # "l2":C
    :cond_0
    move v8, v0

    .line 26
    goto :goto_1

    .restart local v1    # "f2":C
    .restart local v5    # "i2":I
    .restart local v8    # "l1":C
    :cond_1
    move v9, v1

    .line 29
    goto :goto_3

    .line 27
    .restart local v6    # "i3":I
    .restart local v9    # "l2":C
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 24
    .end local v1    # "f2":C
    .end local v6    # "i3":I
    .end local v9    # "l2":C
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 45
    .end local v0    # "f1":C
    .end local v5    # "i2":I
    .end local v8    # "l1":C
    :cond_4
    const/16 v10, 0xfa0

    new-array v10, v10, [B

    sput-object v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->FULL_TRIPLETS_B:[B

    .line 47
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    const/16 v10, 0xfa0

    if-ge v3, v10, :cond_5

    .line 48
    sget-object v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->FULL_TRIPLETS_B:[B

    sget-object v11, Lcom/fasterxml/jackson/core/io/NumberOutput;->FULL_3:[C

    aget-char v11, v11, v3

    int-to-byte v11, v11

    aput-byte v11, v10, v3

    .line 47
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 52
    :cond_5
    const/16 v10, 0xb

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "0"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "1"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "2"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "3"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "4"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const-string v12, "5"

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string v12, "6"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    const-string v12, "7"

    aput-object v12, v10, v11

    const/16 v11, 0x8

    const-string v12, "8"

    aput-object v12, v10, v11

    const/16 v11, 0x9

    const-string v12, "9"

    aput-object v12, v10, v11

    const/16 v11, 0xa

    const-string v12, "10"

    aput-object v12, v10, v11

    sput-object v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->sSmallIntStrs:[Ljava/lang/String;

    .line 55
    const/16 v10, 0xa

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "-1"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "-2"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "-3"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "-4"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "-5"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const-string v12, "-6"

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string v12, "-7"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    const-string v12, "-8"

    aput-object v12, v10, v11

    const/16 v11, 0x8

    const-string v12, "-9"

    aput-object v12, v10, v11

    const/16 v11, 0x9

    const-string v12, "-10"

    aput-object v12, v10, v11

    sput-object v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->sSmallIntStrs2:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calcLongStrLength(J)I
    .locals 8
    .param p0, "v"    # J

    .prologue
    .line 389
    const/16 v2, 0xa

    .line 390
    .local v2, "len":I
    sget-wide v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->TEN_BILLION_L:J

    .line 393
    .local v0, "cmp":J
    :goto_0
    cmp-long v3, p0, v0

    if-ltz v3, :cond_0

    .line 394
    const/16 v3, 0x13

    if-ne v2, v3, :cond_1

    .line 400
    :cond_0
    return v2

    .line 397
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 398
    const/4 v3, 0x3

    shl-long v4, v0, v3

    const/4 v3, 0x1

    shl-long v6, v0, v3

    add-long v0, v4, v6

    goto :goto_0
.end method

.method private static full3(I[BI)I
    .locals 4
    .param p0, "t"    # I
    .param p1, "b"    # [B
    .param p2, "off"    # I

    .prologue
    .line 375
    shl-int/lit8 v0, p0, 0x2

    .line 376
    .local v0, "digitOffset":I
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "off":I
    .local v2, "off":I
    sget-object v3, Lcom/fasterxml/jackson/core/io/NumberOutput;->FULL_TRIPLETS_B:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "digitOffset":I
    .local v1, "digitOffset":I
    aget-byte v3, v3, v0

    aput-byte v3, p1, p2

    .line 377
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "off":I
    .restart local p2    # "off":I
    sget-object v3, Lcom/fasterxml/jackson/core/io/NumberOutput;->FULL_TRIPLETS_B:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "digitOffset":I
    .restart local v0    # "digitOffset":I
    aget-byte v3, v3, v1

    aput-byte v3, p1, v2

    .line 378
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "off":I
    .restart local v2    # "off":I
    sget-object v3, Lcom/fasterxml/jackson/core/io/NumberOutput;->FULL_TRIPLETS_B:[B

    aget-byte v3, v3, v0

    aput-byte v3, p1, p2

    .line 379
    return v2
.end method

.method private static full3(I[CI)I
    .locals 4
    .param p0, "t"    # I
    .param p1, "b"    # [C
    .param p2, "off"    # I

    .prologue
    .line 366
    shl-int/lit8 v0, p0, 0x2

    .line 367
    .local v0, "digitOffset":I
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "off":I
    .local v2, "off":I
    sget-object v3, Lcom/fasterxml/jackson/core/io/NumberOutput;->FULL_3:[C

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "digitOffset":I
    .local v1, "digitOffset":I
    aget-char v3, v3, v0

    aput-char v3, p1, p2

    .line 368
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "off":I
    .restart local p2    # "off":I
    sget-object v3, Lcom/fasterxml/jackson/core/io/NumberOutput;->FULL_3:[C

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "digitOffset":I
    .restart local v0    # "digitOffset":I
    aget-char v3, v3, v1

    aput-char v3, p1, v2

    .line 369
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "off":I
    .restart local v2    # "off":I
    sget-object v3, Lcom/fasterxml/jackson/core/io/NumberOutput;->FULL_3:[C

    aget-char v3, v3, v0

    aput-char v3, p1, p2

    .line 370
    return v2
.end method

.method private static leading3(I[BI)I
    .locals 5
    .param p0, "t"    # I
    .param p1, "b"    # [B
    .param p2, "off"    # I

    .prologue
    .line 350
    shl-int/lit8 v1, p0, 0x2

    .line 351
    .local v1, "digitOffset":I
    sget-object v4, Lcom/fasterxml/jackson/core/io/NumberOutput;->LEAD_3:[C

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "digitOffset":I
    .local v2, "digitOffset":I
    aget-char v0, v4, v1

    .line 352
    .local v0, "c":C
    if-eqz v0, :cond_0

    .line 353
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .local v3, "off":I
    int-to-byte v4, v0

    aput-byte v4, p1, p2

    move p2, v3

    .line 355
    .end local v3    # "off":I
    .restart local p2    # "off":I
    :cond_0
    sget-object v4, Lcom/fasterxml/jackson/core/io/NumberOutput;->LEAD_3:[C

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "digitOffset":I
    .restart local v1    # "digitOffset":I
    aget-char v0, v4, v2

    .line 356
    if-eqz v0, :cond_1

    .line 357
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .restart local v3    # "off":I
    int-to-byte v4, v0

    aput-byte v4, p1, p2

    move p2, v3

    .line 360
    .end local v3    # "off":I
    .restart local p2    # "off":I
    :cond_1
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .restart local v3    # "off":I
    sget-object v4, Lcom/fasterxml/jackson/core/io/NumberOutput;->LEAD_3:[C

    aget-char v4, v4, v1

    int-to-byte v4, v4

    aput-byte v4, p1, p2

    .line 361
    return v3
.end method

.method private static leading3(I[CI)I
    .locals 5
    .param p0, "t"    # I
    .param p1, "b"    # [C
    .param p2, "off"    # I

    .prologue
    .line 334
    shl-int/lit8 v1, p0, 0x2

    .line 335
    .local v1, "digitOffset":I
    sget-object v4, Lcom/fasterxml/jackson/core/io/NumberOutput;->LEAD_3:[C

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "digitOffset":I
    .local v2, "digitOffset":I
    aget-char v0, v4, v1

    .line 336
    .local v0, "c":C
    if-eqz v0, :cond_0

    .line 337
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .local v3, "off":I
    aput-char v0, p1, p2

    move p2, v3

    .line 339
    .end local v3    # "off":I
    .restart local p2    # "off":I
    :cond_0
    sget-object v4, Lcom/fasterxml/jackson/core/io/NumberOutput;->LEAD_3:[C

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "digitOffset":I
    .restart local v1    # "digitOffset":I
    aget-char v0, v4, v2

    .line 340
    if-eqz v0, :cond_1

    .line 341
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .restart local v3    # "off":I
    aput-char v0, p1, p2

    move p2, v3

    .line 344
    .end local v3    # "off":I
    .restart local p2    # "off":I
    :cond_1
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .restart local v3    # "off":I
    sget-object v4, Lcom/fasterxml/jackson/core/io/NumberOutput;->LEAD_3:[C

    aget-char v4, v4, v1

    aput-char v4, p1, p2

    .line 345
    return v3
.end method

.method public static outputInt(I[BI)I
    .locals 8
    .param p0, "v"    # I
    .param p1, "b"    # [B
    .param p2, "off"    # I

    .prologue
    .line 131
    if-gez p0, :cond_1

    .line 132
    const/high16 v5, -0x80000000

    if-ne p0, v5, :cond_0

    .line 133
    int-to-long v6, p0

    invoke-static {v6, v7, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputLong(J[BI)I

    move-result v5

    .line 177
    :goto_0
    return v5

    .line 135
    :cond_0
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "off":I
    .local v2, "off":I
    const/16 v5, 0x2d

    aput-byte v5, p1, p2

    .line 136
    neg-int p0, p0

    move p2, v2

    .line 139
    .end local v2    # "off":I
    .restart local p2    # "off":I
    :cond_1
    sget v5, Lcom/fasterxml/jackson/core/io/NumberOutput;->MILLION:I

    if-ge p0, v5, :cond_4

    .line 140
    const/16 v5, 0x3e8

    if-ge p0, v5, :cond_3

    .line 141
    const/16 v5, 0xa

    if-ge p0, v5, :cond_2

    .line 142
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "off":I
    .restart local v2    # "off":I
    add-int/lit8 v5, p0, 0x30

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    move p2, v2

    .end local v2    # "off":I
    .restart local p2    # "off":I
    :goto_1
    move v5, p2

    .line 152
    goto :goto_0

    .line 144
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->leading3(I[BI)I

    move-result p2

    goto :goto_1

    .line 147
    :cond_3
    div-int/lit16 v4, p0, 0x3e8

    .line 148
    .local v4, "thousands":I
    mul-int/lit16 v5, v4, 0x3e8

    sub-int/2addr p0, v5

    .line 149
    invoke-static {v4, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->leading3(I[BI)I

    move-result p2

    .line 150
    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->full3(I[BI)I

    move-result p2

    goto :goto_1

    .line 154
    .end local v4    # "thousands":I
    :cond_4
    sget v5, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION:I

    if-lt p0, v5, :cond_6

    const/4 v0, 0x1

    .line 155
    .local v0, "hasB":Z
    :goto_2
    if-eqz v0, :cond_5

    .line 156
    sget v5, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION:I

    sub-int/2addr p0, v5

    .line 157
    sget v5, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION:I

    if-lt p0, v5, :cond_7

    .line 158
    sget v5, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION:I

    sub-int/2addr p0, v5

    .line 159
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "off":I
    .restart local v2    # "off":I
    const/16 v5, 0x32

    aput-byte v5, p1, p2

    move p2, v2

    .line 164
    .end local v2    # "off":I
    .restart local p2    # "off":I
    :cond_5
    :goto_3
    div-int/lit16 v1, p0, 0x3e8

    .line 165
    .local v1, "newValue":I
    mul-int/lit16 v5, v1, 0x3e8

    sub-int v3, p0, v5

    .line 166
    .local v3, "ones":I
    move p0, v1

    .line 167
    div-int/lit16 v1, v1, 0x3e8

    .line 168
    mul-int/lit16 v5, v1, 0x3e8

    sub-int v4, p0, v5

    .line 170
    .restart local v4    # "thousands":I
    if-eqz v0, :cond_8

    .line 171
    invoke-static {v1, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->full3(I[BI)I

    move-result p2

    .line 175
    :goto_4
    invoke-static {v4, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->full3(I[BI)I

    move-result p2

    .line 176
    invoke-static {v3, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->full3(I[BI)I

    move-result p2

    move v5, p2

    .line 177
    goto :goto_0

    .line 154
    .end local v0    # "hasB":Z
    .end local v1    # "newValue":I
    .end local v3    # "ones":I
    .end local v4    # "thousands":I
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 161
    .restart local v0    # "hasB":Z
    :cond_7
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "off":I
    .restart local v2    # "off":I
    const/16 v5, 0x31

    aput-byte v5, p1, p2

    move p2, v2

    .end local v2    # "off":I
    .restart local p2    # "off":I
    goto :goto_3

    .line 173
    .restart local v1    # "newValue":I
    .restart local v3    # "ones":I
    .restart local v4    # "thousands":I
    :cond_8
    invoke-static {v1, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->leading3(I[BI)I

    move-result p2

    goto :goto_4
.end method

.method public static outputInt(I[CI)I
    .locals 8
    .param p0, "v"    # I
    .param p1, "b"    # [C
    .param p2, "off"    # I

    .prologue
    .line 70
    if-gez p0, :cond_1

    .line 71
    const/high16 v5, -0x80000000

    if-ne p0, v5, :cond_0

    .line 75
    int-to-long v6, p0

    invoke-static {v6, v7, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputLong(J[CI)I

    move-result v5

    .line 126
    :goto_0
    return v5

    .line 77
    :cond_0
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "off":I
    .local v2, "off":I
    const/16 v5, 0x2d

    aput-char v5, p1, p2

    .line 78
    neg-int p0, p0

    move p2, v2

    .line 81
    .end local v2    # "off":I
    .restart local p2    # "off":I
    :cond_1
    sget v5, Lcom/fasterxml/jackson/core/io/NumberOutput;->MILLION:I

    if-ge p0, v5, :cond_4

    .line 82
    const/16 v5, 0x3e8

    if-ge p0, v5, :cond_3

    .line 83
    const/16 v5, 0xa

    if-ge p0, v5, :cond_2

    .line 84
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "off":I
    .restart local v2    # "off":I
    add-int/lit8 v5, p0, 0x30

    int-to-char v5, v5

    aput-char v5, p1, p2

    move p2, v2

    .end local v2    # "off":I
    .restart local p2    # "off":I
    :goto_1
    move v5, p2

    .line 94
    goto :goto_0

    .line 86
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->leading3(I[CI)I

    move-result p2

    goto :goto_1

    .line 89
    :cond_3
    div-int/lit16 v4, p0, 0x3e8

    .line 90
    .local v4, "thousands":I
    mul-int/lit16 v5, v4, 0x3e8

    sub-int/2addr p0, v5

    .line 91
    invoke-static {v4, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->leading3(I[CI)I

    move-result p2

    .line 92
    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->full3(I[CI)I

    move-result p2

    goto :goto_1

    .line 102
    .end local v4    # "thousands":I
    :cond_4
    sget v5, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION:I

    if-lt p0, v5, :cond_6

    const/4 v0, 0x1

    .line 103
    .local v0, "hasBillions":Z
    :goto_2
    if-eqz v0, :cond_5

    .line 104
    sget v5, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION:I

    sub-int/2addr p0, v5

    .line 105
    sget v5, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION:I

    if-lt p0, v5, :cond_7

    .line 106
    sget v5, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION:I

    sub-int/2addr p0, v5

    .line 107
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "off":I
    .restart local v2    # "off":I
    const/16 v5, 0x32

    aput-char v5, p1, p2

    move p2, v2

    .line 112
    .end local v2    # "off":I
    .restart local p2    # "off":I
    :cond_5
    :goto_3
    div-int/lit16 v1, p0, 0x3e8

    .line 113
    .local v1, "newValue":I
    mul-int/lit16 v5, v1, 0x3e8

    sub-int v3, p0, v5

    .line 114
    .local v3, "ones":I
    move p0, v1

    .line 115
    div-int/lit16 v1, v1, 0x3e8

    .line 116
    mul-int/lit16 v5, v1, 0x3e8

    sub-int v4, p0, v5

    .line 119
    .restart local v4    # "thousands":I
    if-eqz v0, :cond_8

    .line 120
    invoke-static {v1, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->full3(I[CI)I

    move-result p2

    .line 124
    :goto_4
    invoke-static {v4, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->full3(I[CI)I

    move-result p2

    .line 125
    invoke-static {v3, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->full3(I[CI)I

    move-result p2

    move v5, p2

    .line 126
    goto :goto_0

    .line 102
    .end local v0    # "hasBillions":Z
    .end local v1    # "newValue":I
    .end local v3    # "ones":I
    .end local v4    # "thousands":I
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 109
    .restart local v0    # "hasBillions":Z
    :cond_7
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "off":I
    .restart local v2    # "off":I
    const/16 v5, 0x31

    aput-char v5, p1, p2

    move p2, v2

    .end local v2    # "off":I
    .restart local p2    # "off":I
    goto :goto_3

    .line 122
    .restart local v1    # "newValue":I
    .restart local v3    # "ones":I
    .restart local v4    # "thousands":I
    :cond_8
    invoke-static {v1, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->leading3(I[CI)I

    move-result p2

    goto :goto_4
.end method

.method public static outputLong(J[BI)I
    .locals 12
    .param p0, "v"    # J
    .param p2, "b"    # [B
    .param p3, "off"    # I

    .prologue
    .line 239
    const-wide/16 v10, 0x0

    cmp-long v9, p0, v10

    if-gez v9, :cond_4

    .line 240
    sget-wide v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->MIN_INT_AS_LONG:J

    cmp-long v9, p0, v10

    if-lez v9, :cond_0

    .line 241
    long-to-int v9, p0

    invoke-static {v9, p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt(I[BI)I

    move-result v3

    .line 280
    :goto_0
    return v3

    .line 243
    :cond_0
    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v9, p0, v10

    if-nez v9, :cond_2

    .line 245
    sget-object v9, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_LONG:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    .line 246
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    move v3, p3

    .end local p3    # "off":I
    .local v3, "off":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 247
    add-int/lit8 p3, v3, 0x1

    .end local v3    # "off":I
    .restart local p3    # "off":I
    sget-object v9, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_LONG:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, p2, v3

    .line 246
    add-int/lit8 v0, v0, 0x1

    move v3, p3

    .end local p3    # "off":I
    .restart local v3    # "off":I
    goto :goto_1

    :cond_1
    move p3, v3

    .line 249
    .end local v3    # "off":I
    .restart local p3    # "off":I
    goto :goto_0

    .line 251
    .end local v0    # "i":I
    .end local v2    # "len":I
    :cond_2
    add-int/lit8 v3, p3, 0x1

    .end local p3    # "off":I
    .restart local v3    # "off":I
    const/16 v9, 0x2d

    aput-byte v9, p2, p3

    .line 252
    neg-long p0, p0

    move p3, v3

    .line 258
    .end local v3    # "off":I
    .restart local p3    # "off":I
    :cond_3
    move v6, p3

    .line 259
    .local v6, "origOff":I
    invoke-static {p0, p1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->calcLongStrLength(J)I

    move-result v9

    add-int/2addr p3, v9

    .line 260
    move v7, p3

    .line 263
    .local v7, "ptr":I
    :goto_2
    sget-wide v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->MAX_INT_AS_LONG:J

    cmp-long v9, p0, v10

    if-lez v9, :cond_5

    .line 264
    add-int/lit8 v7, v7, -0x3

    .line 265
    sget-wide v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->THOUSAND_L:J

    div-long v4, p0, v10

    .line 266
    .local v4, "newV":J
    sget-wide v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->THOUSAND_L:J

    mul-long/2addr v10, v4

    sub-long v10, p0, v10

    long-to-int v8, v10

    .line 267
    .local v8, "t":I
    invoke-static {v8, p2, v7}, Lcom/fasterxml/jackson/core/io/NumberOutput;->full3(I[BI)I

    .line 268
    move-wide p0, v4

    .line 269
    goto :goto_2

    .line 254
    .end local v4    # "newV":J
    .end local v6    # "origOff":I
    .end local v7    # "ptr":I
    .end local v8    # "t":I
    :cond_4
    sget-wide v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->MAX_INT_AS_LONG:J

    cmp-long v9, p0, v10

    if-gtz v9, :cond_3

    .line 255
    long-to-int v9, p0

    invoke-static {v9, p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt(I[BI)I

    move-result v3

    goto :goto_0

    .line 271
    .restart local v6    # "origOff":I
    .restart local v7    # "ptr":I
    :cond_5
    long-to-int v1, p0

    .line 272
    .local v1, "ivalue":I
    :goto_3
    const/16 v9, 0x3e8

    if-lt v1, v9, :cond_6

    .line 273
    add-int/lit8 v7, v7, -0x3

    .line 274
    div-int/lit16 v4, v1, 0x3e8

    .line 275
    .local v4, "newV":I
    mul-int/lit16 v9, v4, 0x3e8

    sub-int v8, v1, v9

    .line 276
    .restart local v8    # "t":I
    invoke-static {v8, p2, v7}, Lcom/fasterxml/jackson/core/io/NumberOutput;->full3(I[BI)I

    .line 277
    move v1, v4

    .line 278
    goto :goto_3

    .line 279
    .end local v4    # "newV":I
    .end local v8    # "t":I
    :cond_6
    invoke-static {v1, p2, v6}, Lcom/fasterxml/jackson/core/io/NumberOutput;->leading3(I[BI)I

    move v3, p3

    .line 280
    goto :goto_0
.end method

.method public static outputLong(J[CI)I
    .locals 10
    .param p0, "v"    # J
    .param p2, "b"    # [C
    .param p3, "off"    # I

    .prologue
    .line 186
    const-wide/16 v8, 0x0

    cmp-long v8, p0, v8

    if-gez v8, :cond_3

    .line 190
    sget-wide v8, Lcom/fasterxml/jackson/core/io/NumberOutput;->MIN_INT_AS_LONG:J

    cmp-long v8, p0, v8

    if-lez v8, :cond_0

    .line 191
    long-to-int v8, p0

    invoke-static {v8, p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt(I[CI)I

    move-result v8

    .line 234
    :goto_0
    return v8

    .line 193
    :cond_0
    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v8, p0, v8

    if-nez v8, :cond_1

    .line 195
    sget-object v8, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_LONG:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    .line 196
    .local v1, "len":I
    sget-object v8, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_LONG:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v1, p2, p3}, Ljava/lang/String;->getChars(II[CI)V

    .line 197
    add-int v8, p3, v1

    goto :goto_0

    .line 199
    .end local v1    # "len":I
    :cond_1
    add-int/lit8 v4, p3, 0x1

    .end local p3    # "off":I
    .local v4, "off":I
    const/16 v8, 0x2d

    aput-char v8, p2, p3

    .line 200
    neg-long p0, p0

    move p3, v4

    .line 210
    .end local v4    # "off":I
    .restart local p3    # "off":I
    :cond_2
    move v5, p3

    .line 211
    .local v5, "origOffset":I
    invoke-static {p0, p1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->calcLongStrLength(J)I

    move-result v8

    add-int/2addr p3, v8

    .line 212
    move v6, p3

    .line 215
    .local v6, "ptr":I
    :goto_1
    sget-wide v8, Lcom/fasterxml/jackson/core/io/NumberOutput;->MAX_INT_AS_LONG:J

    cmp-long v8, p0, v8

    if-lez v8, :cond_4

    .line 216
    add-int/lit8 v6, v6, -0x3

    .line 217
    sget-wide v8, Lcom/fasterxml/jackson/core/io/NumberOutput;->THOUSAND_L:J

    div-long v2, p0, v8

    .line 218
    .local v2, "newValue":J
    sget-wide v8, Lcom/fasterxml/jackson/core/io/NumberOutput;->THOUSAND_L:J

    mul-long/2addr v8, v2

    sub-long v8, p0, v8

    long-to-int v7, v8

    .line 219
    .local v7, "triplet":I
    invoke-static {v7, p2, v6}, Lcom/fasterxml/jackson/core/io/NumberOutput;->full3(I[CI)I

    .line 220
    move-wide p0, v2

    .line 221
    goto :goto_1

    .line 202
    .end local v2    # "newValue":J
    .end local v5    # "origOffset":I
    .end local v6    # "ptr":I
    .end local v7    # "triplet":I
    :cond_3
    sget-wide v8, Lcom/fasterxml/jackson/core/io/NumberOutput;->MAX_INT_AS_LONG:J

    cmp-long v8, p0, v8

    if-gtz v8, :cond_2

    .line 203
    long-to-int v8, p0

    invoke-static {v8, p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt(I[CI)I

    move-result v8

    goto :goto_0

    .line 223
    .restart local v5    # "origOffset":I
    .restart local v6    # "ptr":I
    :cond_4
    long-to-int v0, p0

    .line 224
    .local v0, "ivalue":I
    :goto_2
    const/16 v8, 0x3e8

    if-lt v0, v8, :cond_5

    .line 225
    add-int/lit8 v6, v6, -0x3

    .line 226
    div-int/lit16 v2, v0, 0x3e8

    .line 227
    .local v2, "newValue":I
    mul-int/lit16 v8, v2, 0x3e8

    sub-int v7, v0, v8

    .line 228
    .restart local v7    # "triplet":I
    invoke-static {v7, p2, v6}, Lcom/fasterxml/jackson/core/io/NumberOutput;->full3(I[CI)I

    .line 229
    move v0, v2

    .line 230
    goto :goto_2

    .line 232
    .end local v2    # "newValue":I
    .end local v7    # "triplet":I
    :cond_5
    invoke-static {v0, p2, v5}, Lcom/fasterxml/jackson/core/io/NumberOutput;->leading3(I[CI)I

    move v8, p3

    .line 234
    goto :goto_0
.end method

.method public static toString(D)Ljava/lang/String;
    .locals 2
    .param p0, "v"    # D

    .prologue
    .line 316
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(F)Ljava/lang/String;
    .locals 1
    .param p0, "v"    # F

    .prologue
    .line 323
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "v"    # I

    .prologue
    .line 296
    sget-object v1, Lcom/fasterxml/jackson/core/io/NumberOutput;->sSmallIntStrs:[Ljava/lang/String;

    array-length v1, v1

    if-ge p0, v1, :cond_1

    .line 297
    if-ltz p0, :cond_0

    .line 298
    sget-object v1, Lcom/fasterxml/jackson/core/io/NumberOutput;->sSmallIntStrs:[Ljava/lang/String;

    aget-object v1, v1, p0

    .line 305
    :goto_0
    return-object v1

    .line 300
    :cond_0
    neg-int v1, p0

    add-int/lit8 v0, v1, -0x1

    .line 301
    .local v0, "v2":I
    sget-object v1, Lcom/fasterxml/jackson/core/io/NumberOutput;->sSmallIntStrs2:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 302
    sget-object v1, Lcom/fasterxml/jackson/core/io/NumberOutput;->sSmallIntStrs2:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_0

    .line 305
    .end local v0    # "v2":I
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static toString(J)Ljava/lang/String;
    .locals 2
    .param p0, "v"    # J

    .prologue
    .line 309
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    .line 310
    long-to-int v0, p0

    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/NumberOutput;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 312
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
