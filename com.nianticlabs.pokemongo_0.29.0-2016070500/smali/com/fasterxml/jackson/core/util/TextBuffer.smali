.class public final Lcom/fasterxml/jackson/core/util/TextBuffer;
.super Ljava/lang/Object;
.source "TextBuffer.java"


# static fields
.field static final MAX_SEGMENT_LEN:I = 0x40000

.field static final MIN_SEGMENT_LEN:I = 0x3e8

.field static final NO_CHARS:[C


# instance fields
.field private final _allocator:Lcom/fasterxml/jackson/core/util/BufferRecycler;

.field private _currentSegment:[C

.field private _currentSize:I

.field private _hasSegments:Z

.field private _inputBuffer:[C

.field private _inputLen:I

.field private _inputStart:I

.field private _resultArray:[C

.field private _resultString:Ljava/lang/String;

.field private _segmentSize:I

.field private _segments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[C>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    new-array v0, v0, [C

    sput-object v0, Lcom/fasterxml/jackson/core/util/TextBuffer;->NO_CHARS:[C

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;)V
    .locals 1
    .param p1, "allocator"    # Lcom/fasterxml/jackson/core/util/BufferRecycler;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_hasSegments:Z

    .line 122
    iput-object p1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_allocator:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    .line 123
    return-void
.end method

.method private buf(I)[C
    .locals 2
    .param p1, "needed"    # I

    .prologue
    .line 234
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_allocator:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_allocator:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocCharBuffer(II)[C

    move-result-object v0

    .line 237
    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x3e8

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [C

    goto :goto_0
.end method

.method private carr(I)[C
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 739
    new-array v0, p1, [C

    return-object v0
.end method

.method private clearSegments()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 242
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_hasSegments:Z

    .line 250
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 251
    iput v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segmentSize:I

    iput v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 252
    return-void
.end method

.method private expand(I)V
    .locals 5
    .param p1, "minNewSegmentSize"    # I

    .prologue
    .line 683
    iget-object v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 684
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    .line 687
    .local v0, "curr":[C
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_hasSegments:Z

    .line 688
    iget-object v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    iget v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segmentSize:I

    array-length v4, v0

    add-int/2addr v3, v4

    iput v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segmentSize:I

    .line 690
    const/4 v3, 0x0

    iput v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 691
    array-length v2, v0

    .line 694
    .local v2, "oldLen":I
    shr-int/lit8 v3, v2, 0x1

    add-int v1, v2, v3

    .line 695
    .local v1, "newLen":I
    const/16 v3, 0x3e8

    if-ge v1, v3, :cond_2

    .line 696
    const/16 v1, 0x3e8

    .line 700
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->carr(I)[C

    move-result-object v3

    iput-object v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    .line 701
    return-void

    .line 697
    :cond_2
    const/high16 v3, 0x40000

    if-le v1, v3, :cond_1

    .line 698
    const/high16 v1, 0x40000

    goto :goto_0
.end method

.method private resultArray()[C
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 705
    iget-object v8, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 706
    iget-object v8, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 736
    :goto_0
    return-object v5

    .line 709
    :cond_0
    iget v8, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    if-ltz v8, :cond_3

    .line 710
    iget v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputLen:I

    .line 711
    .local v3, "len":I
    if-ge v3, v9, :cond_1

    .line 712
    sget-object v5, Lcom/fasterxml/jackson/core/util/TextBuffer;->NO_CHARS:[C

    goto :goto_0

    .line 714
    :cond_1
    iget v7, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    .line 715
    .local v7, "start":I
    if-nez v7, :cond_2

    .line 716
    iget-object v8, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputBuffer:[C

    invoke-static {v8, v3}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v5

    goto :goto_0

    .line 718
    :cond_2
    iget-object v8, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputBuffer:[C

    add-int v9, v7, v3

    invoke-static {v8, v7, v9}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v5

    goto :goto_0

    .line 721
    .end local v3    # "len":I
    .end local v7    # "start":I
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->size()I

    move-result v6

    .line 722
    .local v6, "size":I
    if-ge v6, v9, :cond_4

    .line 723
    sget-object v5, Lcom/fasterxml/jackson/core/util/TextBuffer;->NO_CHARS:[C

    goto :goto_0

    .line 725
    :cond_4
    const/4 v4, 0x0

    .line 726
    .local v4, "offset":I
    invoke-direct {p0, v6}, Lcom/fasterxml/jackson/core/util/TextBuffer;->carr(I)[C

    move-result-object v5

    .line 727
    .local v5, "result":[C
    iget-object v8, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    if-eqz v8, :cond_5

    .line 728
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v8, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    .restart local v3    # "len":I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 729
    iget-object v8, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 730
    .local v0, "curr":[C
    array-length v1, v0

    .line 731
    .local v1, "currLen":I
    invoke-static {v0, v10, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 732
    add-int/2addr v4, v1

    .line 728
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 735
    .end local v0    # "curr":[C
    .end local v1    # "currLen":I
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_5
    iget-object v8, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    iget v9, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    invoke-static {v8, v10, v5, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private unshare(I)V
    .locals 6
    .param p1, "needExtra"    # I

    .prologue
    const/4 v5, 0x0

    .line 657
    iget v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputLen:I

    .line 658
    .local v2, "sharedLen":I
    iput v5, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputLen:I

    .line 659
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputBuffer:[C

    .line 660
    .local v0, "inputBuf":[C
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputBuffer:[C

    .line 661
    iget v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    .line 662
    .local v3, "start":I
    const/4 v4, -0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    .line 665
    add-int v1, v2, p1

    .line 666
    .local v1, "needed":I
    iget-object v4, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    array-length v4, v4

    if-le v1, v4, :cond_1

    .line 667
    :cond_0
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->buf(I)[C

    move-result-object v4

    iput-object v4, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    .line 669
    :cond_1
    if-lez v2, :cond_2

    .line 670
    iget-object v4, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    invoke-static {v0, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 672
    :cond_2
    iput v5, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segmentSize:I

    .line 673
    iput v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 674
    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 3
    .param p1, "c"    # C

    .prologue
    const/4 v2, 0x0

    .line 420
    iget v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    if-ltz v1, :cond_0

    .line 421
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->unshare(I)V

    .line 423
    :cond_0
    iput-object v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 424
    iput-object v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    .line 426
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    .line 427
    .local v0, "curr":[C
    iget v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 428
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expand(I)V

    .line 429
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    .line 431
    :cond_1
    iget v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    aput-char p1, v0, v1

    .line 432
    return-void
.end method

.method public append(Ljava/lang/String;II)V
    .locals 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v4, 0x0

    .line 475
    iget v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    if-ltz v3, :cond_0

    .line 476
    invoke-direct {p0, p3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->unshare(I)V

    .line 478
    :cond_0
    iput-object v4, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 479
    iput-object v4, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    .line 482
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    .line 483
    .local v1, "curr":[C
    array-length v3, v1

    iget v4, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    sub-int v2, v3, v4

    .line 484
    .local v2, "max":I
    if-lt v2, p3, :cond_1

    .line 485
    add-int v3, p2, p3

    iget v4, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    invoke-virtual {p1, p2, v3, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 486
    iget v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    add-int/2addr v3, p3

    iput v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 507
    :goto_0
    return-void

    .line 490
    :cond_1
    if-lez v2, :cond_2

    .line 491
    add-int v3, p2, v2

    iget v4, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    invoke-virtual {p1, p2, v3, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 492
    sub-int/2addr p3, v2

    .line 493
    add-int/2addr p2, v2

    .line 500
    :cond_2
    invoke-direct {p0, p3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expand(I)V

    .line 501
    iget-object v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    array-length v3, v3

    invoke-static {v3, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 502
    .local v0, "amount":I
    add-int v3, p2, v0

    iget-object v4, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    const/4 v5, 0x0

    invoke-virtual {p1, p2, v3, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 503
    iget v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 504
    add-int/2addr p2, v0

    .line 505
    sub-int/2addr p3, v0

    .line 506
    if-gtz p3, :cond_2

    goto :goto_0
.end method

.method public append([CII)V
    .locals 5
    .param p1, "c"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v4, 0x0

    .line 437
    iget v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    if-ltz v3, :cond_0

    .line 438
    invoke-direct {p0, p3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->unshare(I)V

    .line 440
    :cond_0
    iput-object v4, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 441
    iput-object v4, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    .line 444
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    .line 445
    .local v1, "curr":[C
    array-length v3, v1

    iget v4, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    sub-int v2, v3, v4

    .line 447
    .local v2, "max":I
    if-lt v2, p3, :cond_1

    .line 448
    iget v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    invoke-static {p1, p2, v1, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 449
    iget v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    add-int/2addr v3, p3

    iput v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 470
    :goto_0
    return-void

    .line 453
    :cond_1
    if-lez v2, :cond_2

    .line 454
    iget v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    invoke-static {p1, p2, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 455
    add-int/2addr p2, v2

    .line 456
    sub-int/2addr p3, v2

    .line 463
    :cond_2
    invoke-direct {p0, p3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expand(I)V

    .line 464
    iget-object v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    array-length v3, v3

    invoke-static {v3, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 465
    .local v0, "amount":I
    iget-object v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    const/4 v4, 0x0

    invoke-static {p1, p2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 466
    iget v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 467
    add-int/2addr p2, v0

    .line 468
    sub-int/2addr p3, v0

    .line 469
    if-gtz p3, :cond_2

    goto :goto_0
.end method

.method public contentsAsArray()[C
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    .line 366
    .local v0, "result":[C
    if-nez v0, :cond_0

    .line 367
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resultArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    .line 369
    :cond_0
    return-object v0
.end method

.method public contentsAsDecimal()Ljava/math/BigDecimal;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 379
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseBigDecimal([C)Ljava/math/BigDecimal;

    move-result-object v0

    .line 391
    :goto_0
    return-object v0

    .line 383
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputBuffer:[C

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    iget v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputLen:I

    invoke-static {v0, v1, v2}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseBigDecimal([CII)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    .line 387
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segmentSize:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    if-eqz v0, :cond_2

    .line 388
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    const/4 v1, 0x0

    iget v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    invoke-static {v0, v1, v2}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseBigDecimal([CII)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    .line 391
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseBigDecimal([C)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0
.end method

.method public contentsAsDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public contentsAsString()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 327
    iget-object v6, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 329
    iget-object v6, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    if-eqz v6, :cond_1

    .line 330
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V

    iput-object v6, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 361
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    :goto_1
    return-object v6

    .line 333
    :cond_1
    iget v6, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    if-ltz v6, :cond_3

    .line 334
    iget v6, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputLen:I

    const/4 v7, 0x1

    if-ge v6, v7, :cond_2

    .line 335
    const-string v6, ""

    iput-object v6, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    goto :goto_1

    .line 337
    :cond_2
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputBuffer:[C

    iget v8, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    iget v9, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputLen:I

    invoke-direct {v6, v7, v8, v9}, Ljava/lang/String;-><init>([CII)V

    iput-object v6, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    goto :goto_0

    .line 340
    :cond_3
    iget v5, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segmentSize:I

    .line 341
    .local v5, "segLen":I
    iget v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 343
    .local v1, "currLen":I
    if-nez v5, :cond_5

    .line 344
    if-nez v1, :cond_4

    const-string v6, ""

    :goto_2
    iput-object v6, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    goto :goto_0

    :cond_4
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    invoke-direct {v6, v7, v8, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_2

    .line 346
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    add-int v6, v5, v1

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 348
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    .line 349
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v6, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "len":I
    :goto_3
    if-ge v2, v3, :cond_6

    .line 350
    iget-object v6, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 351
    .local v0, "curr":[C
    array-length v6, v0

    invoke-virtual {v4, v0, v8, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 349
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 355
    .end local v0    # "curr":[C
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_6
    iget-object v6, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    iget v7, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    invoke-virtual {v4, v6, v8, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    goto :goto_0
.end method

.method public emptyAndGetCurrentSegment()[C
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 538
    const/4 v1, -0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    .line 539
    iput v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 540
    iput v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputLen:I

    .line 542
    iput-object v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputBuffer:[C

    .line 543
    iput-object v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 544
    iput-object v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    .line 547
    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_hasSegments:Z

    if-eqz v1, :cond_0

    .line 548
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->clearSegments()V

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    .line 551
    .local v0, "curr":[C
    if-nez v0, :cond_1

    .line 552
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->buf(I)[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    .line 554
    :cond_1
    return-object v0
.end method

.method public ensureNotShared()V
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_0

    .line 414
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->unshare(I)V

    .line 416
    :cond_0
    return-void
.end method

.method public expandCurrentSegment()[C
    .locals 4

    .prologue
    .line 605
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    .line 607
    .local v0, "curr":[C
    array-length v1, v0

    .line 608
    .local v1, "len":I
    shr-int/lit8 v3, v1, 0x1

    add-int v2, v1, v3

    .line 610
    .local v2, "newLen":I
    const/high16 v3, 0x40000

    if-le v2, v3, :cond_0

    .line 611
    shr-int/lit8 v3, v1, 0x2

    add-int v2, v1, v3

    .line 613
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v3

    iput-object v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    return-object v3
.end method

.method public expandCurrentSegment(I)[C
    .locals 3
    .param p1, "minSize"    # I

    .prologue
    .line 626
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    .line 627
    .local v0, "curr":[C
    array-length v2, v0

    if-lt v2, p1, :cond_0

    move-object v1, v0

    .line 629
    .end local v0    # "curr":[C
    .local v1, "curr":[C
    :goto_0
    return-object v1

    .line 628
    .end local v1    # "curr":[C
    .restart local v0    # "curr":[C
    :cond_0
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    move-object v1, v0

    .line 629
    .end local v0    # "curr":[C
    .restart local v1    # "curr":[C
    goto :goto_0
.end method

.method public finishCurrentSegment()[C
    .locals 5

    .prologue
    .line 577
    iget-object v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 578
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    .line 580
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_hasSegments:Z

    .line 581
    iget-object v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    iget-object v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    array-length v2, v3

    .line 583
    .local v2, "oldLen":I
    iget v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segmentSize:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segmentSize:I

    .line 584
    const/4 v3, 0x0

    iput v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 587
    shr-int/lit8 v3, v2, 0x1

    add-int v1, v2, v3

    .line 588
    .local v1, "newLen":I
    const/16 v3, 0x3e8

    if-ge v1, v3, :cond_2

    .line 589
    const/16 v1, 0x3e8

    .line 593
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->carr(I)[C

    move-result-object v0

    .line 594
    .local v0, "curr":[C
    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    .line 595
    return-object v0

    .line 590
    .end local v0    # "curr":[C
    :cond_2
    const/high16 v3, 0x40000

    if-le v1, v3, :cond_1

    .line 591
    const/high16 v1, 0x40000

    goto :goto_0
.end method

.method public getCurrentSegment()[C
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 521
    iget v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    if-ltz v1, :cond_1

    .line 522
    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->unshare(I)V

    .line 532
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    return-object v1

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    .line 525
    .local v0, "curr":[C
    if-nez v0, :cond_2

    .line 526
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->buf(I)[C

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    goto :goto_0

    .line 527
    :cond_2
    iget v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 529
    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expand(I)V

    goto :goto_0
.end method

.method public getCurrentSegmentSize()I
    .locals 1

    .prologue
    .line 557
    iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    return v0
.end method

.method public getTextBuffer()[C
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputBuffer:[C

    .line 316
    :goto_0
    return-object v0

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    goto :goto_0

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 309
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    goto :goto_0

    .line 312
    :cond_2
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_hasSegments:Z

    if-nez v0, :cond_4

    .line 313
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    if-nez v0, :cond_3

    sget-object v0, Lcom/fasterxml/jackson/core/util/TextBuffer;->NO_CHARS:[C

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    goto :goto_0

    .line 316
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsArray()[C

    move-result-object v0

    goto :goto_0
.end method

.method public getTextOffset()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTextAsCharacters()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 292
    iget v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    if-eqz v1, :cond_1

    .line 295
    :cond_0
    :goto_0
    return v0

    .line 294
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public releaseBuffers()V
    .locals 3

    .prologue
    .line 136
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_allocator:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    if-nez v1, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithEmpty()V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithEmpty()V

    .line 143
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    .line 144
    .local v0, "buf":[C
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    .line 145
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_allocator:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->releaseCharBuffer(I[C)V

    goto :goto_0
.end method

.method public resetWithCopy([CII)V
    .locals 3
    .param p1, "buf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 195
    iput-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputBuffer:[C

    .line 196
    const/4 v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    .line 197
    iput v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputLen:I

    .line 199
    iput-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 200
    iput-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    .line 203
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_hasSegments:Z

    if-eqz v0, :cond_1

    .line 204
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->clearSegments()V

    .line 208
    :cond_0
    :goto_0
    iput v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segmentSize:I

    iput v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 209
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->append([CII)V

    .line 210
    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    if-nez v0, :cond_0

    .line 206
    invoke-direct {p0, p3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->buf(I)[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    goto :goto_0
.end method

.method public resetWithEmpty()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 156
    const/4 v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    .line 157
    iput v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 158
    iput v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputLen:I

    .line 160
    iput-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputBuffer:[C

    .line 161
    iput-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 162
    iput-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    .line 165
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_hasSegments:Z

    if-eqz v0, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->clearSegments()V

    .line 168
    :cond_0
    return-void
.end method

.method public resetWithShared([CII)V
    .locals 1
    .param p1, "buf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 180
    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    .line 183
    iput-object p1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputBuffer:[C

    .line 184
    iput p2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    .line 185
    iput p3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputLen:I

    .line 188
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_hasSegments:Z

    if-eqz v0, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->clearSegments()V

    .line 191
    :cond_0
    return-void
.end method

.method public resetWithString(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 214
    iput-object v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputBuffer:[C

    .line 215
    const/4 v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    .line 216
    iput v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputLen:I

    .line 218
    iput-object p1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 219
    iput-object v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    .line 221
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_hasSegments:Z

    if-eqz v0, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->clearSegments()V

    .line 224
    :cond_0
    iput v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 226
    return-void
.end method

.method public setCurrentAndReturn(I)Ljava/lang/String;
    .locals 4
    .param p1, "len"    # I

    .prologue
    .line 564
    iput p1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 566
    iget v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segmentSize:I

    if-lez v2, :cond_0

    .line 567
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v1

    .line 573
    :goto_0
    return-object v1

    .line 570
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 571
    .local v0, "currLen":I
    if-nez v0, :cond_1

    const-string v1, ""

    .line 572
    .local v1, "str":Ljava/lang/String;
    :goto_1
    iput-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    goto :goto_0

    .line 571
    .end local v1    # "str":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1
.end method

.method public setCurrentLength(I)V
    .locals 0
    .param p1, "len"    # I

    .prologue
    .line 558
    iput p1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 264
    iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_0

    .line 265
    iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputLen:I

    .line 274
    :goto_0
    return v0

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    array-length v0, v0

    goto :goto_0

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 274
    :cond_2
    iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segmentSize:I

    iget v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 643
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
