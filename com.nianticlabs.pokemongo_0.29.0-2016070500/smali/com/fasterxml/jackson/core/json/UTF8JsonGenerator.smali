.class public Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;
.super Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;
.source "UTF8JsonGenerator.java"


# static fields
.field private static final BYTE_0:B = 0x30t

.field private static final BYTE_BACKSLASH:B = 0x5ct

.field private static final BYTE_COLON:B = 0x3at

.field private static final BYTE_COMMA:B = 0x2ct

.field private static final BYTE_LBRACKET:B = 0x5bt

.field private static final BYTE_LCURLY:B = 0x7bt

.field private static final BYTE_QUOTE:B = 0x22t

.field private static final BYTE_RBRACKET:B = 0x5dt

.field private static final BYTE_RCURLY:B = 0x7dt

.field private static final BYTE_u:B = 0x75t

.field private static final FALSE_BYTES:[B

.field static final HEX_CHARS:[B

.field private static final MAX_BYTES_TO_BUFFER:I = 0x200

.field private static final NULL_BYTES:[B

.field private static final TRUE_BYTES:[B


# instance fields
.field protected _bufferRecyclable:Z

.field protected _cfgUnqNames:Z

.field protected _charBuffer:[C

.field protected final _charBufferLength:I

.field protected _entityBuffer:[B

.field protected _outputBuffer:[B

.field protected final _outputEnd:I

.field protected final _outputMaxContiguous:I

.field protected final _outputStream:Ljava/io/OutputStream;

.field protected _outputTail:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 30
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->copyHexBytes()[B

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->HEX_CHARS:[B

    .line 32
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->NULL_BYTES:[B

    .line 33
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->TRUE_BYTES:[B

    .line 34
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->FALSE_BYTES:[B

    return-void

    .line 32
    :array_0
    .array-data 1
        0x6et
        0x75t
        0x6ct
        0x6ct
    .end array-data

    .line 33
    :array_1
    .array-data 1
        0x74t
        0x72t
        0x75t
        0x65t
    .end array-data

    .line 34
    :array_2
    .array-data 1
        0x66t
        0x61t
        0x6ct
        0x73t
        0x65t
    .end array-data
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;ILcom/fasterxml/jackson/core/ObjectCodec;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/core/io/IOContext;
    .param p2, "features"    # I
    .param p3, "codec"    # Lcom/fasterxml/jackson/core/ObjectCodec;
    .param p4, "out"    # Ljava/io/OutputStream;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;ILcom/fasterxml/jackson/core/ObjectCodec;)V

    .line 57
    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 116
    iput-object p4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputStream:Ljava/io/OutputStream;

    .line 117
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_bufferRecyclable:Z

    .line 118
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/io/IOContext;->allocWriteEncodingBuffer()[B

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    .line 119
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    array-length v2, v2

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    .line 125
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    shr-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputMaxContiguous:I

    .line 126
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/io/IOContext;->allocConcatBuffer()[C

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    .line 127
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    array-length v2, v2

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBufferLength:I

    .line 130
    sget-object v2, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->ESCAPE_NON_ASCII:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    const/16 v2, 0x7f

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->setHighestNonEscapedChar(I)Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 133
    :cond_0
    sget-object v2, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {v2, p2}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledIn(I)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgUnqNames:Z

    .line 134
    return-void

    :cond_1
    move v0, v1

    .line 133
    goto :goto_0
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;ILcom/fasterxml/jackson/core/ObjectCodec;Ljava/io/OutputStream;[BIZ)V
    .locals 2
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/core/io/IOContext;
    .param p2, "features"    # I
    .param p3, "codec"    # Lcom/fasterxml/jackson/core/ObjectCodec;
    .param p4, "out"    # Ljava/io/OutputStream;
    .param p5, "outputBuffer"    # [B
    .param p6, "outputOffset"    # I
    .param p7, "bufferRecyclable"    # Z

    .prologue
    const/4 v0, 0x0

    .line 141
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;ILcom/fasterxml/jackson/core/ObjectCodec;)V

    .line 57
    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 142
    iput-object p4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputStream:Ljava/io/OutputStream;

    .line 143
    iput-boolean p7, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_bufferRecyclable:Z

    .line 144
    iput p6, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 145
    iput-object p5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    .line 146
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    array-length v1, v1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    .line 148
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    shr-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputMaxContiguous:I

    .line 149
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/io/IOContext;->allocConcatBuffer()[C

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    .line 150
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    array-length v1, v1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBufferLength:I

    .line 151
    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledIn(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgUnqNames:Z

    .line 152
    return-void
.end method

.method private final _handleLongCustomEscape([BII[BI)I
    .locals 3
    .param p1, "outputBuffer"    # [B
    .param p2, "outputPtr"    # I
    .param p3, "outputEnd"    # I
    .param p4, "raw"    # [B
    .param p5, "remainingChars"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1598
    array-length v0, p4

    .line 1599
    .local v0, "len":I
    add-int v1, p2, v0

    if-le v1, p3, :cond_1

    .line 1600
    iput p2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1601
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1602
    iget p2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1603
    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 1604
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p4, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    move v1, p2

    .line 1615
    :goto_0
    return v1

    .line 1607
    :cond_0
    invoke-static {p4, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1608
    add-int/2addr p2, v0

    .line 1611
    :cond_1
    mul-int/lit8 v1, p5, 0x6

    add-int/2addr v1, p2

    if-le v1, p3, :cond_2

    .line 1612
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1613
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    goto :goto_0

    :cond_2
    move v1, p2

    .line 1615
    goto :goto_0
.end method

.method private final _outputMultiByteChar(II)I
    .locals 4
    .param p1, "ch"    # I
    .param p2, "outputPtr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1946
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    .line 1947
    .local v0, "bbuf":[B
    const v2, 0xd800

    if-lt p1, v2, :cond_0

    const v2, 0xdfff

    if-gt p1, v2, :cond_0

    .line 1948
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "outputPtr":I
    .local v1, "outputPtr":I
    const/16 v2, 0x5c

    aput-byte v2, v0, p2

    .line 1949
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "outputPtr":I
    .restart local p2    # "outputPtr":I
    const/16 v2, 0x75

    aput-byte v2, v0, v1

    .line 1951
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "outputPtr":I
    .restart local v1    # "outputPtr":I
    sget-object v2, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->HEX_CHARS:[B

    shr-int/lit8 v3, p1, 0xc

    and-int/lit8 v3, v3, 0xf

    aget-byte v2, v2, v3

    aput-byte v2, v0, p2

    .line 1952
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "outputPtr":I
    .restart local p2    # "outputPtr":I
    sget-object v2, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->HEX_CHARS:[B

    shr-int/lit8 v3, p1, 0x8

    and-int/lit8 v3, v3, 0xf

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 1953
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "outputPtr":I
    .restart local v1    # "outputPtr":I
    sget-object v2, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->HEX_CHARS:[B

    shr-int/lit8 v3, p1, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-byte v2, v2, v3

    aput-byte v2, v0, p2

    .line 1954
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "outputPtr":I
    .restart local p2    # "outputPtr":I
    sget-object v2, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->HEX_CHARS:[B

    and-int/lit8 v3, p1, 0xf

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 1960
    :goto_0
    return p2

    .line 1956
    :cond_0
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "outputPtr":I
    .restart local v1    # "outputPtr":I
    shr-int/lit8 v2, p1, 0xc

    or-int/lit16 v2, v2, 0xe0

    int-to-byte v2, v2

    aput-byte v2, v0, p2

    .line 1957
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "outputPtr":I
    .restart local p2    # "outputPtr":I
    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1958
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "outputPtr":I
    .restart local v1    # "outputPtr":I
    and-int/lit8 v2, p1, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, p2

    move p2, v1

    .end local v1    # "outputPtr":I
    .restart local p2    # "outputPtr":I
    goto :goto_0
.end method

.method private final _outputRawMultiByteChar(I[CII)I
    .locals 3
    .param p1, "ch"    # I
    .param p2, "cbuf"    # [C
    .param p3, "inputOffset"    # I
    .param p4, "inputLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1904
    const v1, 0xd800

    if-lt p1, v1, :cond_2

    .line 1905
    const v1, 0xdfff

    if-gt p1, v1, :cond_2

    .line 1907
    if-ge p3, p4, :cond_0

    if-nez p2, :cond_1

    .line 1908
    :cond_0
    const-string v1, "Split surrogate on writeRaw() input (last character)"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_reportError(Ljava/lang/String;)V

    .line 1910
    :cond_1
    aget-char v1, p2, p3

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputSurrogates(II)V

    .line 1911
    add-int/lit8 p3, p3, 0x1

    .line 1918
    .end local p3    # "inputOffset":I
    :goto_0
    return p3

    .line 1914
    .restart local p3    # "inputOffset":I
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    .line 1915
    .local v0, "bbuf":[B
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    shr-int/lit8 v2, p1, 0xc

    or-int/lit16 v2, v2, 0xe0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1916
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1917
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    and-int/lit8 v2, p1, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method private final _readMore(Ljava/io/InputStream;[BIII)I
    .locals 7
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "readBuffer"    # [B
    .param p3, "inputPtr"    # I
    .param p4, "inputEnd"    # I
    .param p5, "maxRead"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1867
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    move v4, p3

    .line 1868
    .end local p3    # "inputPtr":I
    .local v4, "inputPtr":I
    :goto_0
    if-ge v4, p4, :cond_0

    .line 1869
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    add-int/lit8 p3, v4, 0x1

    .end local v4    # "inputPtr":I
    .restart local p3    # "inputPtr":I
    aget-byte v6, p2, v4

    aput-byte v6, p2, v2

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    move v4, p3

    .end local p3    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    goto :goto_0

    .line 1871
    :cond_0
    const/4 p3, 0x0

    .line 1872
    .end local v4    # "inputPtr":I
    .restart local p3    # "inputPtr":I
    move p4, v2

    .line 1873
    array-length v6, p2

    invoke-static {p5, v6}, Ljava/lang/Math;->min(II)I

    move-result p5

    .line 1876
    :cond_1
    sub-int v5, p5, p4

    .line 1877
    .local v5, "length":I
    if-nez v5, :cond_2

    :goto_1
    move v3, p4

    .line 1886
    .end local p4    # "inputEnd":I
    .local v3, "inputEnd":I
    :goto_2
    return v3

    .line 1880
    .end local v3    # "inputEnd":I
    .restart local p4    # "inputEnd":I
    :cond_2
    invoke-virtual {p1, p2, p4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 1881
    .local v0, "count":I
    if-gez v0, :cond_3

    move v3, p4

    .line 1882
    .end local p4    # "inputEnd":I
    .restart local v3    # "inputEnd":I
    goto :goto_2

    .line 1884
    .end local v3    # "inputEnd":I
    .restart local p4    # "inputEnd":I
    :cond_3
    add-int/2addr p4, v0

    .line 1885
    const/4 v6, 0x3

    if-lt p4, v6, :cond_1

    goto :goto_1
.end method

.method private final _writeBytes([B)V
    .locals 4
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1093
    array-length v0, p1

    .line 1094
    .local v0, "len":I
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v1, v2, :cond_0

    .line 1095
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1097
    const/16 v1, 0x200

    if-le v0, v1, :cond_0

    .line 1098
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 1104
    :goto_0
    return-void

    .line 1102
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1103
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    goto :goto_0
.end method

.method private final _writeBytes([BII)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1108
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v0, v1, :cond_0

    .line 1109
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1111
    const/16 v0, 0x200

    if-le p3, v0, :cond_0

    .line 1112
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 1118
    :goto_0
    return-void

    .line 1116
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1117
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    goto :goto_0
.end method

.method private final _writeCustomEscape([BILcom/fasterxml/jackson/core/SerializableString;I)I
    .locals 7
    .param p1, "outputBuffer"    # [B
    .param p2, "outputPtr"    # I
    .param p3, "esc"    # Lcom/fasterxml/jackson/core/SerializableString;
    .param p4, "remainingChars"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1584
    invoke-interface {p3}, Lcom/fasterxml/jackson/core/SerializableString;->asUnquotedUTF8()[B

    move-result-object v4

    .line 1585
    .local v4, "raw":[B
    array-length v6, v4

    .line 1586
    .local v6, "len":I
    const/4 v0, 0x6

    if-le v6, v0, :cond_0

    .line 1587
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_handleLongCustomEscape([BII[BI)I

    move-result v0

    .line 1591
    :goto_0
    return v0

    .line 1590
    :cond_0
    const/4 v0, 0x0

    invoke-static {v4, v0, p1, p2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1591
    add-int v0, p2, v6

    goto :goto_0
.end method

.method private final _writeCustomStringSegment2(Ljava/lang/String;II)V
    .locals 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1527
    iget v10, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    sub-int v11, p3, p2

    mul-int/lit8 v11, v11, 0x6

    add-int/2addr v10, v11

    iget v11, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v10, v11, :cond_0

    .line 1528
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1530
    :cond_0
    iget v8, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1532
    .local v8, "outputPtr":I
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    .line 1533
    .local v7, "outputBuffer":[B
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEscapes:[I

    .line 1535
    .local v3, "escCodes":[I
    iget v10, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_maximumNonEscapedChar:I

    if-gtz v10, :cond_1

    const v5, 0xffff

    .line 1536
    .local v5, "maxUnescaped":I
    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    .local v1, "customEscapes":Lcom/fasterxml/jackson/core/io/CharacterEscapes;
    move v9, v8

    .end local v8    # "outputPtr":I
    .local v9, "outputPtr":I
    move v6, p2

    .line 1538
    .end local p2    # "offset":I
    .local v6, "offset":I
    :goto_1
    if-ge v6, p3, :cond_a

    .line 1539
    add-int/lit8 p2, v6, 0x1

    .end local v6    # "offset":I
    .restart local p2    # "offset":I
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1540
    .local v0, "ch":I
    const/16 v10, 0x7f

    if-gt v0, v10, :cond_6

    .line 1541
    aget v10, v3, v0

    if-nez v10, :cond_2

    .line 1542
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    int-to-byte v10, v0

    aput-byte v10, v7, v9

    move v9, v8

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    move v6, p2

    .line 1543
    .end local p2    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_1

    .line 1535
    .end local v0    # "ch":I
    .end local v1    # "customEscapes":Lcom/fasterxml/jackson/core/io/CharacterEscapes;
    .end local v5    # "maxUnescaped":I
    .end local v6    # "offset":I
    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    .restart local p2    # "offset":I
    :cond_1
    iget v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_maximumNonEscapedChar:I

    goto :goto_0

    .line 1545
    .end local v8    # "outputPtr":I
    .restart local v0    # "ch":I
    .restart local v1    # "customEscapes":Lcom/fasterxml/jackson/core/io/CharacterEscapes;
    .restart local v5    # "maxUnescaped":I
    .restart local v9    # "outputPtr":I
    :cond_2
    aget v4, v3, v0

    .line 1546
    .local v4, "escape":I
    if-lez v4, :cond_3

    .line 1547
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    const/16 v10, 0x5c

    aput-byte v10, v7, v9

    .line 1548
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    int-to-byte v10, v4

    aput-byte v10, v7, v8

    move v6, p2

    .end local p2    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_1

    .line 1549
    .end local v6    # "offset":I
    .restart local p2    # "offset":I
    :cond_3
    const/4 v10, -0x2

    if-ne v4, v10, :cond_5

    .line 1550
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/io/CharacterEscapes;->getEscapeSequence(I)Lcom/fasterxml/jackson/core/SerializableString;

    move-result-object v2

    .line 1551
    .local v2, "esc":Lcom/fasterxml/jackson/core/SerializableString;
    if-nez v2, :cond_4

    .line 1552
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid custom escape definitions; custom escape not found for character code 0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", although was supposed to have one"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_reportError(Ljava/lang/String;)V

    .line 1555
    :cond_4
    sub-int v10, p3, p2

    invoke-direct {p0, v7, v9, v2, v10}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeCustomEscape([BILcom/fasterxml/jackson/core/SerializableString;I)I

    move-result v8

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    move v9, v8

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    move v6, p2

    .line 1556
    .end local p2    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_1

    .line 1558
    .end local v2    # "esc":Lcom/fasterxml/jackson/core/SerializableString;
    .end local v6    # "offset":I
    .restart local p2    # "offset":I
    :cond_5
    invoke-direct {p0, v0, v9}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeGenericEscape(II)I

    move-result v8

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    move v9, v8

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    move v6, p2

    .line 1560
    .end local p2    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_1

    .line 1562
    .end local v4    # "escape":I
    .end local v6    # "offset":I
    .restart local p2    # "offset":I
    :cond_6
    if-le v0, v5, :cond_7

    .line 1563
    invoke-direct {p0, v0, v9}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeGenericEscape(II)I

    move-result v8

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    move v9, v8

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    move v6, p2

    .line 1564
    .end local p2    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_1

    .line 1566
    .end local v6    # "offset":I
    .restart local p2    # "offset":I
    :cond_7
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/io/CharacterEscapes;->getEscapeSequence(I)Lcom/fasterxml/jackson/core/SerializableString;

    move-result-object v2

    .line 1567
    .restart local v2    # "esc":Lcom/fasterxml/jackson/core/SerializableString;
    if-eqz v2, :cond_8

    .line 1568
    sub-int v10, p3, p2

    invoke-direct {p0, v7, v9, v2, v10}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeCustomEscape([BILcom/fasterxml/jackson/core/SerializableString;I)I

    move-result v8

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    move v9, v8

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    move v6, p2

    .line 1569
    .end local p2    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_1

    .line 1571
    .end local v6    # "offset":I
    .restart local p2    # "offset":I
    :cond_8
    const/16 v10, 0x7ff

    if-gt v0, v10, :cond_9

    .line 1572
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    shr-int/lit8 v10, v0, 0x6

    or-int/lit16 v10, v10, 0xc0

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    .line 1573
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    and-int/lit8 v10, v0, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v7, v8

    move v8, v9

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    :goto_2
    move v9, v8

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    move v6, p2

    .line 1577
    .end local p2    # "offset":I
    .restart local v6    # "offset":I
    goto/16 :goto_1

    .line 1575
    .end local v6    # "offset":I
    .restart local p2    # "offset":I
    :cond_9
    invoke-direct {p0, v0, v9}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputMultiByteChar(II)I

    move-result v8

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    goto :goto_2

    .line 1578
    .end local v0    # "ch":I
    .end local v2    # "esc":Lcom/fasterxml/jackson/core/SerializableString;
    .end local v8    # "outputPtr":I
    .end local p2    # "offset":I
    .restart local v6    # "offset":I
    .restart local v9    # "outputPtr":I
    :cond_a
    iput v9, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1579
    return-void
.end method

.method private final _writeCustomStringSegment2([CII)V
    .locals 12
    .param p1, "cbuf"    # [C
    .param p2, "offset"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1470
    iget v10, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    sub-int v11, p3, p2

    mul-int/lit8 v11, v11, 0x6

    add-int/2addr v10, v11

    iget v11, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v10, v11, :cond_0

    .line 1471
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1473
    :cond_0
    iget v8, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1475
    .local v8, "outputPtr":I
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    .line 1476
    .local v7, "outputBuffer":[B
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEscapes:[I

    .line 1478
    .local v3, "escCodes":[I
    iget v10, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_maximumNonEscapedChar:I

    if-gtz v10, :cond_1

    const v5, 0xffff

    .line 1479
    .local v5, "maxUnescaped":I
    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    .local v1, "customEscapes":Lcom/fasterxml/jackson/core/io/CharacterEscapes;
    move v9, v8

    .end local v8    # "outputPtr":I
    .local v9, "outputPtr":I
    move v6, p2

    .line 1481
    .end local p2    # "offset":I
    .local v6, "offset":I
    :goto_1
    if-ge v6, p3, :cond_a

    .line 1482
    add-int/lit8 p2, v6, 0x1

    .end local v6    # "offset":I
    .restart local p2    # "offset":I
    aget-char v0, p1, v6

    .line 1483
    .local v0, "ch":I
    const/16 v10, 0x7f

    if-gt v0, v10, :cond_6

    .line 1484
    aget v10, v3, v0

    if-nez v10, :cond_2

    .line 1485
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    int-to-byte v10, v0

    aput-byte v10, v7, v9

    move v9, v8

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    move v6, p2

    .line 1486
    .end local p2    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_1

    .line 1478
    .end local v0    # "ch":I
    .end local v1    # "customEscapes":Lcom/fasterxml/jackson/core/io/CharacterEscapes;
    .end local v5    # "maxUnescaped":I
    .end local v6    # "offset":I
    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    .restart local p2    # "offset":I
    :cond_1
    iget v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_maximumNonEscapedChar:I

    goto :goto_0

    .line 1488
    .end local v8    # "outputPtr":I
    .restart local v0    # "ch":I
    .restart local v1    # "customEscapes":Lcom/fasterxml/jackson/core/io/CharacterEscapes;
    .restart local v5    # "maxUnescaped":I
    .restart local v9    # "outputPtr":I
    :cond_2
    aget v4, v3, v0

    .line 1489
    .local v4, "escape":I
    if-lez v4, :cond_3

    .line 1490
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    const/16 v10, 0x5c

    aput-byte v10, v7, v9

    .line 1491
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    int-to-byte v10, v4

    aput-byte v10, v7, v8

    move v6, p2

    .end local p2    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_1

    .line 1492
    .end local v6    # "offset":I
    .restart local p2    # "offset":I
    :cond_3
    const/4 v10, -0x2

    if-ne v4, v10, :cond_5

    .line 1493
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/io/CharacterEscapes;->getEscapeSequence(I)Lcom/fasterxml/jackson/core/SerializableString;

    move-result-object v2

    .line 1494
    .local v2, "esc":Lcom/fasterxml/jackson/core/SerializableString;
    if-nez v2, :cond_4

    .line 1495
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid custom escape definitions; custom escape not found for character code 0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", although was supposed to have one"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_reportError(Ljava/lang/String;)V

    .line 1498
    :cond_4
    sub-int v10, p3, p2

    invoke-direct {p0, v7, v9, v2, v10}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeCustomEscape([BILcom/fasterxml/jackson/core/SerializableString;I)I

    move-result v8

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    move v9, v8

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    move v6, p2

    .line 1499
    .end local p2    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_1

    .line 1501
    .end local v2    # "esc":Lcom/fasterxml/jackson/core/SerializableString;
    .end local v6    # "offset":I
    .restart local p2    # "offset":I
    :cond_5
    invoke-direct {p0, v0, v9}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeGenericEscape(II)I

    move-result v8

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    move v9, v8

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    move v6, p2

    .line 1503
    .end local p2    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_1

    .line 1505
    .end local v4    # "escape":I
    .end local v6    # "offset":I
    .restart local p2    # "offset":I
    :cond_6
    if-le v0, v5, :cond_7

    .line 1506
    invoke-direct {p0, v0, v9}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeGenericEscape(II)I

    move-result v8

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    move v9, v8

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    move v6, p2

    .line 1507
    .end local p2    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_1

    .line 1509
    .end local v6    # "offset":I
    .restart local p2    # "offset":I
    :cond_7
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/io/CharacterEscapes;->getEscapeSequence(I)Lcom/fasterxml/jackson/core/SerializableString;

    move-result-object v2

    .line 1510
    .restart local v2    # "esc":Lcom/fasterxml/jackson/core/SerializableString;
    if-eqz v2, :cond_8

    .line 1511
    sub-int v10, p3, p2

    invoke-direct {p0, v7, v9, v2, v10}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeCustomEscape([BILcom/fasterxml/jackson/core/SerializableString;I)I

    move-result v8

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    move v9, v8

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    move v6, p2

    .line 1512
    .end local p2    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_1

    .line 1514
    .end local v6    # "offset":I
    .restart local p2    # "offset":I
    :cond_8
    const/16 v10, 0x7ff

    if-gt v0, v10, :cond_9

    .line 1515
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    shr-int/lit8 v10, v0, 0x6

    or-int/lit16 v10, v10, 0xc0

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    .line 1516
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    and-int/lit8 v10, v0, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v7, v8

    move v8, v9

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    :goto_2
    move v9, v8

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    move v6, p2

    .line 1520
    .end local p2    # "offset":I
    .restart local v6    # "offset":I
    goto/16 :goto_1

    .line 1518
    .end local v6    # "offset":I
    .restart local p2    # "offset":I
    :cond_9
    invoke-direct {p0, v0, v9}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputMultiByteChar(II)I

    move-result v8

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    goto :goto_2

    .line 1521
    .end local v0    # "ch":I
    .end local v2    # "esc":Lcom/fasterxml/jackson/core/SerializableString;
    .end local v8    # "outputPtr":I
    .end local p2    # "offset":I
    .restart local v6    # "offset":I
    .restart local v9    # "outputPtr":I
    :cond_a
    iput v9, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1522
    return-void
.end method

.method private _writeGenericEscape(II)I
    .locals 5
    .param p1, "charToEscape"    # I
    .param p2, "outputPtr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x30

    .line 1980
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    .line 1981
    .local v0, "bbuf":[B
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "outputPtr":I
    .local v2, "outputPtr":I
    const/16 v3, 0x5c

    aput-byte v3, v0, p2

    .line 1982
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "outputPtr":I
    .restart local p2    # "outputPtr":I
    const/16 v3, 0x75

    aput-byte v3, v0, v2

    .line 1983
    const/16 v3, 0xff

    if-le p1, v3, :cond_0

    .line 1984
    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v1, v3, 0xff

    .line 1985
    .local v1, "hi":I
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "outputPtr":I
    .restart local v2    # "outputPtr":I
    sget-object v3, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->HEX_CHARS:[B

    shr-int/lit8 v4, v1, 0x4

    aget-byte v3, v3, v4

    aput-byte v3, v0, p2

    .line 1986
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "outputPtr":I
    .restart local p2    # "outputPtr":I
    sget-object v3, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->HEX_CHARS:[B

    and-int/lit8 v4, v1, 0xf

    aget-byte v3, v3, v4

    aput-byte v3, v0, v2

    .line 1987
    and-int/lit16 p1, p1, 0xff

    .line 1993
    .end local v1    # "hi":I
    :goto_0
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "outputPtr":I
    .restart local v2    # "outputPtr":I
    sget-object v3, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->HEX_CHARS:[B

    shr-int/lit8 v4, p1, 0x4

    aget-byte v3, v3, v4

    aput-byte v3, v0, p2

    .line 1994
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "outputPtr":I
    .restart local p2    # "outputPtr":I
    sget-object v3, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->HEX_CHARS:[B

    and-int/lit8 v4, p1, 0xf

    aget-byte v3, v3, v4

    aput-byte v3, v0, v2

    .line 1995
    return p2

    .line 1989
    :cond_0
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "outputPtr":I
    .restart local v2    # "outputPtr":I
    aput-byte v4, v0, p2

    .line 1990
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "outputPtr":I
    .restart local p2    # "outputPtr":I
    aput-byte v4, v0, v2

    goto :goto_0
.end method

.method private final _writeNull()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1965
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 1966
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1968
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->NULL_BYTES:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    const/4 v4, 0x4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1969
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1970
    return-void
.end method

.method private final _writeQuotedInt(I)V
    .locals 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 792
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0xd

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 793
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 796
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt(I[BI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 797
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 798
    return-void
.end method

.method private final _writeQuotedLong(J)V
    .locals 5
    .param p1, "l"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 818
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x17

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 819
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 821
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 822
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-static {p1, p2, v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputLong(J[BI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 823
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 824
    return-void
.end method

.method private final _writeQuotedRaw(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 905
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 906
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 908
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 909
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->writeRaw(Ljava/lang/String;)V

    .line 910
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 911
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 913
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 914
    return-void
.end method

.method private final _writeQuotedShort(S)V
    .locals 4
    .param p1, "s"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 766
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 767
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 770
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt(I[BI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 771
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 772
    return-void
.end method

.method private final _writeSegmentedRaw([CII)V
    .locals 6
    .param p1, "cbuf"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 651
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    .line 652
    .local v2, "end":I
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    .line 655
    .local v0, "bbuf":[B
    :goto_0
    if-ge p2, p3, :cond_4

    .line 658
    :cond_0
    aget-char v1, p1, p2

    .line 659
    .local v1, "ch":I
    const/16 v4, 0x80

    if-lt v1, v4, :cond_2

    .line 671
    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v4, v4, 0x3

    iget v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v4, v5, :cond_1

    .line 672
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 674
    :cond_1
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "offset":I
    .local v3, "offset":I
    aget-char v1, p1, p2

    .line 675
    .local v1, "ch":C
    const/16 v4, 0x800

    if-ge v1, v4, :cond_5

    .line 676
    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    shr-int/lit8 v5, v1, 0x6

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 677
    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    and-int/lit8 v5, v1, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    move p2, v3

    .end local v3    # "offset":I
    .restart local p2    # "offset":I
    goto :goto_0

    .line 663
    .local v1, "ch":I
    :cond_2
    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    if-lt v4, v2, :cond_3

    .line 664
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 666
    :cond_3
    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    int-to-byte v5, v1

    aput-byte v5, v0, v4

    .line 667
    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_0

    .line 682
    .end local v1    # "ch":I
    :cond_4
    return-void

    .line 679
    .end local p2    # "offset":I
    .local v1, "ch":C
    .restart local v3    # "offset":I
    :cond_5
    invoke-direct {p0, v1, p1, v3, p3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputRawMultiByteChar(I[CII)I

    move-result p2

    .end local v3    # "offset":I
    .restart local p2    # "offset":I
    goto :goto_0
.end method

.method private final _writeStringSegment(Ljava/lang/String;II)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1249
    add-int/2addr p3, p2

    .line 1251
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1252
    .local v3, "outputPtr":I
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    .line 1253
    .local v2, "outputBuffer":[B
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEscapes:[I

    .local v1, "escCodes":[I
    move v4, v3

    .line 1255
    .end local v3    # "outputPtr":I
    .local v4, "outputPtr":I
    :goto_0
    if-ge p2, p3, :cond_0

    .line 1256
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1258
    .local v0, "ch":I
    const/16 v5, 0x7f

    if-gt v0, v5, :cond_0

    aget v5, v1, v0

    if-eqz v5, :cond_2

    .line 1264
    .end local v0    # "ch":I
    :cond_0
    iput v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1265
    if-ge p2, p3, :cond_1

    .line 1266
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    if-eqz v5, :cond_3

    .line 1267
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeCustomStringSegment2(Ljava/lang/String;II)V

    .line 1274
    :cond_1
    :goto_1
    return-void

    .line 1261
    .restart local v0    # "ch":I
    :cond_2
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "outputPtr":I
    .restart local v3    # "outputPtr":I
    int-to-byte v5, v0

    aput-byte v5, v2, v4

    .line 1262
    add-int/lit8 p2, p2, 0x1

    move v4, v3

    .line 1263
    .end local v3    # "outputPtr":I
    .restart local v4    # "outputPtr":I
    goto :goto_0

    .line 1268
    .end local v0    # "ch":I
    :cond_3
    iget v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_maximumNonEscapedChar:I

    if-nez v5, :cond_4

    .line 1269
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegment2(Ljava/lang/String;II)V

    goto :goto_1

    .line 1271
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegmentASCII2(Ljava/lang/String;II)V

    goto :goto_1
.end method

.method private final _writeStringSegment([CII)V
    .locals 6
    .param p1, "cbuf"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1215
    add-int/2addr p3, p2

    .line 1217
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1218
    .local v3, "outputPtr":I
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    .line 1219
    .local v2, "outputBuffer":[B
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEscapes:[I

    .local v1, "escCodes":[I
    move v4, v3

    .line 1221
    .end local v3    # "outputPtr":I
    .local v4, "outputPtr":I
    :goto_0
    if-ge p2, p3, :cond_0

    .line 1222
    aget-char v0, p1, p2

    .line 1224
    .local v0, "ch":I
    const/16 v5, 0x7f

    if-gt v0, v5, :cond_0

    aget v5, v1, v0

    if-eqz v5, :cond_2

    .line 1230
    .end local v0    # "ch":I
    :cond_0
    iput v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1231
    if-ge p2, p3, :cond_1

    .line 1233
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    if-eqz v5, :cond_3

    .line 1234
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeCustomStringSegment2([CII)V

    .line 1243
    :cond_1
    :goto_1
    return-void

    .line 1227
    .restart local v0    # "ch":I
    :cond_2
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "outputPtr":I
    .restart local v3    # "outputPtr":I
    int-to-byte v5, v0

    aput-byte v5, v2, v4

    .line 1228
    add-int/lit8 p2, p2, 0x1

    move v4, v3

    .line 1229
    .end local v3    # "outputPtr":I
    .restart local v4    # "outputPtr":I
    goto :goto_0

    .line 1236
    .end local v0    # "ch":I
    :cond_3
    iget v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_maximumNonEscapedChar:I

    if-nez v5, :cond_4

    .line 1237
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegment2([CII)V

    goto :goto_1

    .line 1239
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegmentASCII2([CII)V

    goto :goto_1
.end method

.method private final _writeStringSegment2(Ljava/lang/String;II)V
    .locals 9
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1321
    iget v7, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    sub-int v8, p3, p2

    mul-int/lit8 v8, v8, 0x6

    add-int/2addr v7, v8

    iget v8, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v7, v8, :cond_0

    .line 1322
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1325
    :cond_0
    iget v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1327
    .local v5, "outputPtr":I
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    .line 1328
    .local v4, "outputBuffer":[B
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEscapes:[I

    .local v1, "escCodes":[I
    move v6, v5

    .end local v5    # "outputPtr":I
    .local v6, "outputPtr":I
    move v3, p2

    .line 1330
    .end local p2    # "offset":I
    .local v3, "offset":I
    :goto_0
    if-ge v3, p3, :cond_5

    .line 1331
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "offset":I
    .restart local p2    # "offset":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1332
    .local v0, "ch":I
    const/16 v7, 0x7f

    if-gt v0, v7, :cond_3

    .line 1333
    aget v7, v1, v0

    if-nez v7, :cond_1

    .line 1334
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "outputPtr":I
    .restart local v5    # "outputPtr":I
    int-to-byte v7, v0

    aput-byte v7, v4, v6

    move v6, v5

    .end local v5    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    move v3, p2

    .line 1335
    .end local p2    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .line 1337
    .end local v3    # "offset":I
    .restart local p2    # "offset":I
    :cond_1
    aget v2, v1, v0

    .line 1338
    .local v2, "escape":I
    if-lez v2, :cond_2

    .line 1339
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "outputPtr":I
    .restart local v5    # "outputPtr":I
    const/16 v7, 0x5c

    aput-byte v7, v4, v6

    .line 1340
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    int-to-byte v7, v2

    aput-byte v7, v4, v5

    move v3, p2

    .end local p2    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .line 1343
    .end local v3    # "offset":I
    .restart local p2    # "offset":I
    :cond_2
    invoke-direct {p0, v0, v6}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeGenericEscape(II)I

    move-result v5

    .end local v6    # "outputPtr":I
    .restart local v5    # "outputPtr":I
    move v6, v5

    .end local v5    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    move v3, p2

    .line 1345
    .end local p2    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .line 1347
    .end local v2    # "escape":I
    .end local v3    # "offset":I
    .restart local p2    # "offset":I
    :cond_3
    const/16 v7, 0x7ff

    if-gt v0, v7, :cond_4

    .line 1348
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "outputPtr":I
    .restart local v5    # "outputPtr":I
    shr-int/lit8 v7, v0, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    .line 1349
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    and-int/lit8 v7, v0, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    move v5, v6

    .end local v6    # "outputPtr":I
    .restart local v5    # "outputPtr":I
    :goto_1
    move v6, v5

    .end local v5    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    move v3, p2

    .line 1353
    .end local p2    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .line 1351
    .end local v3    # "offset":I
    .restart local p2    # "offset":I
    :cond_4
    invoke-direct {p0, v0, v6}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputMultiByteChar(II)I

    move-result v5

    .end local v6    # "outputPtr":I
    .restart local v5    # "outputPtr":I
    goto :goto_1

    .line 1354
    .end local v0    # "ch":I
    .end local v5    # "outputPtr":I
    .end local p2    # "offset":I
    .restart local v3    # "offset":I
    .restart local v6    # "outputPtr":I
    :cond_5
    iput v6, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1355
    return-void
.end method

.method private final _writeStringSegment2([CII)V
    .locals 9
    .param p1, "cbuf"    # [C
    .param p2, "offset"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1283
    iget v7, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    sub-int v8, p3, p2

    mul-int/lit8 v8, v8, 0x6

    add-int/2addr v7, v8

    iget v8, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v7, v8, :cond_0

    .line 1284
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1287
    :cond_0
    iget v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1289
    .local v5, "outputPtr":I
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    .line 1290
    .local v4, "outputBuffer":[B
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEscapes:[I

    .local v1, "escCodes":[I
    move v6, v5

    .end local v5    # "outputPtr":I
    .local v6, "outputPtr":I
    move v3, p2

    .line 1292
    .end local p2    # "offset":I
    .local v3, "offset":I
    :goto_0
    if-ge v3, p3, :cond_5

    .line 1293
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "offset":I
    .restart local p2    # "offset":I
    aget-char v0, p1, v3

    .line 1294
    .local v0, "ch":I
    const/16 v7, 0x7f

    if-gt v0, v7, :cond_3

    .line 1295
    aget v7, v1, v0

    if-nez v7, :cond_1

    .line 1296
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "outputPtr":I
    .restart local v5    # "outputPtr":I
    int-to-byte v7, v0

    aput-byte v7, v4, v6

    move v6, v5

    .end local v5    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    move v3, p2

    .line 1297
    .end local p2    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .line 1299
    .end local v3    # "offset":I
    .restart local p2    # "offset":I
    :cond_1
    aget v2, v1, v0

    .line 1300
    .local v2, "escape":I
    if-lez v2, :cond_2

    .line 1301
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "outputPtr":I
    .restart local v5    # "outputPtr":I
    const/16 v7, 0x5c

    aput-byte v7, v4, v6

    .line 1302
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    int-to-byte v7, v2

    aput-byte v7, v4, v5

    move v3, p2

    .end local p2    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .line 1305
    .end local v3    # "offset":I
    .restart local p2    # "offset":I
    :cond_2
    invoke-direct {p0, v0, v6}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeGenericEscape(II)I

    move-result v5

    .end local v6    # "outputPtr":I
    .restart local v5    # "outputPtr":I
    move v6, v5

    .end local v5    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    move v3, p2

    .line 1307
    .end local p2    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .line 1309
    .end local v2    # "escape":I
    .end local v3    # "offset":I
    .restart local p2    # "offset":I
    :cond_3
    const/16 v7, 0x7ff

    if-gt v0, v7, :cond_4

    .line 1310
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "outputPtr":I
    .restart local v5    # "outputPtr":I
    shr-int/lit8 v7, v0, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    .line 1311
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    and-int/lit8 v7, v0, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    move v5, v6

    .end local v6    # "outputPtr":I
    .restart local v5    # "outputPtr":I
    :goto_1
    move v6, v5

    .end local v5    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    move v3, p2

    .line 1315
    .end local p2    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .line 1313
    .end local v3    # "offset":I
    .restart local p2    # "offset":I
    :cond_4
    invoke-direct {p0, v0, v6}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputMultiByteChar(II)I

    move-result v5

    .end local v6    # "outputPtr":I
    .restart local v5    # "outputPtr":I
    goto :goto_1

    .line 1316
    .end local v0    # "ch":I
    .end local v5    # "outputPtr":I
    .end local p2    # "offset":I
    .restart local v3    # "offset":I
    .restart local v6    # "outputPtr":I
    :cond_5
    iput v6, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1317
    return-void
.end method

.method private final _writeStringSegmentASCII2(Ljava/lang/String;II)V
    .locals 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1415
    iget v8, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    sub-int v9, p3, p2

    mul-int/lit8 v9, v9, 0x6

    add-int/2addr v8, v9

    iget v9, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v8, v9, :cond_0

    .line 1416
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1419
    :cond_0
    iget v6, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1421
    .local v6, "outputPtr":I
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    .line 1422
    .local v5, "outputBuffer":[B
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEscapes:[I

    .line 1423
    .local v1, "escCodes":[I
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_maximumNonEscapedChar:I

    .local v3, "maxUnescaped":I
    move v7, v6

    .end local v6    # "outputPtr":I
    .local v7, "outputPtr":I
    move v4, p2

    .line 1425
    .end local p2    # "offset":I
    .local v4, "offset":I
    :goto_0
    if-ge v4, p3, :cond_6

    .line 1426
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1427
    .local v0, "ch":I
    const/16 v8, 0x7f

    if-gt v0, v8, :cond_3

    .line 1428
    aget v8, v1, v0

    if-nez v8, :cond_1

    .line 1429
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    int-to-byte v8, v0

    aput-byte v8, v5, v7

    move v7, v6

    .end local v6    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    move v4, p2

    .line 1430
    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0

    .line 1432
    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    :cond_1
    aget v2, v1, v0

    .line 1433
    .local v2, "escape":I
    if-lez v2, :cond_2

    .line 1434
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    const/16 v8, 0x5c

    aput-byte v8, v5, v7

    .line 1435
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    int-to-byte v8, v2

    aput-byte v8, v5, v6

    move v4, p2

    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0

    .line 1438
    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    :cond_2
    invoke-direct {p0, v0, v7}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeGenericEscape(II)I

    move-result v6

    .end local v7    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    move v7, v6

    .end local v6    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    move v4, p2

    .line 1440
    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0

    .line 1442
    .end local v2    # "escape":I
    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    :cond_3
    if-le v0, v3, :cond_4

    .line 1443
    invoke-direct {p0, v0, v7}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeGenericEscape(II)I

    move-result v6

    .end local v7    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    move v7, v6

    .end local v6    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    move v4, p2

    .line 1444
    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0

    .line 1446
    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    :cond_4
    const/16 v8, 0x7ff

    if-gt v0, v8, :cond_5

    .line 1447
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    shr-int/lit8 v8, v0, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 1448
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    and-int/lit8 v8, v0, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v5, v6

    move v6, v7

    .end local v7    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    :goto_1
    move v7, v6

    .end local v6    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    move v4, p2

    .line 1452
    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0

    .line 1450
    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    :cond_5
    invoke-direct {p0, v0, v7}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputMultiByteChar(II)I

    move-result v6

    .end local v7    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    goto :goto_1

    .line 1453
    .end local v0    # "ch":I
    .end local v6    # "outputPtr":I
    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    .restart local v7    # "outputPtr":I
    :cond_6
    iput v7, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1454
    return-void
.end method

.method private final _writeStringSegmentASCII2([CII)V
    .locals 10
    .param p1, "cbuf"    # [C
    .param p2, "offset"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1371
    iget v8, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    sub-int v9, p3, p2

    mul-int/lit8 v9, v9, 0x6

    add-int/2addr v8, v9

    iget v9, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v8, v9, :cond_0

    .line 1372
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1375
    :cond_0
    iget v6, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1377
    .local v6, "outputPtr":I
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    .line 1378
    .local v5, "outputBuffer":[B
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEscapes:[I

    .line 1379
    .local v1, "escCodes":[I
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_maximumNonEscapedChar:I

    .local v3, "maxUnescaped":I
    move v7, v6

    .end local v6    # "outputPtr":I
    .local v7, "outputPtr":I
    move v4, p2

    .line 1381
    .end local p2    # "offset":I
    .local v4, "offset":I
    :goto_0
    if-ge v4, p3, :cond_6

    .line 1382
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    aget-char v0, p1, v4

    .line 1383
    .local v0, "ch":I
    const/16 v8, 0x7f

    if-gt v0, v8, :cond_3

    .line 1384
    aget v8, v1, v0

    if-nez v8, :cond_1

    .line 1385
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    int-to-byte v8, v0

    aput-byte v8, v5, v7

    move v7, v6

    .end local v6    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    move v4, p2

    .line 1386
    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0

    .line 1388
    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    :cond_1
    aget v2, v1, v0

    .line 1389
    .local v2, "escape":I
    if-lez v2, :cond_2

    .line 1390
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    const/16 v8, 0x5c

    aput-byte v8, v5, v7

    .line 1391
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    int-to-byte v8, v2

    aput-byte v8, v5, v6

    move v4, p2

    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0

    .line 1394
    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    :cond_2
    invoke-direct {p0, v0, v7}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeGenericEscape(II)I

    move-result v6

    .end local v7    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    move v7, v6

    .end local v6    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    move v4, p2

    .line 1396
    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0

    .line 1398
    .end local v2    # "escape":I
    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    :cond_3
    if-le v0, v3, :cond_4

    .line 1399
    invoke-direct {p0, v0, v7}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeGenericEscape(II)I

    move-result v6

    .end local v7    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    move v7, v6

    .end local v6    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    move v4, p2

    .line 1400
    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0

    .line 1402
    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    :cond_4
    const/16 v8, 0x7ff

    if-gt v0, v8, :cond_5

    .line 1403
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    shr-int/lit8 v8, v0, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 1404
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    and-int/lit8 v8, v0, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v5, v6

    move v6, v7

    .end local v7    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    :goto_1
    move v7, v6

    .end local v6    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    move v4, p2

    .line 1408
    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0

    .line 1406
    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    :cond_5
    invoke-direct {p0, v0, v7}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputMultiByteChar(II)I

    move-result v6

    .end local v7    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    goto :goto_1

    .line 1409
    .end local v0    # "ch":I
    .end local v6    # "outputPtr":I
    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    .restart local v7    # "outputPtr":I
    :cond_6
    iput v7, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1410
    return-void
.end method

.method private final _writeStringSegments(Ljava/lang/String;II)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "totalLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1185
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputMaxContiguous:I

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1186
    .local v0, "len":I
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v1, v2, :cond_1

    .line 1187
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1189
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegment(Ljava/lang/String;II)V

    .line 1190
    add-int/2addr p2, v0

    .line 1191
    sub-int/2addr p3, v0

    .line 1192
    if-gtz p3, :cond_0

    .line 1193
    return-void
.end method

.method private final _writeStringSegments(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "addQuotes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x22

    .line 1135
    if-eqz p2, :cond_1

    .line 1136
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v3, v4, :cond_0

    .line 1137
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1139
    :cond_0
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v6, v3, v4

    .line 1142
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1143
    .local v0, "left":I
    const/4 v2, 0x0

    .line 1145
    .local v2, "offset":I
    :goto_0
    if-lez v0, :cond_3

    .line 1146
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputMaxContiguous:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1147
    .local v1, "len":I
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v3, v4, :cond_2

    .line 1148
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1150
    :cond_2
    invoke-direct {p0, p1, v2, v1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegment(Ljava/lang/String;II)V

    .line 1151
    add-int/2addr v2, v1

    .line 1152
    sub-int/2addr v0, v1

    .line 1153
    goto :goto_0

    .line 1155
    .end local v1    # "len":I
    :cond_3
    if-eqz p2, :cond_5

    .line 1156
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v3, v4, :cond_4

    .line 1157
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1159
    :cond_4
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v6, v3, v4

    .line 1161
    :cond_5
    return-void
.end method

.method private final _writeStringSegments([CII)V
    .locals 3
    .param p1, "cbuf"    # [C
    .param p2, "offset"    # I
    .param p3, "totalLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1172
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputMaxContiguous:I

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1173
    .local v0, "len":I
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v1, v2, :cond_1

    .line 1174
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1176
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegment([CII)V

    .line 1177
    add-int/2addr p2, v0

    .line 1178
    sub-int/2addr p3, v0

    .line 1179
    if-gtz p3, :cond_0

    .line 1180
    return-void
.end method

.method private final _writeUTF8Segment([BII)V
    .locals 7
    .param p1, "utf8"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1644
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEscapes:[I

    .line 1646
    .local v2, "escCodes":[I
    move v3, p2

    .local v3, "ptr":I
    add-int v1, p2, p3

    .local v1, "end":I
    move v4, v3

    .end local v3    # "ptr":I
    .local v4, "ptr":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 1648
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "ptr":I
    .restart local v3    # "ptr":I
    aget-byte v0, p1, v4

    .line 1649
    .local v0, "ch":I
    if-ltz v0, :cond_0

    aget v5, v2, v0

    if-eqz v5, :cond_0

    .line 1650
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeUTF8Segment2([BII)V

    .line 1661
    .end local v0    # "ch":I
    :goto_1
    return-void

    .restart local v0    # "ch":I
    :cond_0
    move v4, v3

    .line 1653
    .end local v3    # "ptr":I
    .restart local v4    # "ptr":I
    goto :goto_0

    .line 1656
    .end local v0    # "ch":I
    :cond_1
    iget v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v5, p3

    iget v6, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v5, v6, :cond_2

    .line 1657
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1659
    :cond_2
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-static {p1, p2, v5, v6, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1660
    iget v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v5, p3

    iput v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    move v3, v4

    .line 1661
    .end local v4    # "ptr":I
    .restart local v3    # "ptr":I
    goto :goto_1
.end method

.method private final _writeUTF8Segment2([BII)V
    .locals 10
    .param p1, "utf8"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1666
    iget v6, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1669
    .local v6, "outputPtr":I
    mul-int/lit8 v8, p3, 0x6

    add-int/2addr v8, v6

    iget v9, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v8, v9, :cond_0

    .line 1670
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1671
    iget v6, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1674
    :cond_0
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    .line 1675
    .local v5, "outputBuffer":[B
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEscapes:[I

    .line 1676
    .local v2, "escCodes":[I
    add-int/2addr p3, p2

    move v7, v6

    .end local v6    # "outputPtr":I
    .local v7, "outputPtr":I
    move v4, p2

    .line 1678
    .end local p2    # "offset":I
    .local v4, "offset":I
    :goto_0
    if-ge v4, p3, :cond_4

    .line 1679
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    aget-byte v0, p1, v4

    .line 1680
    .local v0, "b":B
    move v1, v0

    .line 1681
    .local v1, "ch":I
    if-ltz v1, :cond_1

    aget v8, v2, v1

    if-nez v8, :cond_2

    .line 1682
    :cond_1
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    aput-byte v0, v5, v7

    move v7, v6

    .end local v6    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    move v4, p2

    .line 1683
    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0

    .line 1685
    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    :cond_2
    aget v3, v2, v1

    .line 1686
    .local v3, "escape":I
    if-lez v3, :cond_3

    .line 1687
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    const/16 v8, 0x5c

    aput-byte v8, v5, v7

    .line 1688
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    int-to-byte v8, v3

    aput-byte v8, v5, v6

    move v6, v7

    .end local v7    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    :goto_1
    move v7, v6

    .end local v6    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    move v4, p2

    .line 1693
    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0

    .line 1691
    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    :cond_3
    invoke-direct {p0, v1, v7}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeGenericEscape(II)I

    move-result v6

    .end local v7    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    goto :goto_1

    .line 1694
    .end local v0    # "b":B
    .end local v1    # "ch":I
    .end local v3    # "escape":I
    .end local v6    # "outputPtr":I
    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    .restart local v7    # "outputPtr":I
    :cond_4
    iput v7, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1695
    return-void
.end method

.method private final _writeUTF8Segments([BII)V
    .locals 2
    .param p1, "utf8"    # [B
    .param p2, "offset"    # I
    .param p3, "totalLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1633
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputMaxContiguous:I

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1634
    .local v0, "len":I
    invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeUTF8Segment([BII)V

    .line 1635
    add-int/2addr p2, v0

    .line 1636
    sub-int/2addr p3, v0

    .line 1637
    if-gtz p3, :cond_0

    .line 1638
    return-void
.end method

.method private final _writeUnq(Lcom/fasterxml/jackson/core/SerializableString;)V
    .locals 3
    .param p1, "name"    # Lcom/fasterxml/jackson/core/SerializableString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-interface {p1, v1, v2}, Lcom/fasterxml/jackson/core/SerializableString;->appendQuotedUTF8([BI)I

    move-result v0

    .line 266
    .local v0, "len":I
    if-gez v0, :cond_0

    .line 267
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->asQuotedUTF8()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeBytes([B)V

    .line 271
    :goto_0
    return-void

    .line 269
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    goto :goto_0
.end method


# virtual methods
.method protected final _flushBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2000
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 2001
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 2002
    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 2003
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputStream:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 2005
    :cond_0
    return-void
.end method

.method protected final _outputSurrogates(II)V
    .locals 4
    .param p1, "surr1"    # I
    .param p2, "surr2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1924
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_decodeSurrogate(II)I

    move-result v1

    .line 1925
    .local v1, "c":I
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x4

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v2, v3, :cond_0

    .line 1926
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1928
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    .line 1929
    .local v0, "bbuf":[B
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    shr-int/lit8 v3, v1, 0x12

    or-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1930
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    shr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1931
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    shr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1932
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    and-int/lit8 v3, v1, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1933
    return-void
.end method

.method protected _releaseBuffers()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1073
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    .line 1074
    .local v0, "buf":[B
    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_bufferRecyclable:Z

    if-eqz v2, :cond_0

    .line 1075
    iput-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    .line 1076
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseWriteEncodingBuffer([B)V

    .line 1078
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    .line 1079
    .local v1, "cbuf":[C
    if-eqz v1, :cond_1

    .line 1080
    iput-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    .line 1081
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseConcatBuffer([C)V

    .line 1083
    :cond_1
    return-void
.end method

.method protected final _verifyPrettyValueWrite(Ljava/lang/String;I)V
    .locals 1
    .param p1, "typeMsg"    # Ljava/lang/String;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 986
    packed-switch p2, :pswitch_data_0

    .line 1005
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_throwInternal()V

    .line 1008
    :cond_0
    :goto_0
    return-void

    .line 988
    :pswitch_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeArrayValueSeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 991
    :pswitch_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeObjectFieldValueSeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 994
    :pswitch_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeRootValueSeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 998
    :pswitch_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->inArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 999
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->beforeArrayValues(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 1000
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->inObject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->beforeObjectEntries(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 986
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final _verifyValueWrite(Ljava/lang/String;)V
    .locals 5
    .param p1, "typeMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 947
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->writeValue()I

    move-result v2

    .line 948
    .local v2, "status":I
    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 949
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", expecting field name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_reportError(Ljava/lang/String;)V

    .line 951
    :cond_0
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-nez v3, :cond_3

    .line 953
    packed-switch v2, :pswitch_data_0

    .line 981
    :cond_1
    :goto_0
    return-void

    .line 955
    :pswitch_0
    const/16 v0, 0x2c

    .line 972
    .local v0, "b":B
    :goto_1
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v3, v4, :cond_2

    .line 973
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 975
    :cond_2
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v0, v3, v4

    .line 976
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    goto :goto_0

    .line 958
    .end local v0    # "b":B
    :pswitch_1
    const/16 v0, 0x3a

    .line 959
    .restart local v0    # "b":B
    goto :goto_1

    .line 961
    .end local v0    # "b":B
    :pswitch_2
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_rootValueSeparator:Lcom/fasterxml/jackson/core/SerializableString;

    if-eqz v3, :cond_1

    .line 962
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_rootValueSeparator:Lcom/fasterxml/jackson/core/SerializableString;

    invoke-interface {v3}, Lcom/fasterxml/jackson/core/SerializableString;->asUnquotedUTF8()[B

    move-result-object v1

    .line 963
    .local v1, "raw":[B
    array-length v3, v1

    if-lez v3, :cond_1

    .line 964
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeBytes([B)V

    goto :goto_0

    .line 980
    .end local v1    # "raw":[B
    :cond_3
    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyPrettyValueWrite(Ljava/lang/String;I)V

    goto :goto_0

    .line 953
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final _writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;[B)I
    .locals 14
    .param p1, "b64variant"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .param p2, "data"    # Ljava/io/InputStream;
    .param p3, "readBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1810
    const/4 v4, 0x0

    .line 1811
    .local v4, "inputPtr":I
    const/4 v5, 0x0

    .line 1812
    .local v5, "inputEnd":I
    const/4 v12, -0x3

    .line 1813
    .local v12, "lastFullOffset":I
    const/4 v9, 0x0

    .line 1816
    .local v9, "bytesDone":I
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    add-int/lit8 v13, v1, -0x6

    .line 1817
    .local v13, "safeOutputEnd":I
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v1

    shr-int/lit8 v10, v1, 0x2

    .line 1821
    .local v10, "chunksBeforeLF":I
    :goto_0
    if-le v4, v12, :cond_4

    .line 1822
    move-object/from16 v0, p3

    array-length v6, v0

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_readMore(Ljava/io/InputStream;[BIII)I

    move-result v5

    .line 1823
    const/4 v4, 0x0

    .line 1824
    const/4 v1, 0x3

    if-ge v5, v1, :cond_3

    .line 1846
    if-ge v4, v5, :cond_2

    .line 1847
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    if-le v1, v13, :cond_0

    .line 1848
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1850
    :cond_0
    add-int/lit8 v11, v4, 0x1

    .end local v4    # "inputPtr":I
    .local v11, "inputPtr":I
    aget-byte v1, p3, v4

    shl-int/lit8 v8, v1, 0x10

    .line 1851
    .local v8, "b24":I
    const/4 v7, 0x1

    .line 1852
    .local v7, "amount":I
    if-ge v11, v5, :cond_1

    .line 1853
    aget-byte v1, p3, v11

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v8, v1

    .line 1854
    const/4 v7, 0x2

    .line 1856
    :cond_1
    add-int/2addr v9, v7

    .line 1857
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-virtual {p1, v8, v7, v1, v2}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Partial(II[BI)I

    move-result v1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    move v4, v11

    .line 1859
    .end local v7    # "amount":I
    .end local v8    # "b24":I
    .end local v11    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    :cond_2
    return v9

    .line 1827
    :cond_3
    add-int/lit8 v12, v5, -0x3

    .line 1829
    :cond_4
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    if-le v1, v13, :cond_5

    .line 1830
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1833
    :cond_5
    add-int/lit8 v11, v4, 0x1

    .end local v4    # "inputPtr":I
    .restart local v11    # "inputPtr":I
    aget-byte v1, p3, v4

    shl-int/lit8 v8, v1, 0x8

    .line 1834
    .restart local v8    # "b24":I
    add-int/lit8 v4, v11, 0x1

    .end local v11    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    aget-byte v1, p3, v11

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v8, v1

    .line 1835
    shl-int/lit8 v1, v8, 0x8

    add-int/lit8 v11, v4, 0x1

    .end local v4    # "inputPtr":I
    .restart local v11    # "inputPtr":I
    aget-byte v2, p3, v4

    and-int/lit16 v2, v2, 0xff

    or-int v8, v1, v2

    .line 1836
    add-int/lit8 v9, v9, 0x3

    .line 1837
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-virtual {p1, v8, v1, v2}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Chunk(I[BI)I

    move-result v1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1838
    add-int/lit8 v10, v10, -0x1

    if-gtz v10, :cond_6

    .line 1839
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    const/16 v3, 0x5c

    aput-byte v3, v1, v2

    .line 1840
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    const/16 v3, 0x6e

    aput-byte v3, v1, v2

    .line 1841
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v1

    shr-int/lit8 v10, v1, 0x2

    :cond_6
    move v4, v11

    .line 1843
    .end local v11    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    goto/16 :goto_0
.end method

.method protected final _writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;[BI)I
    .locals 13
    .param p1, "b64variant"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .param p2, "data"    # Ljava/io/InputStream;
    .param p3, "readBuffer"    # [B
    .param p4, "bytesLeft"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1750
    const/4 v4, 0x0

    .line 1751
    .local v4, "inputPtr":I
    const/4 v5, 0x0

    .line 1752
    .local v5, "inputEnd":I
    const/4 v11, -0x3

    .line 1755
    .local v11, "lastFullOffset":I
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    add-int/lit8 v12, v1, -0x6

    .line 1756
    .local v12, "safeOutputEnd":I
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v1

    shr-int/lit8 v9, v1, 0x2

    .line 1758
    .local v9, "chunksBeforeLF":I
    :goto_0
    const/4 v1, 0x2

    move/from16 v0, p4

    if-le v0, v1, :cond_0

    .line 1759
    if-le v4, v11, :cond_4

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v6, p4

    .line 1760
    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_readMore(Ljava/io/InputStream;[BIII)I

    move-result v5

    .line 1761
    const/4 v4, 0x0

    .line 1762
    const/4 v1, 0x3

    if-ge v5, v1, :cond_3

    .line 1783
    :cond_0
    if-lez p4, :cond_2

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v6, p4

    .line 1784
    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_readMore(Ljava/io/InputStream;[BIII)I

    move-result v5

    .line 1785
    const/4 v4, 0x0

    .line 1786
    if-lez v5, :cond_2

    .line 1787
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    if-le v1, v12, :cond_1

    .line 1788
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1790
    :cond_1
    add-int/lit8 v10, v4, 0x1

    .end local v4    # "inputPtr":I
    .local v10, "inputPtr":I
    aget-byte v1, p3, v4

    shl-int/lit8 v8, v1, 0x10

    .line 1792
    .local v8, "b24":I
    if-ge v10, v5, :cond_7

    .line 1793
    aget-byte v1, p3, v10

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v8, v1

    .line 1794
    const/4 v7, 0x2

    .line 1798
    .local v7, "amount":I
    :goto_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-virtual {p1, v8, v7, v1, v2}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Partial(II[BI)I

    move-result v1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1799
    sub-int p4, p4, v7

    move v4, v10

    .line 1802
    .end local v7    # "amount":I
    .end local v8    # "b24":I
    .end local v10    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    :cond_2
    return p4

    .line 1765
    :cond_3
    add-int/lit8 v11, v5, -0x3

    .line 1767
    :cond_4
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    if-le v1, v12, :cond_5

    .line 1768
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1770
    :cond_5
    add-int/lit8 v10, v4, 0x1

    .end local v4    # "inputPtr":I
    .restart local v10    # "inputPtr":I
    aget-byte v1, p3, v4

    shl-int/lit8 v8, v1, 0x8

    .line 1771
    .restart local v8    # "b24":I
    add-int/lit8 v4, v10, 0x1

    .end local v10    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    aget-byte v1, p3, v10

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v8, v1

    .line 1772
    shl-int/lit8 v1, v8, 0x8

    add-int/lit8 v10, v4, 0x1

    .end local v4    # "inputPtr":I
    .restart local v10    # "inputPtr":I
    aget-byte v2, p3, v4

    and-int/lit16 v2, v2, 0xff

    or-int v8, v1, v2

    .line 1773
    add-int/lit8 p4, p4, -0x3

    .line 1774
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-virtual {p1, v8, v1, v2}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Chunk(I[BI)I

    move-result v1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1775
    add-int/lit8 v9, v9, -0x1

    if-gtz v9, :cond_6

    .line 1776
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    const/16 v3, 0x5c

    aput-byte v3, v1, v2

    .line 1777
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    const/16 v3, 0x6e

    aput-byte v3, v1, v2

    .line 1778
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v1

    shr-int/lit8 v9, v1, 0x2

    :cond_6
    move v4, v10

    .line 1780
    .end local v10    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    goto/16 :goto_0

    .line 1796
    .end local v4    # "inputPtr":I
    .restart local v10    # "inputPtr":I
    :cond_7
    const/4 v7, 0x1

    .restart local v7    # "amount":I
    goto :goto_1
.end method

.method protected final _writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V
    .locals 9
    .param p1, "b64variant"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .param p2, "input"    # [B
    .param p3, "inputPtr"    # I
    .param p4, "inputEnd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1708
    add-int/lit8 v4, p4, -0x3

    .line 1710
    .local v4, "safeInputEnd":I
    iget v6, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    add-int/lit8 v5, v6, -0x6

    .line 1711
    .local v5, "safeOutputEnd":I
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v6

    shr-int/lit8 v1, v6, 0x2

    .local v1, "chunksBeforeLF":I
    move v3, p3

    .line 1714
    .end local p3    # "inputPtr":I
    .local v3, "inputPtr":I
    :goto_0
    if-gt v3, v4, :cond_2

    .line 1715
    iget v6, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    if-le v6, v5, :cond_0

    .line 1716
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1719
    :cond_0
    add-int/lit8 p3, v3, 0x1

    .end local v3    # "inputPtr":I
    .restart local p3    # "inputPtr":I
    aget-byte v6, p2, v3

    shl-int/lit8 v0, v6, 0x8

    .line 1720
    .local v0, "b24":I
    add-int/lit8 v3, p3, 0x1

    .end local p3    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    aget-byte v6, p2, p3

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v0, v6

    .line 1721
    shl-int/lit8 v6, v0, 0x8

    add-int/lit8 p3, v3, 0x1

    .end local v3    # "inputPtr":I
    .restart local p3    # "inputPtr":I
    aget-byte v7, p2, v3

    and-int/lit16 v7, v7, 0xff

    or-int v0, v6, v7

    .line 1722
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v7, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-virtual {p1, v0, v6, v7}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Chunk(I[BI)I

    move-result v6

    iput v6, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1723
    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_1

    .line 1725
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v7, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    const/16 v8, 0x5c

    aput-byte v8, v6, v7

    .line 1726
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v7, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    const/16 v8, 0x6e

    aput-byte v8, v6, v7

    .line 1727
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v6

    shr-int/lit8 v1, v6, 0x2

    :cond_1
    move v3, p3

    .line 1729
    .end local p3    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    goto :goto_0

    .line 1732
    .end local v0    # "b24":I
    :cond_2
    sub-int v2, p4, v3

    .line 1733
    .local v2, "inputLeft":I
    if-lez v2, :cond_5

    .line 1734
    iget v6, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    if-le v6, v5, :cond_3

    .line 1735
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1737
    :cond_3
    add-int/lit8 p3, v3, 0x1

    .end local v3    # "inputPtr":I
    .restart local p3    # "inputPtr":I
    aget-byte v6, p2, v3

    shl-int/lit8 v0, v6, 0x10

    .line 1738
    .restart local v0    # "b24":I
    const/4 v6, 0x2

    if-ne v2, v6, :cond_4

    .line 1739
    add-int/lit8 v3, p3, 0x1

    .end local p3    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    aget-byte v6, p2, p3

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v0, v6

    move p3, v3

    .line 1741
    .end local v3    # "inputPtr":I
    .restart local p3    # "inputPtr":I
    :cond_4
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v7, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-virtual {p1, v0, v2, v6, v7}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Partial(II[BI)I

    move-result v6

    iput v6, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1743
    .end local v0    # "b24":I
    :goto_1
    return-void

    .end local p3    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    :cond_5
    move p3, v3

    .end local v3    # "inputPtr":I
    .restart local p3    # "inputPtr":I
    goto :goto_1
.end method

.method protected final _writePPFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V
    .locals 6
    .param p1, "name"    # Lcom/fasterxml/jackson/core/SerializableString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x22

    const/4 v0, 0x1

    .line 389
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v1

    .line 390
    .local v1, "status":I
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 391
    const-string v2, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_reportError(Ljava/lang/String;)V

    .line 393
    :cond_0
    if-ne v1, v0, :cond_5

    .line 394
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v2, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeObjectEntrySeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 399
    :goto_0
    iget-boolean v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgUnqNames:Z

    if-nez v2, :cond_6

    .line 400
    .local v0, "addQuotes":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 401
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_1

    .line 402
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 404
    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v5, v2, v3

    .line 406
    :cond_2
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->asQuotedUTF8()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeBytes([B)V

    .line 407
    if-eqz v0, :cond_4

    .line 408
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_3

    .line 409
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 411
    :cond_3
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v5, v2, v3

    .line 413
    :cond_4
    return-void

    .line 396
    .end local v0    # "addQuotes":Z
    :cond_5
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v2, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->beforeObjectEntries(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 399
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected final _writePPFieldName(Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x22

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 349
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v1

    .line 350
    .local v1, "status":I
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 351
    const-string v2, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_reportError(Ljava/lang/String;)V

    .line 353
    :cond_0
    if-ne v1, v3, :cond_1

    .line 354
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v2, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeObjectEntrySeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 358
    :goto_0
    iget-boolean v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgUnqNames:Z

    if-eqz v2, :cond_2

    .line 359
    invoke-direct {p0, p1, v5}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegments(Ljava/lang/String;Z)V

    .line 385
    :goto_1
    return-void

    .line 356
    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v2, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->beforeObjectEntries(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 362
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 363
    .local v0, "len":I
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBufferLength:I

    if-le v0, v2, :cond_3

    .line 364
    invoke-direct {p0, p1, v3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegments(Ljava/lang/String;Z)V

    goto :goto_1

    .line 367
    :cond_3
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_4

    .line 368
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 370
    :cond_4
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v6, v2, v3

    .line 371
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    invoke-virtual {p1, v5, v0, v2, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 373
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputMaxContiguous:I

    if-gt v0, v2, :cond_7

    .line 374
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v2, v3, :cond_5

    .line 375
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 377
    :cond_5
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    invoke-direct {p0, v2, v5, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegment([CII)V

    .line 381
    :goto_2
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_6

    .line 382
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 384
    :cond_6
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v6, v2, v3

    goto :goto_1

    .line 379
    :cond_7
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    invoke-direct {p0, v2, v5, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegments([CII)V

    goto :goto_2
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1030
    invoke-super {p0}, Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;->close()V

    .line 1036
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    if-eqz v1, :cond_1

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1039
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->getOutputContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-result-object v0

    .line 1040
    .local v0, "ctxt":Lcom/fasterxml/jackson/core/JsonStreamContext;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->inArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1041
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->writeEndArray()V

    goto :goto_0

    .line 1042
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->inObject()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1043
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 1049
    .end local v0    # "ctxt":Lcom/fasterxml/jackson/core/JsonStreamContext;
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1050
    const/4 v1, 0x0

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1058
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_3

    .line 1059
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/io/IOContext;->isResourceManaged()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1060
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 1067
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_releaseBuffers()V

    .line 1068
    return-void

    .line 1061
    :cond_4
    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1063
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    goto :goto_1
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1019
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1020
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 1021
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 1025
    :cond_0
    return-void
.end method

.method public getOutputBuffered()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    return v0
.end method

.method public getOutputTarget()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;I)I
    .locals 7
    .param p1, "b64variant"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .param p2, "data"    # Ljava/io/InputStream;
    .param p3, "dataLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x22

    .line 714
    const-string v3, "write a binary value"

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 716
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v3, v4, :cond_0

    .line 717
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 719
    :cond_0
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v6, v3, v4

    .line 720
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/io/IOContext;->allocBase64Buffer()[B

    move-result-object v1

    .line 723
    .local v1, "encodingBuffer":[B
    if-gez p3, :cond_2

    .line 724
    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;[B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 733
    .local v0, "bytes":I
    :goto_0
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseBase64Buffer([B)V

    .line 736
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v3, v4, :cond_1

    .line 737
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 739
    :cond_1
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v6, v3, v4

    .line 740
    return v0

    .line 726
    .end local v0    # "bytes":I
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;[BI)I

    move-result v2

    .line 727
    .local v2, "missing":I
    if-lez v2, :cond_3

    .line 728
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too few bytes available: missing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes (out of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_reportError(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 730
    :cond_3
    move v0, p3

    .restart local v0    # "bytes":I
    goto :goto_0

    .line 733
    .end local v0    # "bytes":I
    .end local v2    # "missing":I
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v4, v1}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseBase64Buffer([B)V

    throw v3
.end method

.method public writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V
    .locals 4
    .param p1, "b64variant"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 695
    const-string v0, "write a binary value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 697
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 698
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 701
    add-int v0, p3, p4

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V

    .line 703
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 704
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 706
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 707
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 5
    .param p1, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 920
    const-string v2, "write a boolean value"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 921
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x5

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_0

    .line 922
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 924
    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->TRUE_BYTES:[B

    .line 925
    .local v0, "keyword":[B
    :goto_0
    array-length v1, v0

    .line 926
    .local v1, "len":I
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 927
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 928
    return-void

    .line 924
    .end local v0    # "keyword":[B
    .end local v1    # "len":I
    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->FALSE_BYTES:[B

    goto :goto_0
.end method

.method public final writeEndArray()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->inArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an ARRAY but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_reportError(Ljava/lang/String;)V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getEntryCount()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeEndArray(Lcom/fasterxml/jackson/core/JsonGenerator;I)V

    .line 308
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 309
    return-void

    .line 303
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_2

    .line 304
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    const/16 v2, 0x5d

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public final writeEndObject()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->inObject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an object but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_reportError(Ljava/lang/String;)V

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getEntryCount()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeEndObject(Lcom/fasterxml/jackson/core/JsonGenerator;I)V

    .line 340
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 341
    return-void

    .line 335
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_2

    .line 336
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 338
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    const/16 v2, 0x7d

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V
    .locals 6
    .param p1, "name"    # Lcom/fasterxml/jackson/core/SerializableString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x22

    .line 230
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-eqz v2, :cond_0

    .line 231
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writePPFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V

    .line 262
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v1

    .line 235
    .local v1, "status":I
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 236
    const-string v2, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_reportError(Ljava/lang/String;)V

    .line 238
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 239
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_2

    .line 240
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 242
    :cond_2
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    const/16 v4, 0x2c

    aput-byte v4, v2, v3

    .line 244
    :cond_3
    iget-boolean v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgUnqNames:Z

    if-eqz v2, :cond_4

    .line 245
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeUnq(Lcom/fasterxml/jackson/core/SerializableString;)V

    goto :goto_0

    .line 248
    :cond_4
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_5

    .line 249
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 251
    :cond_5
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v5, v2, v3

    .line 252
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-interface {p1, v2, v3}, Lcom/fasterxml/jackson/core/SerializableString;->appendQuotedUTF8([BI)I

    move-result v0

    .line 253
    .local v0, "len":I
    if-gez v0, :cond_7

    .line 254
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->asQuotedUTF8()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeBytes([B)V

    .line 258
    :goto_1
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_6

    .line 259
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 261
    :cond_6
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v5, v2, v3

    goto :goto_0

    .line 256
    :cond_7
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    goto :goto_1
.end method

.method public writeFieldName(Ljava/lang/String;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x22

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 180
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-eqz v2, :cond_0

    .line 181
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writePPFieldName(Ljava/lang/String;)V

    .line 225
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v1

    .line 185
    .local v1, "status":I
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 186
    const-string v2, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_reportError(Ljava/lang/String;)V

    .line 188
    :cond_1
    if-ne v1, v6, :cond_3

    .line 189
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_2

    .line 190
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 192
    :cond_2
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    const/16 v4, 0x2c

    aput-byte v4, v2, v3

    .line 197
    :cond_3
    iget-boolean v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgUnqNames:Z

    if-eqz v2, :cond_4

    .line 198
    invoke-direct {p0, p1, v5}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegments(Ljava/lang/String;Z)V

    goto :goto_0

    .line 201
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 203
    .local v0, "len":I
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBufferLength:I

    if-le v0, v2, :cond_5

    .line 204
    invoke-direct {p0, p1, v6}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegments(Ljava/lang/String;Z)V

    goto :goto_0

    .line 207
    :cond_5
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_6

    .line 208
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 210
    :cond_6
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v7, v2, v3

    .line 212
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputMaxContiguous:I

    if-gt v0, v2, :cond_9

    .line 213
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v2, v3, :cond_7

    .line 214
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 216
    :cond_7
    invoke-direct {p0, p1, v5, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegment(Ljava/lang/String;II)V

    .line 221
    :goto_1
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_8

    .line 222
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 224
    :cond_8
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v7, v2, v3

    goto :goto_0

    .line 218
    :cond_9
    invoke-direct {p0, p1, v5, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegments(Ljava/lang/String;II)V

    goto :goto_1
.end method

.method public writeNull()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 934
    const-string v0, "write a null"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 935
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeNull()V

    .line 936
    return-void
.end method

.method public writeNumber(D)V
    .locals 1
    .param p1, "d"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 845
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgNumbersAsStrings:Z

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 849
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 855
    :goto_0
    return-void

    .line 853
    :cond_2
    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 854
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeNumber(F)V
    .locals 1
    .param p1, "f"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 861
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgNumbersAsStrings:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 865
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 871
    :goto_0
    return-void

    .line 869
    :cond_2
    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 870
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeNumber(I)V
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 778
    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 780
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0xb

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 781
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 783
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_1

    .line 784
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeQuotedInt(I)V

    .line 788
    :goto_0
    return-void

    .line 787
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt(I[BI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    goto :goto_0
.end method

.method public writeNumber(J)V
    .locals 3
    .param p1, "l"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 804
    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 805
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_0

    .line 806
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeQuotedLong(J)V

    .line 814
    :goto_0
    return-void

    .line 809
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x15

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 811
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 813
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-static {p1, p2, v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputLong(J[BI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    goto :goto_0
.end method

.method public writeNumber(Ljava/lang/String;)V
    .locals 1
    .param p1, "encodedValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 895
    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 896
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_0

    .line 897
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeQuotedRaw(Ljava/lang/String;)V

    .line 901
    :goto_0
    return-void

    .line 899
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeNumber(Ljava/math/BigDecimal;)V
    .locals 2
    .param p1, "value"    # Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 878
    const-string v1, "write a number"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 879
    if-nez p1, :cond_0

    .line 880
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeNull()V

    .line 889
    :goto_0
    return-void

    .line 881
    :cond_0
    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v1, :cond_2

    .line 882
    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    .line 883
    .local v0, "raw":Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeQuotedRaw(Ljava/lang/String;)V

    goto :goto_0

    .line 882
    .end local v0    # "raw":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 884
    :cond_2
    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 885
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0

    .line 887
    :cond_3
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeNumber(Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "value"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 830
    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 831
    if-nez p1, :cond_0

    .line 832
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeNull()V

    .line 838
    :goto_0
    return-void

    .line 833
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_1

    .line 834
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeQuotedRaw(Ljava/lang/String;)V

    goto :goto_0

    .line 836
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeNumber(S)V
    .locals 2
    .param p1, "s"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 753
    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 755
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x6

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 756
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 758
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_1

    .line 759
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeQuotedShort(S)V

    .line 763
    :goto_0
    return-void

    .line 762
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt(I[BI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    goto :goto_0
.end method

.method public writeRaw(C)V
    .locals 4
    .param p1, "ch"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 630
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v1, v1, 0x3

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_0

    .line 631
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    .line 634
    .local v0, "bbuf":[B
    const/16 v1, 0x7f

    if-gt p1, v1, :cond_1

    .line 635
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 642
    :goto_0
    return-void

    .line 636
    :cond_1
    const/16 v1, 0x800

    if-ge p1, v1, :cond_2

    .line 637
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    shr-int/lit8 v2, p1, 0x6

    or-int/lit16 v2, v2, 0xc0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 638
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    and-int/lit8 v2, p1, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0

    .line 640
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v3, v3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputRawMultiByteChar(I[CII)I

    goto :goto_0
.end method

.method public writeRaw(Lcom/fasterxml/jackson/core/SerializableString;)V
    .locals 2
    .param p1, "text"    # Lcom/fasterxml/jackson/core/SerializableString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 566
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->asUnquotedUTF8()[B

    move-result-object v0

    .line 567
    .local v0, "raw":[B
    array-length v1, v0

    if-lez v1, :cond_0

    .line 568
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeBytes([B)V

    .line 570
    :cond_0
    return-void
.end method

.method public writeRaw(Ljava/lang/String;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 535
    const/4 v4, 0x0

    .line 536
    .local v4, "start":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 537
    .local v2, "len":I
    :goto_0
    if-lez v2, :cond_1

    .line 538
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    .line 539
    .local v1, "buf":[C
    array-length v0, v1

    .line 540
    .local v0, "blen":I
    if-ge v2, v0, :cond_0

    move v3, v2

    .line 541
    .local v3, "len2":I
    :goto_1
    add-int v5, v4, v3

    invoke-virtual {p1, v4, v5, v1, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 542
    invoke-virtual {p0, v1, v6, v3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->writeRaw([CII)V

    .line 543
    add-int/2addr v4, v3

    .line 544
    sub-int/2addr v2, v3

    .line 545
    goto :goto_0

    .end local v3    # "len2":I
    :cond_0
    move v3, v0

    .line 540
    goto :goto_1

    .line 546
    .end local v0    # "blen":I
    .end local v1    # "buf":[C
    :cond_1
    return-void
.end method

.method public writeRaw(Ljava/lang/String;II)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 552
    :goto_0
    if-lez p3, :cond_1

    .line 553
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    .line 554
    .local v1, "buf":[C
    array-length v0, v1

    .line 555
    .local v0, "blen":I
    if-ge p3, v0, :cond_0

    move v2, p3

    .line 556
    .local v2, "len2":I
    :goto_1
    add-int v3, p2, v2

    invoke-virtual {p1, p2, v3, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 557
    invoke-virtual {p0, v1, v4, v2}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->writeRaw([CII)V

    .line 558
    add-int/2addr p2, v2

    .line 559
    sub-int/2addr p3, v2

    .line 560
    goto :goto_0

    .end local v2    # "len2":I
    :cond_0
    move v2, v0

    .line 555
    goto :goto_1

    .line 561
    .end local v0    # "blen":I
    .end local v1    # "buf":[C
    :cond_1
    return-void
.end method

.method public final writeRaw([CII)V
    .locals 6
    .param p1, "cbuf"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 589
    add-int v3, p3, p3

    add-int v1, v3, p3

    .line 590
    .local v1, "len3":I
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v3, v4, :cond_2

    .line 592
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-ge v3, v1, :cond_1

    .line 593
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeSegmentedRaw([CII)V

    .line 624
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 600
    :cond_2
    add-int/2addr p3, p2

    .line 604
    :goto_1
    if-ge p2, p3, :cond_0

    .line 607
    :cond_3
    aget-char v0, p1, p2

    .line 608
    .local v0, "ch":I
    const/16 v3, 0x7f

    if-le v0, v3, :cond_4

    .line 616
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "offset":I
    .local v2, "offset":I
    aget-char v0, p1, p2

    .line 617
    .local v0, "ch":C
    const/16 v3, 0x800

    if-ge v0, v3, :cond_5

    .line 618
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    shr-int/lit8 v5, v0, 0x6

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 619
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    and-int/lit8 v5, v0, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move p2, v2

    .end local v2    # "offset":I
    .restart local p2    # "offset":I
    goto :goto_1

    .line 611
    .local v0, "ch":I
    :cond_4
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    int-to-byte v5, v0

    aput-byte v5, v3, v4

    .line 612
    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_3

    goto :goto_0

    .line 621
    .end local p2    # "offset":I
    .local v0, "ch":C
    .restart local v2    # "offset":I
    :cond_5
    invoke-direct {p0, v0, p1, v2, p3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputRawMultiByteChar(I[CII)I

    move-result p2

    .end local v2    # "offset":I
    .restart local p2    # "offset":I
    goto :goto_1
.end method

.method public writeRawUTF8String([BII)V
    .locals 4
    .param p1, "text"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 493
    const-string v0, "write a string"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 494
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 495
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 498
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeBytes([BII)V

    .line 499
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 500
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 503
    return-void
.end method

.method public writeRawValue(Lcom/fasterxml/jackson/core/SerializableString;)V
    .locals 2
    .param p1, "text"    # Lcom/fasterxml/jackson/core/SerializableString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 575
    const-string v1, "write a raw (unencoded) value"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 576
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->asUnquotedUTF8()[B

    move-result-object v0

    .line 577
    .local v0, "raw":[B
    array-length v1, v0

    if-lez v1, :cond_0

    .line 578
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeBytes([B)V

    .line 580
    :cond_0
    return-void
.end method

.method public final writeStartArray()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->createChildArrayContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 284
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeStartArray(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 292
    :goto_0
    return-void

    .line 287
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 288
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    const/16 v2, 0x5b

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public final writeStartObject()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    const-string v0, "start an object"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->createChildObjectContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 316
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeStartObject(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 324
    :goto_0
    return-void

    .line 319
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 320
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    const/16 v2, 0x7b

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public final writeString(Lcom/fasterxml/jackson/core/SerializableString;)V
    .locals 5
    .param p1, "text"    # Lcom/fasterxml/jackson/core/SerializableString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x22

    .line 473
    const-string v1, "write a string"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 474
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_0

    .line 475
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 477
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v4, v1, v2

    .line 478
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-interface {p1, v1, v2}, Lcom/fasterxml/jackson/core/SerializableString;->appendQuotedUTF8([BI)I

    move-result v0

    .line 479
    .local v0, "len":I
    if-gez v0, :cond_2

    .line 480
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->asQuotedUTF8()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeBytes([B)V

    .line 484
    :goto_0
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_1

    .line 485
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 487
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v4, v1, v2

    .line 488
    return-void

    .line 482
    :cond_2
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    goto :goto_0
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x22

    .line 424
    const-string v1, "write a string"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 425
    if-nez p1, :cond_0

    .line 426
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeNull()V

    .line 444
    :goto_0
    return-void

    .line 430
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 431
    .local v0, "len":I
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputMaxContiguous:I

    if-le v0, v1, :cond_1

    .line 432
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegments(Ljava/lang/String;Z)V

    goto :goto_0

    .line 435
    :cond_1
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_2

    .line 436
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 438
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v4, v1, v2

    .line 439
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegment(Ljava/lang/String;II)V

    .line 440
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_3

    .line 441
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 443
    :cond_3
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v4, v1, v2

    goto :goto_0
.end method

.method public writeString([CII)V
    .locals 4
    .param p1, "text"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 449
    const-string v0, "write a string"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 450
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 451
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 455
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputMaxContiguous:I

    if-gt p3, v0, :cond_3

    .line 456
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v0, v1, :cond_1

    .line 457
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 459
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegment([CII)V

    .line 464
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_2

    .line 465
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 467
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 468
    return-void

    .line 461
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegments([CII)V

    goto :goto_0
.end method

.method public writeUTF8String([BII)V
    .locals 4
    .param p1, "text"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 508
    const-string v0, "write a string"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 509
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 510
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 514
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputMaxContiguous:I

    if-gt p3, v0, :cond_2

    .line 515
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeUTF8Segment([BII)V

    .line 519
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 520
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 523
    return-void

    .line 517
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeUTF8Segments([BII)V

    goto :goto_0
.end method
