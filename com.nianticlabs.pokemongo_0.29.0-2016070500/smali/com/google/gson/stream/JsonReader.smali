.class public Lcom/google/gson/stream/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final MIN_INCOMPLETE_INTEGER:J = -0xcccccccccccccccL

.field private static final NON_EXECUTE_PREFIX:[C

.field private static final NUMBER_CHAR_DECIMAL:I = 0x3

.field private static final NUMBER_CHAR_DIGIT:I = 0x2

.field private static final NUMBER_CHAR_EXP_DIGIT:I = 0x7

.field private static final NUMBER_CHAR_EXP_E:I = 0x5

.field private static final NUMBER_CHAR_EXP_SIGN:I = 0x6

.field private static final NUMBER_CHAR_FRACTION_DIGIT:I = 0x4

.field private static final NUMBER_CHAR_NONE:I = 0x0

.field private static final NUMBER_CHAR_SIGN:I = 0x1

.field private static final PEEKED_BEGIN_ARRAY:I = 0x3

.field private static final PEEKED_BEGIN_OBJECT:I = 0x1

.field private static final PEEKED_BUFFERED:I = 0xb

.field private static final PEEKED_DOUBLE_QUOTED:I = 0x9

.field private static final PEEKED_DOUBLE_QUOTED_NAME:I = 0xd

.field private static final PEEKED_END_ARRAY:I = 0x4

.field private static final PEEKED_END_OBJECT:I = 0x2

.field private static final PEEKED_EOF:I = 0x11

.field private static final PEEKED_FALSE:I = 0x6

.field private static final PEEKED_LONG:I = 0xf

.field private static final PEEKED_NONE:I = 0x0

.field private static final PEEKED_NULL:I = 0x7

.field private static final PEEKED_NUMBER:I = 0x10

.field private static final PEEKED_SINGLE_QUOTED:I = 0x8

.field private static final PEEKED_SINGLE_QUOTED_NAME:I = 0xc

.field private static final PEEKED_TRUE:I = 0x5

.field private static final PEEKED_UNQUOTED:I = 0xa

.field private static final PEEKED_UNQUOTED_NAME:I = 0xe


# instance fields
.field private final buffer:[C

.field private final in:Ljava/io/Reader;

.field private lenient:Z

.field private limit:I

.field private lineNumber:I

.field private lineStart:I

.field private peeked:I

.field private peekedLong:J

.field private peekedNumberLength:I

.field private peekedString:Ljava/lang/String;

.field private pos:I

.field private stack:[I

.field private stackSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 192
    const-string v0, ")]}\'\n"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    .line 1532
    new-instance v0, Lcom/google/gson/stream/JsonReader$1;

    invoke-direct {v0}, Lcom/google/gson/stream/JsonReader$1;-><init>()V

    sput-object v0, Lcom/google/gson/internal/JsonReaderInternalAccess;->INSTANCE:Lcom/google/gson/internal/JsonReaderInternalAccess;

    .line 1554
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 3
    .param p1, "in"    # Ljava/io/Reader;

    .prologue
    const/4 v1, 0x0

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    .line 238
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 239
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 240
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 242
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 243
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 245
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 269
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 270
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 272
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    const/4 v2, 0x6

    aput v2, v0, v1

    .line 279
    if-nez p1, :cond_0

    .line 280
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_0
    iput-object p1, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    .line 283
    return-void
.end method

.method static synthetic access$000(Lcom/google/gson/stream/JsonReader;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/gson/stream/JsonReader;

    .prologue
    .line 190
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v0
.end method

.method static synthetic access$002(Lcom/google/gson/stream/JsonReader;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/gson/stream/JsonReader;
    .param p1, "x1"    # I

    .prologue
    .line 190
    iput p1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/gson/stream/JsonReader;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/gson/stream/JsonReader;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/gson/stream/JsonReader;

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/google/gson/stream/JsonReader;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/gson/stream/JsonReader;

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method private checkLenient()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1385
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-nez v0, :cond_0

    .line 1386
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1388
    :cond_0
    return-void
.end method

.method private consumeNonExecutePrefix()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1514
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 1515
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1517
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sget-object v2, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-le v1, v2, :cond_1

    sget-object v1, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v1, v1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1529
    :cond_0
    :goto_0
    return-void

    .line 1521
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1522
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sget-object v2, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    aget-char v2, v2, v0

    if-ne v1, v2, :cond_0

    .line 1521
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1528
    :cond_2
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sget-object v2, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_0
.end method

.method private doPeek()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x7

    const/4 v8, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 451
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aget v1, v6, v7

    .line 452
    .local v1, "peekStack":I
    if-ne v1, v4, :cond_3

    .line 453
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aput v3, v6, v7

    .line 538
    :cond_0
    :goto_0
    :pswitch_0
    :sswitch_0
    invoke-direct {p0, v4}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 539
    .local v0, "c":I
    sparse-switch v0, :sswitch_data_0

    .line 568
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 571
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    if-ne v3, v4, :cond_1

    .line 572
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 575
    :cond_1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->peekKeyword()I

    move-result v2

    .line 576
    .local v2, "result":I
    if-eqz v2, :cond_14

    .line 590
    .end local v2    # "result":I
    :cond_2
    :goto_1
    return v2

    .line 454
    .end local v0    # "c":I
    :cond_3
    if-ne v1, v3, :cond_4

    .line 456
    invoke-direct {p0, v4}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 457
    .restart local v0    # "c":I
    sparse-switch v0, :sswitch_data_1

    .line 465
    const-string v3, "Unterminated array"

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 459
    :sswitch_1
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto :goto_1

    .line 461
    :sswitch_2
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    goto :goto_0

    .line 467
    .end local v0    # "c":I
    :cond_4
    const/4 v6, 0x3

    if-eq v1, v6, :cond_5

    if-ne v1, v8, :cond_9

    .line 468
    :cond_5
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aput v2, v5, v6

    .line 470
    if-ne v1, v8, :cond_6

    .line 471
    invoke-direct {p0, v4}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 472
    .restart local v0    # "c":I
    sparse-switch v0, :sswitch_data_2

    .line 480
    const-string v3, "Unterminated object"

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 474
    :sswitch_3
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    move v2, v3

    goto :goto_1

    .line 476
    :sswitch_4
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 483
    .end local v0    # "c":I
    :cond_6
    :sswitch_5
    invoke-direct {p0, v4}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 484
    .restart local v0    # "c":I
    sparse-switch v0, :sswitch_data_3

    .line 497
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 498
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 499
    int-to-char v3, v0

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 500
    const/16 v2, 0xe

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto :goto_1

    .line 486
    :sswitch_6
    const/16 v2, 0xd

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto :goto_1

    .line 488
    :sswitch_7
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 489
    const/16 v2, 0xc

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto :goto_1

    .line 491
    :sswitch_8
    if-eq v1, v8, :cond_7

    .line 492
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    move v2, v3

    goto :goto_1

    .line 494
    :cond_7
    const-string v3, "Expected name"

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 502
    :cond_8
    const-string v3, "Expected name"

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 505
    .end local v0    # "c":I
    :cond_9
    if-ne v1, v2, :cond_b

    .line 506
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aput v8, v6, v7

    .line 508
    invoke-direct {p0, v4}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 509
    .restart local v0    # "c":I
    packed-switch v0, :pswitch_data_0

    .line 519
    :pswitch_1
    const-string v3, "Expected \':\'"

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 513
    :pswitch_2
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 514
    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v6, v7, :cond_a

    invoke-direct {p0, v4}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_a
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v6, v6, v7

    const/16 v7, 0x3e

    if-ne v6, v7, :cond_0

    .line 515
    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto/16 :goto_0

    .line 521
    .end local v0    # "c":I
    :cond_b
    const/4 v6, 0x6

    if-ne v1, v6, :cond_d

    .line 522
    iget-boolean v6, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-eqz v6, :cond_c

    .line 523
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->consumeNonExecutePrefix()V

    .line 525
    :cond_c
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aput v5, v6, v7

    goto/16 :goto_0

    .line 526
    :cond_d
    if-ne v1, v5, :cond_f

    .line 527
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 528
    .restart local v0    # "c":I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_e

    .line 529
    const/16 v2, 0x11

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_1

    .line 531
    :cond_e
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 532
    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto/16 :goto_0

    .line 534
    .end local v0    # "c":I
    :cond_f
    const/16 v6, 0x8

    if-ne v1, v6, :cond_0

    .line 535
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "JsonReader is closed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 541
    .restart local v0    # "c":I
    :sswitch_9
    if-ne v1, v4, :cond_10

    .line 542
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_1

    .line 548
    :cond_10
    :sswitch_a
    if-eq v1, v4, :cond_11

    if-ne v1, v3, :cond_12

    .line 549
    :cond_11
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 550
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 551
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    move v2, v5

    goto/16 :goto_1

    .line 553
    :cond_12
    const-string v3, "Unexpected value"

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 556
    :sswitch_b
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 557
    const/16 v2, 0x8

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_1

    .line 559
    :sswitch_c
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    if-ne v3, v4, :cond_13

    .line 560
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 562
    :cond_13
    const/16 v2, 0x9

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_1

    .line 564
    :sswitch_d
    const/4 v2, 0x3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_1

    .line 566
    :sswitch_e
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    move v2, v4

    goto/16 :goto_1

    .line 580
    .restart local v2    # "result":I
    :cond_14
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->peekNumber()I

    move-result v2

    .line 581
    if-nez v2, :cond_2

    .line 585
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v3, v3, v4

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v3

    if-nez v3, :cond_15

    .line 586
    const-string v3, "Expected value"

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 589
    :cond_15
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 590
    const/16 v2, 0xa

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_1

    .line 539
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_c
        0x27 -> :sswitch_b
        0x2c -> :sswitch_a
        0x3b -> :sswitch_a
        0x5b -> :sswitch_d
        0x5d -> :sswitch_9
        0x7b -> :sswitch_e
    .end sparse-switch

    .line 457
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_2
        0x5d -> :sswitch_1
    .end sparse-switch

    .line 472
    :sswitch_data_2
    .sparse-switch
        0x2c -> :sswitch_5
        0x3b -> :sswitch_4
        0x7d -> :sswitch_3
    .end sparse-switch

    .line 484
    :sswitch_data_3
    .sparse-switch
        0x22 -> :sswitch_6
        0x27 -> :sswitch_7
        0x7d -> :sswitch_8
    .end sparse-switch

    .line 509
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private fillBuffer(I)Z
    .locals 7
    .param p1, "minimum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1252
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 1253
    .local v0, "buffer":[C
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1254
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    if-eq v3, v4, :cond_3

    .line 1255
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1256
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    invoke-static {v0, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1261
    :goto_0
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1263
    :cond_0
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    array-length v5, v0

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    sub-int/2addr v5, v6

    invoke-virtual {v3, v0, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .local v1, "total":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 1264
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1267
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    if-nez v3, :cond_1

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    if-nez v3, :cond_1

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lez v3, :cond_1

    aget-char v3, v0, v2

    const v4, 0xfeff

    if-ne v3, v4, :cond_1

    .line 1268
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1269
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1270
    add-int/lit8 p1, p1, 0x1

    .line 1273
    :cond_1
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v3, p1, :cond_0

    .line 1274
    const/4 v2, 0x1

    .line 1277
    :cond_2
    return v2

    .line 1258
    .end local v1    # "total":I
    :cond_3
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    goto :goto_0
.end method

.method private getColumnNumber()I
    .locals 2

    .prologue
    .line 1285
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getLineNumber()I
    .locals 1

    .prologue
    .line 1281
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isLiteral(C)Z
    .locals 1
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 741
    sparse-switch p1, :sswitch_data_0

    .line 761
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 747
    :sswitch_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 759
    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 741
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private nextNonWhitespace(Z)I
    .locals 10
    .param p1, "throwOnEof"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 1304
    .local v0, "buffer":[C
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1305
    .local v4, "p":I
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1307
    .local v3, "l":I
    :goto_0
    if-ne v4, v3, :cond_1

    .line 1308
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1309
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1376
    if-eqz p1, :cond_8

    .line 1377
    new-instance v7, Ljava/io/EOFException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "End of input at line "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " column "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1312
    :cond_0
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1313
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1316
    :cond_1
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "p":I
    .local v5, "p":I
    aget-char v1, v0, v4

    .line 1317
    .local v1, "c":I
    const/16 v7, 0xa

    if-ne v1, v7, :cond_2

    .line 1318
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1319
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    move v4, v5

    .line 1320
    .end local v5    # "p":I
    .restart local v4    # "p":I
    goto :goto_0

    .line 1321
    .end local v4    # "p":I
    .restart local v5    # "p":I
    :cond_2
    const/16 v7, 0x20

    if-eq v1, v7, :cond_9

    const/16 v7, 0xd

    if-eq v1, v7, :cond_9

    const/16 v7, 0x9

    if-ne v1, v7, :cond_3

    move v4, v5

    .line 1322
    .end local v5    # "p":I
    .restart local v4    # "p":I
    goto :goto_0

    .line 1325
    .end local v4    # "p":I
    .restart local v5    # "p":I
    :cond_3
    const/16 v7, 0x2f

    if-ne v1, v7, :cond_6

    .line 1326
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1327
    if-ne v5, v3, :cond_4

    .line 1328
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1329
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v2

    .line 1330
    .local v2, "charsLoaded":Z
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1331
    if-nez v2, :cond_4

    move v4, v5

    .line 1380
    .end local v1    # "c":I
    .end local v2    # "charsLoaded":Z
    .end local v5    # "p":I
    .restart local v4    # "p":I
    :goto_1
    return v1

    .line 1336
    .end local v4    # "p":I
    .restart local v1    # "c":I
    .restart local v5    # "p":I
    :cond_4
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1337
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v6, v0, v7

    .line 1338
    .local v6, "peek":C
    sparse-switch v6, :sswitch_data_0

    move v4, v5

    .line 1358
    .end local v5    # "p":I
    .restart local v4    # "p":I
    goto :goto_1

    .line 1341
    .end local v4    # "p":I
    .restart local v5    # "p":I
    :sswitch_0
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1342
    const-string v7, "*/"

    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->skipTo(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1343
    const-string v7, "Unterminated comment"

    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v7

    throw v7

    .line 1345
    :cond_5
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v4, v7, 0x2

    .line 1346
    .end local v5    # "p":I
    .restart local v4    # "p":I
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1347
    goto/16 :goto_0

    .line 1351
    .end local v4    # "p":I
    .restart local v5    # "p":I
    :sswitch_1
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1352
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    .line 1353
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1354
    .end local v5    # "p":I
    .restart local v4    # "p":I
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1355
    goto/16 :goto_0

    .line 1360
    .end local v4    # "p":I
    .end local v6    # "peek":C
    .restart local v5    # "p":I
    :cond_6
    const/16 v7, 0x23

    if-ne v1, v7, :cond_7

    .line 1361
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1367
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1368
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    .line 1369
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1370
    .end local v5    # "p":I
    .restart local v4    # "p":I
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    goto/16 :goto_0

    .line 1372
    .end local v4    # "p":I
    .restart local v5    # "p":I
    :cond_7
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    move v4, v5

    .line 1373
    .end local v5    # "p":I
    .restart local v4    # "p":I
    goto :goto_1

    .line 1380
    .end local v1    # "c":I
    :cond_8
    const/4 v1, -0x1

    goto :goto_1

    .end local v4    # "p":I
    .restart local v1    # "c":I
    .restart local v5    # "p":I
    :cond_9
    move v4, v5

    .end local v5    # "p":I
    .restart local v4    # "p":I
    goto/16 :goto_0

    .line 1338
    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_0
        0x2f -> :sswitch_1
    .end sparse-switch
.end method

.method private nextQuotedValue(C)Ljava/lang/String;
    .locals 8
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 976
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 977
    .local v0, "buffer":[C
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 979
    .local v1, "builder":Ljava/lang/StringBuilder;
    :cond_0
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 980
    .local v4, "p":I
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 982
    .local v3, "l":I
    move v6, v4

    .local v6, "start":I
    move v5, v4

    .line 983
    .end local v4    # "p":I
    .local v5, "p":I
    :goto_0
    if-ge v5, v3, :cond_4

    .line 984
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "p":I
    .restart local v4    # "p":I
    aget-char v2, v0, v5

    .line 986
    .local v2, "c":I
    if-ne v2, p1, :cond_1

    .line 987
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 988
    sub-int v7, v4, v6

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v0, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 989
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 990
    :cond_1
    const/16 v7, 0x5c

    if-ne v2, v7, :cond_3

    .line 991
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 992
    sub-int v7, v4, v6

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v0, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 993
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->readEscapeCharacter()C

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 994
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 995
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 996
    move v6, v4

    :cond_2
    :goto_1
    move v5, v4

    .line 1001
    .end local v4    # "p":I
    .restart local v5    # "p":I
    goto :goto_0

    .line 997
    .end local v5    # "p":I
    .restart local v4    # "p":I
    :cond_3
    const/16 v7, 0xa

    if-ne v2, v7, :cond_2

    .line 998
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 999
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    goto :goto_1

    .line 1003
    .end local v2    # "c":I
    .end local v4    # "p":I
    .restart local v5    # "p":I
    :cond_4
    sub-int v7, v5, v6

    invoke-virtual {v1, v0, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1004
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1005
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1006
    const-string v7, "Unterminated string"

    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v7

    throw v7
.end method

.method private nextUnquotedValue()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1016
    const/4 v0, 0x0

    .line 1017
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1021
    .local v1, "i":I
    :cond_0
    :goto_0
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ge v3, v4, :cond_2

    .line 1022
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v4, v1

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 1021
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1028
    :sswitch_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1066
    :cond_1
    :goto_1
    :sswitch_1
    if-nez v0, :cond_5

    .line 1067
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {v2, v3, v4, v1}, Ljava/lang/String;-><init>([CII)V

    .line 1072
    .local v2, "result":Ljava/lang/String;
    :goto_2
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1073
    return-object v2

    .line 1045
    .end local v2    # "result":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 1046
    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 1054
    :cond_3
    if-nez v0, :cond_4

    .line 1055
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1057
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_4
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1058
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1059
    const/4 v1, 0x0

    .line 1060
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 1069
    :cond_5
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1070
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/String;
    goto :goto_2

    .line 1022
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private peekKeyword()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 595
    iget-object v7, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v8, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v7, v8

    .line 599
    .local v0, "c":C
    const/16 v7, 0x74

    if-eq v0, v7, :cond_0

    const/16 v7, 0x54

    if-ne v0, v7, :cond_1

    .line 600
    :cond_0
    const-string v2, "true"

    .line 601
    .local v2, "keyword":Ljava/lang/String;
    const-string v3, "TRUE"

    .line 602
    .local v3, "keywordUpper":Ljava/lang/String;
    const/4 v5, 0x5

    .line 616
    .local v5, "peeking":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .line 617
    .local v4, "length":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_8

    .line 618
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v7, v1

    iget v8, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v7, v8, :cond_6

    add-int/lit8 v7, v1, 0x1

    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v7

    if-nez v7, :cond_6

    move v5, v6

    .line 634
    .end local v1    # "i":I
    .end local v2    # "keyword":Ljava/lang/String;
    .end local v3    # "keywordUpper":Ljava/lang/String;
    .end local v4    # "length":I
    .end local v5    # "peeking":I
    :goto_2
    return v5

    .line 603
    :cond_1
    const/16 v7, 0x66

    if-eq v0, v7, :cond_2

    const/16 v7, 0x46

    if-ne v0, v7, :cond_3

    .line 604
    :cond_2
    const-string v2, "false"

    .line 605
    .restart local v2    # "keyword":Ljava/lang/String;
    const-string v3, "FALSE"

    .line 606
    .restart local v3    # "keywordUpper":Ljava/lang/String;
    const/4 v5, 0x6

    .restart local v5    # "peeking":I
    goto :goto_0

    .line 607
    .end local v2    # "keyword":Ljava/lang/String;
    .end local v3    # "keywordUpper":Ljava/lang/String;
    .end local v5    # "peeking":I
    :cond_3
    const/16 v7, 0x6e

    if-eq v0, v7, :cond_4

    const/16 v7, 0x4e

    if-ne v0, v7, :cond_5

    .line 608
    :cond_4
    const-string v2, "null"

    .line 609
    .restart local v2    # "keyword":Ljava/lang/String;
    const-string v3, "NULL"

    .line 610
    .restart local v3    # "keywordUpper":Ljava/lang/String;
    const/4 v5, 0x7

    .restart local v5    # "peeking":I
    goto :goto_0

    .end local v2    # "keyword":Ljava/lang/String;
    .end local v3    # "keywordUpper":Ljava/lang/String;
    .end local v5    # "peeking":I
    :cond_5
    move v5, v6

    .line 612
    goto :goto_2

    .line 621
    .restart local v1    # "i":I
    .restart local v2    # "keyword":Ljava/lang/String;
    .restart local v3    # "keywordUpper":Ljava/lang/String;
    .restart local v4    # "length":I
    .restart local v5    # "peeking":I
    :cond_6
    iget-object v7, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v8, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v8, v1

    aget-char v0, v7, v8

    .line 622
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v0, v7, :cond_7

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v0, v7, :cond_7

    move v5, v6

    .line 623
    goto :goto_2

    .line 617
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 627
    :cond_8
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v7, v4

    iget v8, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v7, v8, :cond_9

    add-int/lit8 v7, v4, 0x1

    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_9
    iget-object v7, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v8, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v8, v4

    aget-char v7, v7, v8

    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v7

    if-eqz v7, :cond_a

    move v5, v6

    .line 629
    goto :goto_2

    .line 633
    :cond_a
    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 634
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto :goto_2
.end method

.method private peekNumber()I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 639
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 640
    .local v2, "buffer":[C
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 641
    .local v9, "p":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 643
    .local v6, "l":I
    const-wide/16 v12, 0x0

    .line 644
    .local v12, "value":J
    const/4 v8, 0x0

    .line 645
    .local v8, "negative":Z
    const/4 v4, 0x1

    .line 646
    .local v4, "fitsInLong":Z
    const/4 v7, 0x0

    .line 648
    .local v7, "last":I
    const/4 v5, 0x0

    .line 652
    .local v5, "i":I
    :goto_0
    add-int v14, v9, v5

    if-ne v14, v6, :cond_4

    .line 653
    array-length v14, v2

    if-ne v5, v14, :cond_0

    .line 656
    const/4 v14, 0x0

    .line 736
    .end local v12    # "value":J
    :goto_1
    return v14

    .line 658
    .restart local v12    # "value":J
    :cond_0
    add-int/lit8 v14, v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v14

    if-nez v14, :cond_3

    .line 727
    :cond_1
    const/4 v14, 0x2

    if-ne v7, v14, :cond_17

    if-eqz v4, :cond_17

    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v14, v12, v14

    if-nez v14, :cond_2

    if-eqz v8, :cond_17

    .line 728
    :cond_2
    if-eqz v8, :cond_16

    .end local v12    # "value":J
    :goto_2
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    .line 729
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v14, v5

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 730
    const/16 v14, 0xf

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto :goto_1

    .line 661
    .restart local v12    # "value":J
    :cond_3
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 662
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 665
    :cond_4
    add-int v14, v9, v5

    aget-char v3, v2, v14

    .line 666
    .local v3, "c":C
    sparse-switch v3, :sswitch_data_0

    .line 701
    const/16 v14, 0x30

    if-lt v3, v14, :cond_5

    const/16 v14, 0x39

    if-le v3, v14, :cond_d

    .line 702
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 705
    const/4 v14, 0x0

    goto :goto_1

    .line 668
    :sswitch_0
    if-nez v7, :cond_7

    .line 669
    const/4 v8, 0x1

    .line 670
    const/4 v7, 0x1

    .line 651
    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 672
    :cond_7
    const/4 v14, 0x5

    if-ne v7, v14, :cond_8

    .line 673
    const/4 v7, 0x6

    .line 674
    goto :goto_3

    .line 676
    :cond_8
    const/4 v14, 0x0

    goto :goto_1

    .line 679
    :sswitch_1
    const/4 v14, 0x5

    if-ne v7, v14, :cond_9

    .line 680
    const/4 v7, 0x6

    .line 681
    goto :goto_3

    .line 683
    :cond_9
    const/4 v14, 0x0

    goto :goto_1

    .line 687
    :sswitch_2
    const/4 v14, 0x2

    if-eq v7, v14, :cond_a

    const/4 v14, 0x4

    if-ne v7, v14, :cond_b

    .line 688
    :cond_a
    const/4 v7, 0x5

    .line 689
    goto :goto_3

    .line 691
    :cond_b
    const/4 v14, 0x0

    goto :goto_1

    .line 694
    :sswitch_3
    const/4 v14, 0x2

    if-ne v7, v14, :cond_c

    .line 695
    const/4 v7, 0x3

    .line 696
    goto :goto_3

    .line 698
    :cond_c
    const/4 v14, 0x0

    goto :goto_1

    .line 707
    :cond_d
    const/4 v14, 0x1

    if-eq v7, v14, :cond_e

    if-nez v7, :cond_f

    .line 708
    :cond_e
    add-int/lit8 v14, v3, -0x30

    neg-int v14, v14

    int-to-long v12, v14

    .line 709
    const/4 v7, 0x2

    goto :goto_3

    .line 710
    :cond_f
    const/4 v14, 0x2

    if-ne v7, v14, :cond_13

    .line 711
    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    if-nez v14, :cond_10

    .line 712
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 714
    :cond_10
    const-wide/16 v14, 0xa

    mul-long/2addr v14, v12

    add-int/lit8 v16, v3, -0x30

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    sub-long v10, v14, v16

    .line 715
    .local v10, "newValue":J
    const-wide v14, -0xcccccccccccccccL

    cmp-long v14, v12, v14

    if-gtz v14, :cond_11

    const-wide v14, -0xcccccccccccccccL

    cmp-long v14, v12, v14

    if-nez v14, :cond_12

    cmp-long v14, v10, v12

    if-gez v14, :cond_12

    :cond_11
    const/4 v14, 0x1

    :goto_4
    and-int/2addr v4, v14

    .line 717
    move-wide v12, v10

    .line 718
    goto :goto_3

    .line 715
    :cond_12
    const/4 v14, 0x0

    goto :goto_4

    .line 718
    .end local v10    # "newValue":J
    :cond_13
    const/4 v14, 0x3

    if-ne v7, v14, :cond_14

    .line 719
    const/4 v7, 0x4

    goto :goto_3

    .line 720
    :cond_14
    const/4 v14, 0x5

    if-eq v7, v14, :cond_15

    const/4 v14, 0x6

    if-ne v7, v14, :cond_6

    .line 721
    :cond_15
    const/4 v7, 0x7

    goto :goto_3

    .line 728
    .end local v3    # "c":C
    :cond_16
    neg-long v12, v12

    goto/16 :goto_2

    .line 731
    :cond_17
    const/4 v14, 0x2

    if-eq v7, v14, :cond_18

    const/4 v14, 0x4

    if-eq v7, v14, :cond_18

    const/4 v14, 0x7

    if-ne v7, v14, :cond_19

    .line 733
    :cond_18
    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 734
    const/16 v14, 0x10

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_1

    .line 736
    :cond_19
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 666
    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_1
        0x2d -> :sswitch_0
        0x2e -> :sswitch_3
        0x45 -> :sswitch_2
        0x65 -> :sswitch_2
    .end sparse-switch
.end method

.method private push(I)V
    .locals 4
    .param p1, "newTop"    # I

    .prologue
    const/4 v3, 0x0

    .line 1238
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 1239
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    .line 1240
    .local v0, "newStack":[I
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1241
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 1243
    .end local v0    # "newStack":[I
    :cond_0
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    aput p1, v1, v2

    .line 1244
    return-void
.end method

.method private readEscapeCharacter()C
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    .line 1444
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1445
    const-string v5, "Unterminated escape sequence"

    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 1448
    :cond_0
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v2, v5, v6

    .line 1449
    .local v2, "escaped":C
    sparse-switch v2, :sswitch_data_0

    :goto_0
    move v4, v2

    .line 1496
    :goto_1
    return v4

    .line 1451
    :sswitch_0
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v5, v5, 0x4

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-le v5, v6, :cond_1

    invoke-direct {p0, v10}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1452
    const-string v5, "Unterminated escape sequence"

    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 1455
    :cond_1
    const/4 v4, 0x0

    .line 1456
    .local v4, "result":C
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .local v3, "i":I
    add-int/lit8 v1, v3, 0x4

    .local v1, "end":I
    :goto_2
    if-ge v3, v1, :cond_5

    .line 1457
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    aget-char v0, v5, v3

    .line 1458
    .local v0, "c":C
    shl-int/lit8 v5, v4, 0x4

    int-to-char v4, v5

    .line 1459
    const/16 v5, 0x30

    if-lt v0, v5, :cond_2

    const/16 v5, 0x39

    if-gt v0, v5, :cond_2

    .line 1460
    add-int/lit8 v5, v0, -0x30

    add-int/2addr v5, v4

    int-to-char v4, v5

    .line 1456
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1461
    :cond_2
    const/16 v5, 0x61

    if-lt v0, v5, :cond_3

    const/16 v5, 0x66

    if-gt v0, v5, :cond_3

    .line 1462
    add-int/lit8 v5, v0, -0x61

    add-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v4

    int-to-char v4, v5

    goto :goto_3

    .line 1463
    :cond_3
    const/16 v5, 0x41

    if-lt v0, v5, :cond_4

    const/16 v5, 0x46

    if-gt v0, v5, :cond_4

    .line 1464
    add-int/lit8 v5, v0, -0x41

    add-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v4

    int-to-char v4, v5

    goto :goto_3

    .line 1466
    :cond_4
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\\u"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v9, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {v7, v8, v9, v10}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1469
    .end local v0    # "c":C
    :cond_5
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_1

    .line 1473
    .end local v1    # "end":I
    .end local v3    # "i":I
    .end local v4    # "result":C
    :sswitch_1
    const/16 v4, 0x9

    goto :goto_1

    .line 1476
    :sswitch_2
    const/16 v4, 0x8

    goto :goto_1

    .line 1479
    :sswitch_3
    const/16 v4, 0xa

    goto/16 :goto_1

    .line 1482
    :sswitch_4
    const/16 v4, 0xd

    goto/16 :goto_1

    .line 1485
    :sswitch_5
    const/16 v4, 0xc

    goto/16 :goto_1

    .line 1488
    :sswitch_6
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1489
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    goto/16 :goto_0

    .line 1449
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_6
        0x62 -> :sswitch_2
        0x66 -> :sswitch_5
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method private skipQuotedValue(C)V
    .locals 6
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 1080
    .local v0, "buffer":[C
    :cond_0
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1081
    .local v3, "p":I
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .local v2, "l":I
    move v4, v3

    .line 1083
    .end local v3    # "p":I
    .local v4, "p":I
    :goto_0
    if-ge v4, v2, :cond_4

    .line 1084
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    aget-char v1, v0, v4

    .line 1085
    .local v1, "c":I
    if-ne v1, p1, :cond_1

    .line 1086
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1087
    return-void

    .line 1088
    :cond_1
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_3

    .line 1089
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1090
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->readEscapeCharacter()C

    .line 1091
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1092
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    :cond_2
    :goto_1
    move v4, v3

    .line 1097
    .end local v3    # "p":I
    .restart local v4    # "p":I
    goto :goto_0

    .line 1093
    .end local v4    # "p":I
    .restart local v3    # "p":I
    :cond_3
    const/16 v5, 0xa

    if-ne v1, v5, :cond_2

    .line 1094
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1095
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    goto :goto_1

    .line 1098
    .end local v1    # "c":I
    .end local v3    # "p":I
    .restart local v4    # "p":I
    :cond_4
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1099
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1100
    const-string v5, "Unterminated string"

    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5
.end method

.method private skipTo(Ljava/lang/String;)Z
    .locals 3
    .param p1, "toFind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1413
    :goto_0
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-le v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1414
    :cond_0
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v1, v1, v2

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 1415
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1416
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1413
    :cond_1
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_0

    .line 1419
    :cond_2
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1420
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1419
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1424
    :cond_3
    const/4 v1, 0x1

    .line 1426
    .end local v0    # "c":I
    :goto_2
    return v1

    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private skipToEndOfLine()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1396
    :cond_0
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1397
    :cond_1
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v1, v2

    .line 1398
    .local v0, "c":C
    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 1399
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1400
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1406
    .end local v0    # "c":C
    :cond_2
    :goto_0
    return-void

    .line 1402
    .restart local v0    # "c":C
    :cond_3
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method private skipUnquotedValue()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1105
    :cond_0
    const/4 v0, 0x0

    .line 1106
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ge v1, v2, :cond_1

    .line 1107
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 1106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1113
    :sswitch_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1125
    :sswitch_1
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1131
    :goto_1
    return-void

    .line 1129
    :cond_1
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1130
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1107
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private syntaxError(Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1505
    new-instance v0, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public beginArray()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 331
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 332
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 334
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 335
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 336
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 341
    return-void

    .line 338
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected BEGIN_ARRAY but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public beginObject()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 367
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 368
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 370
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 371
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 372
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 377
    return-void

    .line 374
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected BEGIN_OBJECT but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1193
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1194
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    const/16 v1, 0x8

    aput v1, v0, v2

    .line 1195
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 1196
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 1197
    return-void
.end method

.method public endArray()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 349
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 350
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 352
    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 353
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 354
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 359
    return-void

    .line 356
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected END_ARRAY but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public endObject()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 385
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 386
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 388
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 389
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 390
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 395
    return-void

    .line 392
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected END_OBJECT but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 402
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 403
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 405
    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isLenient()Z
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    return v0
.end method

.method public nextBoolean()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 836
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 837
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 838
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 840
    :cond_0
    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 841
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 842
    const/4 v1, 0x1

    .line 845
    :goto_0
    return v1

    .line 843
    :cond_1
    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    .line 844
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto :goto_0

    .line 847
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a boolean but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextDouble()D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xb

    const/16 v4, 0x8

    const/4 v7, 0x0

    .line 881
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 882
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 883
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 886
    :cond_0
    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 887
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 888
    iget-wide v4, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    long-to-double v2, v4

    .line 911
    :goto_0
    return-wide v2

    .line 891
    :cond_1
    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 892
    new-instance v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v1, v4, v5, v6}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 893
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 903
    :cond_2
    :goto_1
    iput v8, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 904
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 905
    .local v2, "result":D
    iget-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-nez v1, :cond_9

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 906
    :cond_3
    new-instance v1, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JSON forbids NaN and infinities: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at line "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 894
    .end local v2    # "result":D
    :cond_4
    if-eq v0, v4, :cond_5

    const/16 v1, 0x9

    if-ne v0, v1, :cond_7

    .line 895
    :cond_5
    if-ne v0, v4, :cond_6

    const/16 v1, 0x27

    :goto_2
    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const/16 v1, 0x22

    goto :goto_2

    .line 896
    :cond_7
    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    .line 897
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_1

    .line 898
    :cond_8
    if-eq v0, v8, :cond_2

    .line 899
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected a double but was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at line "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 909
    .restart local v2    # "result":D
    :cond_9
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 910
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_0
.end method

.method public nextInt()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v10, 0x0

    .line 1144
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1145
    .local v2, "p":I
    if-nez v2, :cond_0

    .line 1146
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v2

    .line 1150
    :cond_0
    const/16 v5, 0xf

    if-ne v2, v5, :cond_2

    .line 1151
    iget-wide v6, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    long-to-int v3, v6

    .line 1152
    .local v3, "result":I
    iget-wide v6, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    int-to-long v8, v3

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1

    .line 1153
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected an int but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " column "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1156
    :cond_1
    iput v10, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    move v4, v3

    .line 1186
    .end local v3    # "result":I
    .local v4, "result":I
    :goto_0
    return v4

    .line 1160
    .end local v4    # "result":I
    :cond_2
    const/16 v5, 0x10

    if-ne v2, v5, :cond_3

    .line 1161
    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v8, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v5, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V

    iput-object v5, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1162
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1177
    :goto_1
    const/16 v5, 0xb

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1178
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 1179
    .local v0, "asDouble":D
    double-to-int v3, v0

    .line 1180
    .restart local v3    # "result":I
    int-to-double v6, v3

    cmpl-double v5, v6, v0

    if-eqz v5, :cond_7

    .line 1181
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected an int but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " column "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1163
    .end local v0    # "asDouble":D
    .end local v3    # "result":I
    :cond_3
    if-eq v2, v6, :cond_4

    const/16 v5, 0x9

    if-ne v2, v5, :cond_6

    .line 1164
    :cond_4
    if-ne v2, v6, :cond_5

    const/16 v5, 0x27

    :goto_2
    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1166
    :try_start_0
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1167
    .restart local v3    # "result":I
    const/4 v5, 0x0

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v3

    .line 1168
    .end local v3    # "result":I
    .restart local v4    # "result":I
    goto :goto_0

    .line 1164
    .end local v4    # "result":I
    :cond_5
    const/16 v5, 0x22

    goto :goto_2

    .line 1173
    :cond_6
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected an int but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " column "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1184
    .restart local v0    # "asDouble":D
    .restart local v3    # "result":I
    :cond_7
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1185
    iput v10, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    move v4, v3

    .line 1186
    .end local v3    # "result":I
    .restart local v4    # "result":I
    goto/16 :goto_0

    .line 1169
    .end local v0    # "asDouble":D
    .end local v4    # "result":I
    :catch_0
    move-exception v5

    goto/16 :goto_1
.end method

.method public nextLong()J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v9, 0x0

    .line 925
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 926
    .local v2, "p":I
    if-nez v2, :cond_0

    .line 927
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v2

    .line 930
    :cond_0
    const/16 v3, 0xf

    if-ne v2, v3, :cond_1

    .line 931
    iput v9, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 932
    iget-wide v4, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    .line 961
    :goto_0
    return-wide v4

    .line 935
    :cond_1
    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    .line 936
    new-instance v3, Ljava/lang/String;

    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v8, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v3, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V

    iput-object v3, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 937
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v3, v6

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 952
    :goto_1
    const/16 v3, 0xb

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 953
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 954
    .local v0, "asDouble":D
    double-to-long v4, v0

    .line 955
    .local v4, "result":J
    long-to-double v6, v4

    cmpl-double v3, v6, v0

    if-eqz v3, :cond_6

    .line 956
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected a long but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " column "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 938
    .end local v0    # "asDouble":D
    .end local v4    # "result":J
    :cond_2
    if-eq v2, v6, :cond_3

    const/16 v3, 0x9

    if-ne v2, v3, :cond_5

    .line 939
    :cond_3
    if-ne v2, v6, :cond_4

    const/16 v3, 0x27

    :goto_2
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 941
    :try_start_0
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 942
    .restart local v4    # "result":J
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 944
    .end local v4    # "result":J
    :catch_0
    move-exception v3

    goto :goto_1

    .line 939
    :cond_4
    const/16 v3, 0x22

    goto :goto_2

    .line 948
    :cond_5
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected a long but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " column "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 959
    .restart local v0    # "asDouble":D
    .restart local v4    # "result":J
    :cond_6
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 960
    iput v9, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_0
.end method

.method public nextName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 773
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 774
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 775
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 778
    :cond_0
    const/16 v2, 0xe

    if-ne v0, v2, :cond_1

    .line 779
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    .line 788
    .local v1, "result":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 789
    return-object v1

    .line 780
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    const/16 v2, 0xc

    if-ne v0, v2, :cond_2

    .line 781
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 782
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    const/16 v2, 0xd

    if-ne v0, v2, :cond_3

    .line 783
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 785
    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected a name but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " column "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public nextNull()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 859
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 860
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 861
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 863
    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 864
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 869
    return-void

    .line 866
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected null but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 801
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 802
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 803
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 806
    :cond_0
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 807
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    .line 824
    .local v1, "result":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 825
    return-object v1

    .line 808
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    .line 809
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 810
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    const/16 v2, 0x9

    if-ne v0, v2, :cond_3

    .line 811
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 812
    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    const/16 v2, 0xb

    if-ne v0, v2, :cond_4

    .line 813
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 814
    .restart local v1    # "result":Ljava/lang/String;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_0

    .line 815
    .end local v1    # "result":Ljava/lang/String;
    :cond_4
    const/16 v2, 0xf

    if-ne v0, v2, :cond_5

    .line 816
    iget-wide v2, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 817
    .end local v1    # "result":Ljava/lang/String;
    :cond_5
    const/16 v2, 0x10

    if-ne v0, v2, :cond_6

    .line 818
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    .line 819
    .restart local v1    # "result":Ljava/lang/String;
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_0

    .line 821
    .end local v1    # "result":Ljava/lang/String;
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected a string but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " column "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public peek()Lcom/google/gson/stream/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 412
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 413
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 414
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 417
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 446
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 419
    :pswitch_0
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    .line 444
    :goto_0
    return-object v1

    .line 421
    :pswitch_1
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    .line 423
    :pswitch_2
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    .line 425
    :pswitch_3
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    .line 429
    :pswitch_4
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    .line 432
    :pswitch_5
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    .line 434
    :pswitch_6
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    .line 439
    :pswitch_7
    sget-object v1, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    .line 442
    :pswitch_8
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    .line 444
    :pswitch_9
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    .line 417
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public final setLenient(Z)V
    .locals 0
    .param p1, "lenient"    # Z

    .prologue
    .line 315
    iput-boolean p1, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    .line 316
    return-void
.end method

.method public skipValue()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 1205
    const/4 v0, 0x0

    .line 1207
    .local v0, "count":I
    :cond_0
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1208
    .local v1, "p":I
    if-nez v1, :cond_1

    .line 1209
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v1

    .line 1212
    :cond_1
    if-ne v1, v5, :cond_3

    .line 1213
    invoke-direct {p0, v4}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 1214
    add-int/lit8 v0, v0, 0x1

    .line 1233
    :cond_2
    :goto_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1234
    if-nez v0, :cond_0

    .line 1235
    return-void

    .line 1215
    :cond_3
    if-ne v1, v4, :cond_4

    .line 1216
    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 1217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1218
    :cond_4
    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 1219
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 1220
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1221
    :cond_5
    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 1222
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 1223
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1224
    :cond_6
    const/16 v2, 0xe

    if-eq v1, v2, :cond_7

    const/16 v2, 0xa

    if-ne v1, v2, :cond_8

    .line 1225
    :cond_7
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipUnquotedValue()V

    goto :goto_0

    .line 1226
    :cond_8
    const/16 v2, 0x8

    if-eq v1, v2, :cond_9

    const/16 v2, 0xc

    if-ne v1, v2, :cond_a

    .line 1227
    :cond_9
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    goto :goto_0

    .line 1228
    :cond_a
    const/16 v2, 0x9

    if-eq v1, v2, :cond_b

    const/16 v2, 0xd

    if-ne v1, v2, :cond_c

    .line 1229
    :cond_b
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    goto :goto_0

    .line 1230
    :cond_c
    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    .line 1231
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
