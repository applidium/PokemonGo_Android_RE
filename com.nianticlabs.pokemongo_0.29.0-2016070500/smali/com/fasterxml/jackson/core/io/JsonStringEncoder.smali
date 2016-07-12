.class public final Lcom/fasterxml/jackson/core/io/JsonStringEncoder;
.super Ljava/lang/Object;
.source "JsonStringEncoder.java"


# static fields
.field private static final HB:[B

.field private static final HC:[C

.field private static final SURR1_FIRST:I = 0xd800

.field private static final SURR1_LAST:I = 0xdbff

.field private static final SURR2_FIRST:I = 0xdc00

.field private static final SURR2_LAST:I = 0xdfff

.field protected static final _threadEncoder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/fasterxml/jackson/core/io/JsonStringEncoder;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected _bytes:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

.field protected final _qbuf:[C

.field protected _text:Lcom/fasterxml/jackson/core/util/TextBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->copyHexChars()[C

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HC:[C

    .line 21
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->copyHexBytes()[B

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HB:[B

    .line 37
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_threadEncoder:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x30

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x6

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_qbuf:[C

    .line 65
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_qbuf:[C

    const/4 v1, 0x0

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    .line 66
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_qbuf:[C

    const/4 v1, 0x2

    aput-char v3, v0, v1

    .line 67
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_qbuf:[C

    const/4 v1, 0x3

    aput-char v3, v0, v1

    .line 68
    return-void
.end method

.method private _appendByte(IILcom/fasterxml/jackson/core/util/ByteArrayBuilder;I)I
    .locals 3
    .param p1, "ch"    # I
    .param p2, "esc"    # I
    .param p3, "bb"    # Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
    .param p4, "ptr"    # I

    .prologue
    const/16 v2, 0x30

    .line 360
    invoke-virtual {p3, p4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->setCurrentSegmentLength(I)V

    .line 361
    const/16 v1, 0x5c

    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 362
    if-gez p2, :cond_1

    .line 363
    const/16 v1, 0x75

    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 364
    const/16 v1, 0xff

    if-le p1, v1, :cond_0

    .line 365
    shr-int/lit8 v0, p1, 0x8

    .line 366
    .local v0, "hi":I
    sget-object v1, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HB:[B

    shr-int/lit8 v2, v0, 0x4

    aget-byte v1, v1, v2

    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 367
    sget-object v1, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HB:[B

    and-int/lit8 v2, v0, 0xf

    aget-byte v1, v1, v2

    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 368
    and-int/lit16 p1, p1, 0xff

    .line 373
    .end local v0    # "hi":I
    :goto_0
    sget-object v1, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HB:[B

    shr-int/lit8 v2, p1, 0x4

    aget-byte v1, v1, v2

    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 374
    sget-object v1, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HB:[B

    and-int/lit8 v2, p1, 0xf

    aget-byte v1, v1, v2

    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 378
    :goto_1
    invoke-virtual {p3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->getCurrentSegmentLength()I

    move-result v1

    return v1

    .line 370
    :cond_0
    invoke-virtual {p3, v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 371
    invoke-virtual {p3, v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    goto :goto_0

    .line 376
    :cond_1
    int-to-byte v1, p2

    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    goto :goto_1
.end method

.method private _appendNamed(I[C)I
    .locals 2
    .param p1, "esc"    # I
    .param p2, "qbuf"    # [C

    .prologue
    .line 354
    const/4 v0, 0x1

    int-to-char v1, p1

    aput-char v1, p2, v0

    .line 355
    const/4 v0, 0x2

    return v0
.end method

.method private _appendNumeric(I[C)I
    .locals 3
    .param p1, "value"    # I
    .param p2, "qbuf"    # [C

    .prologue
    .line 346
    const/4 v0, 0x1

    const/16 v1, 0x75

    aput-char v1, p2, v0

    .line 348
    const/4 v0, 0x4

    sget-object v1, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HC:[C

    shr-int/lit8 v2, p1, 0x4

    aget-char v1, v1, v2

    aput-char v1, p2, v0

    .line 349
    const/4 v0, 0x5

    sget-object v1, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HC:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    aput-char v1, p2, v0

    .line 350
    const/4 v0, 0x6

    return v0
.end method

.method private static _convert(II)I
    .locals 3
    .param p0, "p1"    # I
    .param p1, "p2"    # I

    .prologue
    const v2, 0xdc00

    .line 383
    if-lt p1, v2, :cond_0

    const v0, 0xdfff

    if-le p1, v0, :cond_1

    .line 384
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broken surrogate pair: first char 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", second 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; illegal combination"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_1
    const/high16 v0, 0x10000

    const v1, 0xd800

    sub-int v1, p0, v1

    shl-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    sub-int v1, p1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private static _illegal(I)V
    .locals 2
    .param p0, "c"    # I

    .prologue
    .line 390
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->illegalSurrogateDesc(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance()Lcom/fasterxml/jackson/core/io/JsonStringEncoder;
    .locals 4

    .prologue
    .line 75
    sget-object v2, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_threadEncoder:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 76
    .local v1, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/fasterxml/jackson/core/io/JsonStringEncoder;>;"
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 78
    .local v0, "enc":Lcom/fasterxml/jackson/core/io/JsonStringEncoder;
    :goto_0
    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    .end local v0    # "enc":Lcom/fasterxml/jackson/core/io/JsonStringEncoder;
    invoke-direct {v0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;-><init>()V

    .line 80
    .restart local v0    # "enc":Lcom/fasterxml/jackson/core/io/JsonStringEncoder;
    sget-object v2, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_threadEncoder:Ljava/lang/ThreadLocal;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 82
    :cond_0
    return-object v0

    .line 76
    .end local v0    # "enc":Lcom/fasterxml/jackson/core/io/JsonStringEncoder;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public encodeAsUTF8(Ljava/lang/String;)[B
    .locals 10
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_bytes:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    .line 256
    .local v0, "byteBuilder":Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
    if-nez v0, :cond_0

    .line 258
    new-instance v0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    .end local v0    # "byteBuilder":Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
    const/4 v9, 0x0

    invoke-direct {v0, v9}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;-><init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;)V

    .restart local v0    # "byteBuilder":Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_bytes:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    .line 260
    :cond_0
    const/4 v3, 0x0

    .line 261
    .local v3, "inputPtr":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 262
    .local v2, "inputEnd":I
    const/4 v7, 0x0

    .line 263
    .local v7, "outputPtr":I
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->resetAndGetFirstSegment()[B

    move-result-object v5

    .line 264
    .local v5, "outputBuffer":[B
    array-length v6, v5

    .local v6, "outputEnd":I
    move v4, v3

    .line 267
    .end local v3    # "inputPtr":I
    .local v4, "inputPtr":I
    :goto_0
    if-ge v4, v2, :cond_f

    .line 268
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, "c":I
    move v4, v3

    .line 271
    .end local v3    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    :goto_1
    const/16 v9, 0x7f

    if-gt v1, v9, :cond_3

    .line 272
    if-lt v7, v6, :cond_1

    .line 273
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v5

    .line 274
    array-length v6, v5

    .line 275
    const/4 v7, 0x0

    .line 277
    :cond_1
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "outputPtr":I
    .local v8, "outputPtr":I
    int-to-byte v9, v1

    aput-byte v9, v5, v7

    .line 278
    if-lt v4, v2, :cond_2

    move v7, v8

    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    move v3, v4

    .line 336
    .end local v1    # "c":I
    .end local v4    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    :goto_2
    iget-object v9, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_bytes:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    invoke-virtual {v9, v7}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->completeAndCoalesce(I)[B

    move-result-object v9

    return-object v9

    .line 281
    .end local v3    # "inputPtr":I
    .end local v7    # "outputPtr":I
    .restart local v1    # "c":I
    .restart local v4    # "inputPtr":I
    .restart local v8    # "outputPtr":I
    :cond_2
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v7, v8

    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    move v4, v3

    .end local v3    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    goto :goto_1

    .line 285
    :cond_3
    if-lt v7, v6, :cond_e

    .line 286
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v5

    .line 287
    array-length v6, v5

    .line 288
    const/4 v7, 0x0

    move v8, v7

    .line 290
    .end local v7    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    :goto_3
    const/16 v9, 0x800

    if-ge v1, v9, :cond_5

    .line 291
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    shr-int/lit8 v9, v1, 0x6

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    move v3, v4

    .line 329
    .end local v4    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    :goto_4
    if-lt v7, v6, :cond_4

    .line 330
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v5

    .line 331
    array-length v6, v5

    .line 332
    const/4 v7, 0x0

    .line 334
    :cond_4
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    and-int/lit8 v9, v1, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v5, v7

    move v7, v8

    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    move v4, v3

    .line 335
    .end local v3    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    goto :goto_0

    .line 294
    .end local v7    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    :cond_5
    const v9, 0xd800

    if-lt v1, v9, :cond_6

    const v9, 0xdfff

    if-le v1, v9, :cond_8

    .line 295
    :cond_6
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    shr-int/lit8 v9, v1, 0xc

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    .line 296
    if-lt v7, v6, :cond_7

    .line 297
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v5

    .line 298
    array-length v6, v5

    .line 299
    const/4 v7, 0x0

    .line 301
    :cond_7
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    shr-int/lit8 v9, v1, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v5, v7

    move v7, v8

    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    move v3, v4

    .end local v4    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    goto :goto_4

    .line 303
    .end local v3    # "inputPtr":I
    .end local v7    # "outputPtr":I
    .restart local v4    # "inputPtr":I
    .restart local v8    # "outputPtr":I
    :cond_8
    const v9, 0xdbff

    if-le v1, v9, :cond_9

    .line 304
    invoke-static {v1}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    .line 307
    :cond_9
    if-lt v4, v2, :cond_a

    .line 308
    invoke-static {v1}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    .line 310
    :cond_a
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v1, v9}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_convert(II)I

    move-result v1

    .line 311
    const v9, 0x10ffff

    if-le v1, v9, :cond_b

    .line 312
    invoke-static {v1}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    .line 314
    :cond_b
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    shr-int/lit8 v9, v1, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    .line 315
    if-lt v7, v6, :cond_c

    .line 316
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v5

    .line 317
    array-length v6, v5

    .line 318
    const/4 v7, 0x0

    .line 320
    :cond_c
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    shr-int/lit8 v9, v1, 0xc

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v5, v7

    .line 321
    if-lt v8, v6, :cond_d

    .line 322
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v5

    .line 323
    array-length v6, v5

    .line 324
    const/4 v7, 0x0

    .line 326
    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    :goto_5
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    shr-int/lit8 v9, v1, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v5, v7

    move v7, v8

    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    goto/16 :goto_4

    .end local v7    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    :cond_d
    move v7, v8

    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    goto :goto_5

    .end local v3    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    :cond_e
    move v8, v7

    .end local v7    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    goto/16 :goto_3

    .end local v1    # "c":I
    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    :cond_f
    move v3, v4

    .end local v4    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    goto/16 :goto_2
.end method

.method public quoteAsString(Ljava/lang/String;)[C
    .locals 19
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_text:Lcom/fasterxml/jackson/core/util/TextBuffer;

    move-object/from16 v16, v0

    .line 98
    .local v16, "textBuffer":Lcom/fasterxml/jackson/core/util/TextBuffer;
    if-nez v16, :cond_0

    .line 100
    new-instance v16, Lcom/fasterxml/jackson/core/util/TextBuffer;

    .end local v16    # "textBuffer":Lcom/fasterxml/jackson/core/util/TextBuffer;
    const/16 v17, 0x0

    invoke-direct/range {v16 .. v17}, Lcom/fasterxml/jackson/core/util/TextBuffer;-><init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;)V

    .restart local v16    # "textBuffer":Lcom/fasterxml/jackson/core/util/TextBuffer;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_text:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 102
    :cond_0
    invoke-virtual/range {v16 .. v16}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v14

    .line 103
    .local v14, "outputBuffer":[C
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->get7BitOutputEscapes()[I

    move-result-object v6

    .line 104
    .local v6, "escCodes":[I
    array-length v5, v6

    .line 105
    .local v5, "escCodeCount":I
    const/4 v8, 0x0

    .line 106
    .local v8, "inPtr":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    .line 107
    .local v10, "inputLen":I
    const/4 v12, 0x0

    .line 110
    .local v12, "outPtr":I
    :goto_0
    if-ge v8, v10, :cond_4

    .line 113
    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 114
    .local v2, "c":C
    if-ge v2, v5, :cond_2

    aget v17, v6, v2

    if-eqz v17, :cond_2

    .line 127
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "inPtr":I
    .local v9, "inPtr":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 128
    .local v3, "d":C
    aget v4, v6, v3

    .line 129
    .local v4, "escCode":I
    if-gez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_qbuf:[C

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v1}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendNumeric(I[C)I

    move-result v11

    .line 133
    .local v11, "length":I
    :goto_2
    add-int v17, v12, v11

    array-length v0, v14

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_7

    .line 134
    array-length v0, v14

    move/from16 v17, v0

    sub-int v7, v17, v12

    .line 135
    .local v7, "first":I
    if-lez v7, :cond_1

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_qbuf:[C

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v14, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v14

    .line 139
    sub-int v15, v11, v7

    .line 140
    .local v15, "second":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_qbuf:[C

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v7, v14, v1, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    move v12, v15

    .end local v7    # "first":I
    .end local v15    # "second":I
    :goto_3
    move v8, v9

    .line 146
    .end local v9    # "inPtr":I
    .restart local v8    # "inPtr":I
    goto :goto_0

    .line 117
    .end local v3    # "d":C
    .end local v4    # "escCode":I
    .end local v11    # "length":I
    :cond_2
    array-length v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v12, v0, :cond_3

    .line 118
    invoke-virtual/range {v16 .. v16}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v14

    .line 119
    const/4 v12, 0x0

    .line 121
    :cond_3
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "outPtr":I
    .local v13, "outPtr":I
    aput-char v2, v14, v12

    .line 122
    add-int/lit8 v8, v8, 0x1

    if-lt v8, v10, :cond_5

    move v12, v13

    .line 147
    .end local v2    # "c":C
    .end local v13    # "outPtr":I
    .restart local v12    # "outPtr":I
    :cond_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 148
    invoke-virtual/range {v16 .. v16}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsArray()[C

    move-result-object v17

    return-object v17

    .end local v12    # "outPtr":I
    .restart local v2    # "c":C
    .restart local v13    # "outPtr":I
    :cond_5
    move v12, v13

    .line 125
    .end local v13    # "outPtr":I
    .restart local v12    # "outPtr":I
    goto :goto_1

    .line 129
    .end local v8    # "inPtr":I
    .restart local v3    # "d":C
    .restart local v4    # "escCode":I
    .restart local v9    # "inPtr":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_qbuf:[C

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v4, v1}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendNamed(I[C)I

    move-result v11

    goto :goto_2

    .line 143
    .restart local v11    # "length":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_qbuf:[C

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v14, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    add-int/2addr v12, v11

    goto :goto_3
.end method

.method public quoteAsUTF8(Ljava/lang/String;)[B
    .locals 12
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x7f

    .line 158
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_bytes:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    .line 159
    .local v0, "bb":Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    .end local v0    # "bb":Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
    const/4 v10, 0x0

    invoke-direct {v0, v10}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;-><init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;)V

    .restart local v0    # "bb":Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_bytes:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    .line 163
    :cond_0
    const/4 v5, 0x0

    .line 164
    .local v5, "inputPtr":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 165
    .local v4, "inputEnd":I
    const/4 v8, 0x0

    .line 166
    .local v8, "outputPtr":I
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->resetAndGetFirstSegment()[B

    move-result-object v7

    .line 169
    .local v7, "outputBuffer":[B
    :goto_0
    if-ge v5, v4, :cond_5

    .line 170
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->get7BitOutputEscapes()[I

    move-result-object v2

    .line 174
    .local v2, "escCodes":[I
    :goto_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 175
    .local v1, "ch":I
    if-gt v1, v11, :cond_1

    aget v10, v2, v1

    if-eqz v10, :cond_3

    .line 187
    :cond_1
    array-length v10, v7

    if-lt v8, v10, :cond_2

    .line 188
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v7

    .line 189
    const/4 v8, 0x0

    .line 192
    :cond_2
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "inputPtr":I
    .local v6, "inputPtr":I
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 193
    if-gt v1, v11, :cond_7

    .line 194
    aget v3, v2, v1

    .line 196
    .local v3, "escape":I
    invoke-direct {p0, v1, v3, v0, v8}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendByte(IILcom/fasterxml/jackson/core/util/ByteArrayBuilder;I)I

    move-result v8

    .line 197
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->getCurrentSegment()[B

    move-result-object v7

    move v5, v6

    .line 198
    .end local v6    # "inputPtr":I
    .restart local v5    # "inputPtr":I
    goto :goto_0

    .line 178
    .end local v3    # "escape":I
    :cond_3
    array-length v10, v7

    if-lt v8, v10, :cond_4

    .line 179
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v7

    .line 180
    const/4 v8, 0x0

    .line 182
    :cond_4
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "outputPtr":I
    .local v9, "outputPtr":I
    int-to-byte v10, v1

    aput-byte v10, v7, v8

    .line 183
    add-int/lit8 v5, v5, 0x1

    if-lt v5, v4, :cond_6

    move v8, v9

    .line 245
    .end local v1    # "ch":I
    .end local v2    # "escCodes":[I
    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    :cond_5
    iget-object v10, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_bytes:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    invoke-virtual {v10, v8}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->completeAndCoalesce(I)[B

    move-result-object v10

    return-object v10

    .end local v8    # "outputPtr":I
    .restart local v1    # "ch":I
    .restart local v2    # "escCodes":[I
    .restart local v9    # "outputPtr":I
    :cond_6
    move v8, v9

    .line 186
    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    goto :goto_1

    .line 200
    .end local v5    # "inputPtr":I
    .restart local v6    # "inputPtr":I
    :cond_7
    const/16 v10, 0x7ff

    if-gt v1, v10, :cond_9

    .line 201
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    shr-int/lit8 v10, v1, 0x6

    or-int/lit16 v10, v10, 0xc0

    int-to-byte v10, v10

    aput-byte v10, v7, v8

    .line 202
    and-int/lit8 v10, v1, 0x3f

    or-int/lit16 v1, v10, 0x80

    move v8, v9

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    move v5, v6

    .line 239
    .end local v6    # "inputPtr":I
    .restart local v5    # "inputPtr":I
    :goto_2
    array-length v10, v7

    if-lt v8, v10, :cond_8

    .line 240
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v7

    .line 241
    const/4 v8, 0x0

    .line 243
    :cond_8
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    int-to-byte v10, v1

    aput-byte v10, v7, v8

    move v8, v9

    .line 244
    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    goto :goto_0

    .line 205
    .end local v5    # "inputPtr":I
    .restart local v6    # "inputPtr":I
    :cond_9
    const v10, 0xd800

    if-lt v1, v10, :cond_a

    const v10, 0xdfff

    if-le v1, v10, :cond_b

    .line 206
    :cond_a
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    shr-int/lit8 v10, v1, 0xc

    or-int/lit16 v10, v10, 0xe0

    int-to-byte v10, v10

    aput-byte v10, v7, v8

    .line 207
    array-length v10, v7

    if-lt v9, v10, :cond_11

    .line 208
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v7

    .line 209
    const/4 v8, 0x0

    .line 211
    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    :goto_3
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    shr-int/lit8 v10, v1, 0x6

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v7, v8

    .line 212
    and-int/lit8 v10, v1, 0x3f

    or-int/lit16 v1, v10, 0x80

    move v8, v9

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    move v5, v6

    .end local v6    # "inputPtr":I
    .restart local v5    # "inputPtr":I
    goto :goto_2

    .line 214
    .end local v5    # "inputPtr":I
    .restart local v6    # "inputPtr":I
    :cond_b
    const v10, 0xdbff

    if-le v1, v10, :cond_c

    .line 215
    invoke-static {v1}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    .line 218
    :cond_c
    if-lt v6, v4, :cond_d

    .line 219
    invoke-static {v1}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    .line 221
    :cond_d
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "inputPtr":I
    .restart local v5    # "inputPtr":I
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v1, v10}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_convert(II)I

    move-result v1

    .line 222
    const v10, 0x10ffff

    if-le v1, v10, :cond_e

    .line 223
    invoke-static {v1}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    .line 225
    :cond_e
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    shr-int/lit8 v10, v1, 0x12

    or-int/lit16 v10, v10, 0xf0

    int-to-byte v10, v10

    aput-byte v10, v7, v8

    .line 226
    array-length v10, v7

    if-lt v9, v10, :cond_10

    .line 227
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v7

    .line 228
    const/4 v8, 0x0

    .line 230
    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    :goto_4
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    shr-int/lit8 v10, v1, 0xc

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v7, v8

    .line 231
    array-length v10, v7

    if-lt v9, v10, :cond_f

    .line 232
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v7

    .line 233
    const/4 v8, 0x0

    .line 235
    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    :goto_5
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    shr-int/lit8 v10, v1, 0x6

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v7, v8

    .line 236
    and-int/lit8 v10, v1, 0x3f

    or-int/lit16 v1, v10, 0x80

    move v8, v9

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    goto/16 :goto_2

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    :cond_f
    move v8, v9

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    goto :goto_5

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    :cond_10
    move v8, v9

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    goto :goto_4

    .end local v5    # "inputPtr":I
    .end local v8    # "outputPtr":I
    .restart local v6    # "inputPtr":I
    .restart local v9    # "outputPtr":I
    :cond_11
    move v8, v9

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    goto :goto_3
.end method
