.class public final Lcom/fasterxml/jackson/core/Base64Variant;
.super Ljava/lang/Object;
.source "Base64Variant.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BASE64_VALUE_INVALID:I = -0x1

.field public static final BASE64_VALUE_PADDING:I = -0x2

.field private static final INT_SPACE:I = 0x20

.field static final PADDING_CHAR_NONE:C = '\u0000'

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final transient _asciiToBase64:[I

.field private final transient _base64ToAsciiB:[B

.field private final transient _base64ToAsciiC:[C

.field protected final transient _maxLineLength:I

.field protected final _name:Ljava/lang/String;

.field protected final transient _paddingChar:C

.field protected final transient _usesPadding:Z


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/lang/String;I)V
    .locals 6
    .param p1, "base"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "maxLineLength"    # I

    .prologue
    .line 146
    iget-boolean v3, p1, Lcom/fasterxml/jackson/core/Base64Variant;->_usesPadding:Z

    iget-char v4, p1, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/Base64Variant;-><init>(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/lang/String;ZCI)V

    .line 147
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/lang/String;ZCI)V
    .locals 6
    .param p1, "base"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "usesPadding"    # Z
    .param p4, "paddingChar"    # C
    .param p5, "maxLineLength"    # I

    .prologue
    const/16 v4, 0x40

    const/4 v5, 0x0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/16 v3, 0x80

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    .line 61
    new-array v3, v4, [C

    iput-object v3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    .line 67
    new-array v3, v4, [B

    iput-object v3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    .line 156
    iput-object p2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    .line 157
    iget-object v0, p1, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    .line 158
    .local v0, "srcB":[B
    iget-object v3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    array-length v4, v0

    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    iget-object v1, p1, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    .line 160
    .local v1, "srcC":[C
    iget-object v3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    array-length v4, v1

    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    iget-object v2, p1, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    .line 162
    .local v2, "srcV":[I
    iget-object v3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    array-length v4, v2

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_usesPadding:Z

    .line 165
    iput-char p4, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    .line 166
    iput p5, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_maxLineLength:I

    .line 167
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZCI)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "base64Alphabet"    # Ljava/lang/String;
    .param p3, "usesPadding"    # Z
    .param p4, "paddingChar"    # C
    .param p5, "maxLineLength"    # I

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x40

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/16 v3, 0x80

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    .line 61
    new-array v3, v4, [C

    iput-object v3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    .line 67
    new-array v3, v4, [B

    iput-object v3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    .line 111
    iput-object p1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    .line 112
    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_usesPadding:Z

    .line 113
    iput-char p4, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    .line 114
    iput p5, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_maxLineLength:I

    .line 119
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 120
    .local v1, "alphaLen":I
    if-eq v1, v4, :cond_0

    .line 121
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Base64Alphabet length must be exactly 64 (was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 125
    :cond_0
    iget-object v3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    invoke-virtual {p2, v5, v1, v3, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 126
    iget-object v3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    const/4 v4, -0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 127
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 128
    iget-object v3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    aget-char v0, v3, v2

    .line 129
    .local v0, "alpha":C
    iget-object v3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    int-to-byte v4, v0

    aput-byte v4, v3, v2

    .line 130
    iget-object v3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    aput v2, v3, v0

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    .end local v0    # "alpha":C
    :cond_1
    if-eqz p3, :cond_2

    .line 135
    iget-object v3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    const/4 v4, -0x2

    aput v4, v3, p4

    .line 137
    :cond_2
    return-void
.end method


# virtual methods
.method protected _reportBase64EOF()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 590
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected end-of-String in base64 content"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected _reportInvalidBase64(CILjava/lang/String;)V
    .locals 3
    .param p1, "ch"    # C
    .param p2, "bindex"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 573
    const/16 v1, 0x20

    if-gt p1, v1, :cond_1

    .line 574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal white space character (code 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") as character #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of 4-char base64 unit: can only used between units"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, "base":Ljava/lang/String;
    :goto_0
    if-eqz p3, :cond_0

    .line 584
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 586
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 575
    .end local v0    # "base":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPaddingChar(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 576
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected padding character (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->getPaddingChar()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\') as character #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of 4-char base64 unit: padding only legal as 3rd or 4th character"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "base":Ljava/lang/String;
    goto :goto_0

    .line 577
    .end local v0    # "base":Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Ljava/lang/Character;->isDefined(C)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 579
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character (code 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in base64 content"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "base":Ljava/lang/String;
    goto :goto_0

    .line 581
    .end local v0    # "base":Ljava/lang/String;
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (code 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in base64 content"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "base":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public decode(Ljava/lang/String;Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;)V
    .locals 11
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "builder"    # Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v9, -0x2

    const/4 v8, 0x0

    .line 452
    const/4 v4, 0x0

    .line 453
    .local v4, "ptr":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 456
    .local v3, "len":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 460
    :goto_1
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "ptr":I
    .local v5, "ptr":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 461
    .local v1, "ch":C
    if-lt v5, v3, :cond_1

    move v4, v5

    .line 537
    .end local v1    # "ch":C
    .end local v5    # "ptr":I
    .restart local v4    # "ptr":I
    :cond_0
    :goto_2
    return-void

    .line 464
    .end local v4    # "ptr":I
    .restart local v1    # "ch":C
    .restart local v5    # "ptr":I
    :cond_1
    const/16 v6, 0x20

    if-le v1, v6, :cond_f

    .line 465
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v0

    .line 466
    .local v0, "bits":I
    if-gez v0, :cond_2

    .line 467
    const/4 v6, 0x0

    invoke-virtual {p0, v1, v6, v8}, Lcom/fasterxml/jackson/core/Base64Variant;->_reportInvalidBase64(CILjava/lang/String;)V

    .line 469
    :cond_2
    move v2, v0

    .line 471
    .local v2, "decodedData":I
    if-lt v5, v3, :cond_3

    .line 472
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->_reportBase64EOF()V

    .line 474
    :cond_3
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "ptr":I
    .restart local v4    # "ptr":I
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 475
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v0

    .line 476
    if-gez v0, :cond_4

    .line 477
    const/4 v6, 0x1

    invoke-virtual {p0, v1, v6, v8}, Lcom/fasterxml/jackson/core/Base64Variant;->_reportInvalidBase64(CILjava/lang/String;)V

    .line 479
    :cond_4
    shl-int/lit8 v6, v2, 0x6

    or-int v2, v6, v0

    .line 481
    if-lt v4, v3, :cond_6

    .line 483
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v6

    if-nez v6, :cond_5

    .line 484
    shr-int/lit8 v2, v2, 0x4

    .line 485
    invoke-virtual {p2, v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    goto :goto_2

    .line 488
    :cond_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->_reportBase64EOF()V

    .line 490
    :cond_6
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "ptr":I
    .restart local v5    # "ptr":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 491
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v0

    .line 494
    if-gez v0, :cond_a

    .line 495
    if-eq v0, v9, :cond_7

    .line 496
    const/4 v6, 0x2

    invoke-virtual {p0, v1, v6, v8}, Lcom/fasterxml/jackson/core/Base64Variant;->_reportInvalidBase64(CILjava/lang/String;)V

    .line 499
    :cond_7
    if-lt v5, v3, :cond_8

    .line 500
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->_reportBase64EOF()V

    .line 502
    :cond_8
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "ptr":I
    .restart local v4    # "ptr":I
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 503
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPaddingChar(C)Z

    move-result v6

    if-nez v6, :cond_9

    .line 504
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "expected padding character \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->getPaddingChar()C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v1, v10, v6}, Lcom/fasterxml/jackson/core/Base64Variant;->_reportInvalidBase64(CILjava/lang/String;)V

    .line 507
    :cond_9
    shr-int/lit8 v2, v2, 0x4

    .line 508
    invoke-virtual {p2, v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    goto/16 :goto_0

    .line 512
    .end local v4    # "ptr":I
    .restart local v5    # "ptr":I
    :cond_a
    shl-int/lit8 v6, v2, 0x6

    or-int v2, v6, v0

    .line 514
    if-lt v5, v3, :cond_c

    .line 516
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v6

    if-nez v6, :cond_b

    .line 517
    shr-int/lit8 v2, v2, 0x2

    .line 518
    invoke-virtual {p2, v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->appendTwoBytes(I)V

    move v4, v5

    .line 519
    .end local v5    # "ptr":I
    .restart local v4    # "ptr":I
    goto/16 :goto_2

    .line 521
    .end local v4    # "ptr":I
    .restart local v5    # "ptr":I
    :cond_b
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->_reportBase64EOF()V

    .line 523
    :cond_c
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "ptr":I
    .restart local v4    # "ptr":I
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 524
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v0

    .line 525
    if-gez v0, :cond_e

    .line 526
    if-eq v0, v9, :cond_d

    .line 527
    invoke-virtual {p0, v1, v10, v8}, Lcom/fasterxml/jackson/core/Base64Variant;->_reportInvalidBase64(CILjava/lang/String;)V

    .line 529
    :cond_d
    shr-int/lit8 v2, v2, 0x2

    .line 530
    invoke-virtual {p2, v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->appendTwoBytes(I)V

    goto/16 :goto_0

    .line 533
    :cond_e
    shl-int/lit8 v6, v2, 0x6

    or-int v2, v6, v0

    .line 534
    invoke-virtual {p2, v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->appendThreeBytes(I)V

    goto/16 :goto_0

    .end local v0    # "bits":I
    .end local v2    # "decodedData":I
    .end local v4    # "ptr":I
    .restart local v5    # "ptr":I
    :cond_f
    move v4, v5

    .end local v5    # "ptr":I
    .restart local v4    # "ptr":I
    goto/16 :goto_1
.end method

.method public decode(Ljava/lang/String;)[B
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 432
    new-instance v0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;-><init>()V

    .line 433
    .local v0, "b":Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/Base64Variant;->decode(Ljava/lang/String;Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;)V

    .line 434
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public decodeBase64Byte(B)I
    .locals 2
    .param p1, "b"    # B

    .prologue
    .line 221
    move v0, p1

    .line 222
    .local v0, "ch":I
    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    aget v1, v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public decodeBase64Char(C)I
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 210
    move v0, p1

    .line 211
    .local v0, "ch":I
    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    aget v1, v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public decodeBase64Char(I)I
    .locals 1
    .param p1, "ch"    # I

    .prologue
    .line 216
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    aget v0, v0, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public encode([B)Ljava/lang/String;
    .locals 1
    .param p1, "input"    # [B

    .prologue
    .line 359
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/Base64Variant;->encode([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode([BZ)Ljava/lang/String;
    .locals 12
    .param p1, "input"    # [B
    .param p2, "addQuotes"    # Z

    .prologue
    const/16 v11, 0x22

    .line 372
    array-length v2, p1

    .line 376
    .local v2, "inputEnd":I
    shr-int/lit8 v9, v2, 0x2

    add-int/2addr v9, v2

    shr-int/lit8 v10, v2, 0x3

    add-int v6, v9, v10

    .line 377
    .local v6, "outputLen":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 379
    .local v8, "sb":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_0

    .line 380
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 383
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v9

    shr-int/lit8 v1, v9, 0x2

    .line 386
    .local v1, "chunksBeforeLF":I
    const/4 v4, 0x0

    .line 387
    .local v4, "inputPtr":I
    add-int/lit8 v7, v2, -0x3

    .local v7, "safeInputEnd":I
    move v5, v4

    .line 389
    .end local v4    # "inputPtr":I
    .local v5, "inputPtr":I
    :goto_0
    if-gt v5, v7, :cond_2

    .line 391
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    aget-byte v9, p1, v5

    shl-int/lit8 v0, v9, 0x8

    .line 392
    .local v0, "b24":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "inputPtr":I
    .restart local v5    # "inputPtr":I
    aget-byte v9, p1, v4

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v0, v9

    .line 393
    shl-int/lit8 v9, v0, 0x8

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    aget-byte v10, p1, v5

    and-int/lit16 v10, v10, 0xff

    or-int v0, v9, v10

    .line 394
    invoke-virtual {p0, v8, v0}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Chunk(Ljava/lang/StringBuilder;I)V

    .line 395
    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_1

    .line 397
    const/16 v9, 0x5c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 398
    const/16 v9, 0x6e

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v9

    shr-int/lit8 v1, v9, 0x2

    :cond_1
    move v5, v4

    .line 401
    .end local v4    # "inputPtr":I
    .restart local v5    # "inputPtr":I
    goto :goto_0

    .line 404
    .end local v0    # "b24":I
    :cond_2
    sub-int v3, v2, v5

    .line 405
    .local v3, "inputLeft":I
    if-lez v3, :cond_5

    .line 406
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    aget-byte v9, p1, v5

    shl-int/lit8 v0, v9, 0x10

    .line 407
    .restart local v0    # "b24":I
    const/4 v9, 0x2

    if-ne v3, v9, :cond_3

    .line 408
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "inputPtr":I
    .restart local v5    # "inputPtr":I
    aget-byte v9, p1, v4

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v0, v9

    move v4, v5

    .line 410
    .end local v5    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    :cond_3
    invoke-virtual {p0, v8, v0, v3}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Partial(Ljava/lang/StringBuilder;II)V

    .line 413
    .end local v0    # "b24":I
    :goto_1
    if-eqz p2, :cond_4

    .line 414
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 416
    :cond_4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .end local v4    # "inputPtr":I
    .restart local v5    # "inputPtr":I
    :cond_5
    move v4, v5

    .end local v5    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    goto :goto_1
.end method

.method public encodeBase64BitsAsByte(I)B
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 302
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public encodeBase64BitsAsChar(I)C
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 236
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public encodeBase64Chunk(I[BI)I
    .locals 3
    .param p1, "b24"    # I
    .param p2, "buffer"    # [B
    .param p3, "ptr"    # I

    .prologue
    .line 311
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "ptr":I
    .local v0, "ptr":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v2, p1, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-byte v1, v1, v2

    aput-byte v1, p2, p3

    .line 312
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "ptr":I
    .restart local p3    # "ptr":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v2, p1, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v1, v1, v2

    aput-byte v1, p2, v0

    .line 313
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "ptr":I
    .restart local v0    # "ptr":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-byte v1, v1, v2

    aput-byte v1, p2, p3

    .line 314
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "ptr":I
    .restart local p3    # "ptr":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    and-int/lit8 v2, p1, 0x3f

    aget-byte v1, v1, v2

    aput-byte v1, p2, v0

    .line 315
    return p3
.end method

.method public encodeBase64Chunk(I[CI)I
    .locals 3
    .param p1, "b24"    # I
    .param p2, "buffer"    # [C
    .param p3, "ptr"    # I

    .prologue
    .line 245
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "ptr":I
    .local v0, "ptr":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v2, p1, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    aput-char v1, p2, p3

    .line 246
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "ptr":I
    .restart local p3    # "ptr":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v2, p1, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    aput-char v1, p2, v0

    .line 247
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "ptr":I
    .restart local v0    # "ptr":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    aput-char v1, p2, p3

    .line 248
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "ptr":I
    .restart local p3    # "ptr":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    and-int/lit8 v2, p1, 0x3f

    aget-char v1, v1, v2

    aput-char v1, p2, v0

    .line 249
    return p3
.end method

.method public encodeBase64Chunk(Ljava/lang/StringBuilder;I)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "b24"    # I

    .prologue
    .line 254
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0x12

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 255
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0xc

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 257
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    and-int/lit8 v1, p2, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    return-void
.end method

.method public encodeBase64Partial(II[BI)I
    .locals 5
    .param p1, "bits"    # I
    .param p2, "outputBytes"    # I
    .param p3, "buffer"    # [B
    .param p4, "outPtr"    # I

    .prologue
    const/4 v4, 0x2

    .line 328
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "outPtr":I
    .local v0, "outPtr":I
    iget-object v2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v3, p1, 0x12

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, p4

    .line 329
    add-int/lit8 p4, v0, 0x1

    .end local v0    # "outPtr":I
    .restart local p4    # "outPtr":I
    iget-object v2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v3, p1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v0

    .line 330
    iget-boolean v2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_usesPadding:Z

    if-eqz v2, :cond_2

    .line 331
    iget-char v2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    int-to-byte v1, v2

    .line 332
    .local v1, "pb":B
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "outPtr":I
    .restart local v0    # "outPtr":I
    if-ne p2, v4, :cond_1

    iget-object v2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    :goto_0
    aput-byte v2, p3, p4

    .line 334
    add-int/lit8 p4, v0, 0x1

    .end local v0    # "outPtr":I
    .restart local p4    # "outPtr":I
    aput-byte v1, p3, v0

    .line 340
    .end local v1    # "pb":B
    :cond_0
    :goto_1
    return p4

    .end local p4    # "outPtr":I
    .restart local v0    # "outPtr":I
    .restart local v1    # "pb":B
    :cond_1
    move v2, v1

    .line 332
    goto :goto_0

    .line 336
    .end local v0    # "outPtr":I
    .end local v1    # "pb":B
    .restart local p4    # "outPtr":I
    :cond_2
    if-ne p2, v4, :cond_0

    .line 337
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "outPtr":I
    .restart local v0    # "outPtr":I
    iget-object v2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, p4

    move p4, v0

    .end local v0    # "outPtr":I
    .restart local p4    # "outPtr":I
    goto :goto_1
.end method

.method public encodeBase64Partial(II[CI)I
    .locals 4
    .param p1, "bits"    # I
    .param p2, "outputBytes"    # I
    .param p3, "buffer"    # [C
    .param p4, "outPtr"    # I

    .prologue
    const/4 v3, 0x2

    .line 270
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "outPtr":I
    .local v0, "outPtr":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v2, p1, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    aput-char v1, p3, p4

    .line 271
    add-int/lit8 p4, v0, 0x1

    .end local v0    # "outPtr":I
    .restart local p4    # "outPtr":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v2, p1, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    aput-char v1, p3, v0

    .line 272
    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_usesPadding:Z

    if-eqz v1, :cond_2

    .line 273
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "outPtr":I
    .restart local v0    # "outPtr":I
    if-ne p2, v3, :cond_1

    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    :goto_0
    aput-char v1, p3, p4

    .line 275
    add-int/lit8 p4, v0, 0x1

    .end local v0    # "outPtr":I
    .restart local p4    # "outPtr":I
    iget-char v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    aput-char v1, p3, v0

    .line 281
    :cond_0
    :goto_1
    return p4

    .line 273
    .end local p4    # "outPtr":I
    .restart local v0    # "outPtr":I
    :cond_1
    iget-char v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    goto :goto_0

    .line 277
    .end local v0    # "outPtr":I
    .restart local p4    # "outPtr":I
    :cond_2
    if-ne p2, v3, :cond_0

    .line 278
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "outPtr":I
    .restart local v0    # "outPtr":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    aput-char v1, p3, p4

    move p4, v0

    .end local v0    # "outPtr":I
    .restart local p4    # "outPtr":I
    goto :goto_1
.end method

.method public encodeBase64Partial(Ljava/lang/StringBuilder;II)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "bits"    # I
    .param p3, "outputBytes"    # I

    .prologue
    const/4 v2, 0x2

    .line 286
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0x12

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 287
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0xc

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 288
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_usesPadding:Z

    if-eqz v0, :cond_2

    .line 289
    if-ne p3, v2, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 291
    iget-char v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 297
    :cond_0
    :goto_1
    return-void

    .line 289
    :cond_1
    iget-char v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    goto :goto_0

    .line 293
    :cond_2
    if-ne p3, v2, :cond_0

    .line 294
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 551
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMaxLineLength()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_maxLineLength:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPaddingByte()B
    .locals 1

    .prologue
    .line 195
    iget-char v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    int-to-byte v0, v0

    return v0
.end method

.method public getPaddingChar()C
    .locals 1

    .prologue
    .line 194
    iget-char v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    invoke-static {v0}, Lcom/fasterxml/jackson/core/Base64Variants;->valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/core/Base64Variant;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public usesPadding()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_usesPadding:Z

    return v0
.end method

.method public usesPaddingChar(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 192
    iget-char v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public usesPaddingChar(I)Z
    .locals 1
    .param p1, "ch"    # I

    .prologue
    .line 193
    iget-char v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
