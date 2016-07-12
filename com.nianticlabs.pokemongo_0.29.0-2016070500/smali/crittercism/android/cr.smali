.class public final Lcrittercism/android/cr;
.super Ljava/lang/Object;


# static fields
.field private static final a:[B

.field private static final b:[B

.field private static final c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 103
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcrittercism/android/cr;->b:[B

    .line 123
    :try_start_0
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 129
    :goto_0
    sput-object v0, Lcrittercism/android/cr;->a:[B

    .line 137
    const/16 v0, 0x7f

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcrittercism/android/cr;->c:[B

    return-void

    .line 127
    :catch_0
    move-exception v0

    sget-object v0, Lcrittercism/android/cr;->b:[B

    goto :goto_0

    .line 103
    nop

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 137
    :array_1
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data
.end method

.method public static a([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    array-length v0, p0

    invoke-static {p0, v0}, Lcrittercism/android/cr;->a([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([BI)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 456
    mul-int/lit8 v0, p1, 0x4

    div-int/lit8 v2, v0, 0x3

    .line 507
    rem-int/lit8 v0, p1, 0x3

    if-lez v0, :cond_1

    const/4 v0, 0x4

    :goto_0
    add-int/2addr v0, v2

    div-int/lit8 v2, v2, 0x4c

    add-int/2addr v0, v2

    new-array v4, v0, [B

    .line 512
    add-int/lit8 v5, p1, -0x2

    move v0, v1

    move v2, v1

    move v3, v1

    .line 514
    :goto_1
    if-ge v3, v5, :cond_2

    .line 516
    add-int/lit8 v6, v3, 0x0

    const/4 v7, 0x3

    invoke-static {p0, v6, v7, v4, v2}, Lcrittercism/android/cr;->a([BII[BI)[B

    .line 518
    add-int/lit8 v0, v0, 0x4

    .line 519
    const/16 v6, 0x4c

    if-ne v0, v6, :cond_0

    .line 521
    add-int/lit8 v0, v2, 0x4

    const/16 v6, 0xa

    aput-byte v6, v4, v0

    .line 522
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    .line 514
    :cond_0
    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    :cond_1
    move v0, v1

    .line 507
    goto :goto_0

    .line 527
    :cond_2
    if-ge v3, p1, :cond_3

    .line 529
    add-int/lit8 v0, v3, 0x0

    sub-int v3, p1, v3

    invoke-static {p0, v0, v3, v4, v2}, Lcrittercism/android/cr;->a([BII[BI)[B

    .line 530
    add-int/lit8 v2, v2, 0x4

    .line 537
    :cond_3
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "UTF-8"

    invoke-direct {v0, v4, v3, v2, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4, v1, v2}, Ljava/lang/String;-><init>([BII)V

    goto :goto_2
.end method

.method private static a([BII[BI)[B
    .locals 5

    .prologue
    const/16 v4, 0x3d

    const/4 v0, 0x0

    .line 244
    if-lez p2, :cond_1

    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x8

    move v2, v1

    :goto_0
    const/4 v1, 0x1

    if-le p2, v1, :cond_2

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x10

    :goto_1
    or-int/2addr v1, v2

    const/4 v2, 0x2

    if-le p2, v2, :cond_0

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x18

    :cond_0
    or-int/2addr v0, v1

    .line 248
    packed-switch p2, :pswitch_data_0

    .line 272
    :goto_2
    return-object p3

    :cond_1
    move v2, v0

    .line 244
    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1

    .line 251
    :pswitch_0
    sget-object v1, Lcrittercism/android/cr;->a:[B

    ushr-int/lit8 v2, v0, 0x12

    aget-byte v1, v1, v2

    aput-byte v1, p3, p4

    .line 252
    add-int/lit8 v1, p4, 0x1

    sget-object v2, Lcrittercism/android/cr;->a:[B

    ushr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v1

    .line 253
    add-int/lit8 v1, p4, 0x2

    sget-object v2, Lcrittercism/android/cr;->a:[B

    ushr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v1

    .line 254
    add-int/lit8 v1, p4, 0x3

    sget-object v2, Lcrittercism/android/cr;->a:[B

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v2, v0

    aput-byte v0, p3, v1

    goto :goto_2

    .line 258
    :pswitch_1
    sget-object v1, Lcrittercism/android/cr;->a:[B

    ushr-int/lit8 v2, v0, 0x12

    aget-byte v1, v1, v2

    aput-byte v1, p3, p4

    .line 259
    add-int/lit8 v1, p4, 0x1

    sget-object v2, Lcrittercism/android/cr;->a:[B

    ushr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v1

    .line 260
    add-int/lit8 v1, p4, 0x2

    sget-object v2, Lcrittercism/android/cr;->a:[B

    ushr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v2, v0

    aput-byte v0, p3, v1

    .line 261
    add-int/lit8 v0, p4, 0x3

    aput-byte v4, p3, v0

    goto :goto_2

    .line 265
    :pswitch_2
    sget-object v1, Lcrittercism/android/cr;->a:[B

    ushr-int/lit8 v2, v0, 0x12

    aget-byte v1, v1, v2

    aput-byte v1, p3, p4

    .line 266
    add-int/lit8 v1, p4, 0x1

    sget-object v2, Lcrittercism/android/cr;->a:[B

    ushr-int/lit8 v0, v0, 0xc

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v2, v0

    aput-byte v0, p3, v1

    .line 267
    add-int/lit8 v0, p4, 0x2

    aput-byte v4, p3, v0

    .line 268
    add-int/lit8 v0, p4, 0x3

    aput-byte v4, p3, v0

    goto :goto_2

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
