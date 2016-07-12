.class public Lcom/fasterxml/jackson/core/io/UTF32Reader;
.super Ljava/io/Reader;
.source "UTF32Reader.java"


# static fields
.field protected static final LAST_VALID_UNICODE_CHAR:I = 0x10ffff

.field protected static final NC:C


# instance fields
.field protected final _bigEndian:Z

.field protected _buffer:[B

.field protected _byteCount:I

.field protected _charCount:I

.field protected final _context:Lcom/fasterxml/jackson/core/io/IOContext;

.field protected _in:Ljava/io/InputStream;

.field protected _length:I

.field protected final _managedBuffers:Z

.field protected _ptr:I

.field protected _surrogate:C

.field protected _tmpBuf:[C


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/InputStream;[BIIZ)V
    .locals 2
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/core/io/IOContext;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "buf"    # [B
    .param p4, "ptr"    # I
    .param p5, "len"    # I
    .param p6, "isBigEndian"    # Z

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 37
    iput-char v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_surrogate:C

    .line 42
    iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_charCount:I

    .line 47
    iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_byteCount:I

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_tmpBuf:[C

    .line 58
    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    .line 59
    iput-object p2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_in:Ljava/io/InputStream;

    .line 60
    iput-object p3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    .line 61
    iput p4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    .line 62
    iput p5, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    .line 63
    iput-boolean p6, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_bigEndian:Z

    .line 64
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_managedBuffers:Z

    .line 65
    return-void
.end method

.method private freeBuffers()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    .line 255
    .local v0, "buf":[B
    if-eqz v0, :cond_0

    .line 256
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    .line 257
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseReadIOBuffer([B)V

    .line 259
    :cond_0
    return-void
.end method

.method private loadMore(I)Z
    .locals 9
    .param p1, "available"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 199
    iget v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_byteCount:I

    iget v5, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    sub-int/2addr v5, p1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_byteCount:I

    .line 202
    if-lez p1, :cond_4

    .line 203
    iget v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    if-lez v4, :cond_0

    .line 204
    iget-object v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    iget-object v6, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    invoke-static {v4, v5, v6, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    iput v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    .line 207
    :cond_0
    iput p1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    .line 231
    :goto_0
    iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    if-ge v1, v8, :cond_a

    .line 232
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_in:Ljava/io/InputStream;

    if-nez v1, :cond_9

    move v0, v3

    .line 233
    .local v0, "count":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 234
    if-gez v0, :cond_2

    .line 235
    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_managedBuffers:Z

    if-eqz v1, :cond_1

    .line 236
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->freeBuffers()V

    .line 238
    :cond_1
    iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    invoke-direct {p0, v1, v8}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->reportUnexpectedEOF(II)V

    .line 241
    :cond_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->reportStrangeStream()V

    .line 243
    :cond_3
    iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    goto :goto_0

    .line 212
    .end local v0    # "count":I
    :cond_4
    iput v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    .line 213
    iget-object v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_in:Ljava/io/InputStream;

    if-nez v4, :cond_6

    move v0, v3

    .line 214
    .restart local v0    # "count":I
    :goto_2
    if-ge v0, v2, :cond_8

    .line 215
    iput v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    .line 216
    if-gez v0, :cond_7

    .line 217
    iget-boolean v2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_managedBuffers:Z

    if-eqz v2, :cond_5

    .line 218
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->freeBuffers()V

    .line 245
    .end local v0    # "count":I
    :cond_5
    :goto_3
    return v1

    .line 213
    :cond_6
    iget-object v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_in:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_2

    .line 223
    .restart local v0    # "count":I
    :cond_7
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->reportStrangeStream()V

    .line 225
    :cond_8
    iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    goto :goto_0

    .line 232
    .end local v0    # "count":I
    :cond_9
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_in:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    iget-object v6, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    array-length v6, v6

    iget v7, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    sub-int/2addr v6, v7

    invoke-virtual {v1, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_1

    :cond_a
    move v1, v2

    .line 245
    goto :goto_3
.end method

.method private reportBounds([CII)V
    .locals 3
    .param p1, "cbuf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read(buf,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), cbuf["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private reportInvalid(IILjava/lang/String;)V
    .locals 5
    .param p1, "value"    # I
    .param p2, "offset"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    iget v2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_byteCount:I

    iget v3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    add-int/2addr v2, v3

    add-int/lit8 v0, v2, -0x1

    .local v0, "bytePos":I
    iget v2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_charCount:I

    add-int v1, v2, p2

    .line 189
    .local v1, "charPos":I
    new-instance v2, Ljava/io/CharConversionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid UTF-32 character 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at char #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", byte #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private reportStrangeStream()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Strange I/O stream, returned 0 bytes on read"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private reportUnexpectedEOF(II)V
    .locals 5
    .param p1, "gotBytes"    # I
    .param p2, "needed"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    iget v2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_byteCount:I

    add-int v0, v2, p1

    .local v0, "bytePos":I
    iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_charCount:I

    .line 183
    .local v1, "charPos":I
    new-instance v2, Ljava/io/CharConversionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected EOF in the middle of a 4-byte UTF-32 char: got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", needed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", at char #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", byte #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_in:Ljava/io/InputStream;

    .line 77
    .local v0, "in":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 78
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_in:Ljava/io/InputStream;

    .line 79
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->freeBuffers()V

    .line 80
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 82
    :cond_0
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 93
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_tmpBuf:[C

    if-nez v0, :cond_0

    .line 94
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_tmpBuf:[C

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_tmpBuf:[C

    invoke-virtual {p0, v0, v2, v1}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->read([CII)I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 97
    const/4 v0, -0x1

    .line 99
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_tmpBuf:[C

    aget-char v0, v0, v2

    goto :goto_0
.end method

.method public read([CII)I
    .locals 9
    .param p1, "cbuf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v8, 0x10ffff

    const/4 v5, -0x1

    .line 105
    iget-object v6, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    if-nez v6, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v5

    .line 106
    :cond_1
    const/4 v6, 0x1

    if-ge p3, v6, :cond_2

    move v5, p3

    goto :goto_0

    .line 108
    :cond_2
    if-ltz p2, :cond_3

    add-int v6, p2, p3

    array-length v7, p1

    if-le v6, v7, :cond_4

    .line 109
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->reportBounds([CII)V

    .line 112
    :cond_4
    add-int/2addr p3, p2

    .line 113
    move v2, p2

    .line 116
    .local v2, "outPtr":I
    iget-char v6, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_surrogate:C

    if-eqz v6, :cond_7

    .line 117
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "outPtr":I
    .local v3, "outPtr":I
    iget-char v5, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_surrogate:C

    aput-char v5, p1, v2

    .line 118
    const/4 v5, 0x0

    iput-char v5, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_surrogate:C

    .line 133
    :cond_5
    :goto_1
    if-ge v3, p3, :cond_c

    .line 134
    iget v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    .line 137
    .local v4, "ptr":I
    iget-boolean v5, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_bigEndian:Z

    if-eqz v5, :cond_9

    .line 138
    iget-object v5, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    aget-byte v5, v5, v4

    shl-int/lit8 v5, v5, 0x18

    iget-object v6, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    add-int/lit8 v7, v4, 0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    iget-object v6, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    add-int/lit8 v7, v4, 0x2

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    iget-object v6, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    add-int/lit8 v7, v4, 0x3

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    or-int v0, v5, v6

    .line 144
    .local v0, "ch":I
    :goto_2
    iget v5, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    .line 148
    const v5, 0xffff

    if-le v0, v5, :cond_a

    .line 149
    if-le v0, v8, :cond_6

    .line 150
    sub-int v5, v3, p2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(above "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v0, v5, v6}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->reportInvalid(IILjava/lang/String;)V

    .line 153
    :cond_6
    const/high16 v5, 0x10000

    sub-int/2addr v0, v5

    .line 154
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "outPtr":I
    .restart local v2    # "outPtr":I
    const v5, 0xd800

    shr-int/lit8 v6, v0, 0xa

    add-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, p1, v3

    .line 156
    const v5, 0xdc00

    and-int/lit16 v6, v0, 0x3ff

    or-int v0, v5, v6

    .line 158
    if-lt v2, p3, :cond_b

    .line 159
    int-to-char v5, v0

    iput-char v5, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_surrogate:C

    .line 169
    .end local v0    # "ch":I
    .end local v4    # "ptr":I
    :goto_3
    sub-int p3, v2, p2

    .line 170
    iget v5, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_charCount:I

    add-int/2addr v5, p3

    iput v5, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_charCount:I

    move v5, p3

    .line 171
    goto/16 :goto_0

    .line 124
    :cond_7
    iget v6, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    iget v7, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    sub-int v1, v6, v7

    .line 125
    .local v1, "left":I
    const/4 v6, 0x4

    if-ge v1, v6, :cond_8

    .line 126
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->loadMore(I)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_8
    move v3, v2

    .end local v2    # "outPtr":I
    .restart local v3    # "outPtr":I
    goto/16 :goto_1

    .line 141
    .end local v1    # "left":I
    .restart local v4    # "ptr":I
    :cond_9
    iget-object v5, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    aget-byte v5, v5, v4

    and-int/lit16 v5, v5, 0xff

    iget-object v6, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    add-int/lit8 v7, v4, 0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    iget-object v6, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    add-int/lit8 v7, v4, 0x2

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    iget-object v6, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    add-int/lit8 v7, v4, 0x3

    aget-byte v6, v6, v7

    shl-int/lit8 v6, v6, 0x18

    or-int v0, v5, v6

    .restart local v0    # "ch":I
    goto/16 :goto_2

    :cond_a
    move v2, v3

    .line 163
    .end local v3    # "outPtr":I
    .restart local v2    # "outPtr":I
    :cond_b
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "outPtr":I
    .restart local v3    # "outPtr":I
    int-to-char v5, v0

    aput-char v5, p1, v2

    .line 164
    iget v5, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    iget v6, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    if-lt v5, v6, :cond_5

    move v2, v3

    .line 165
    .end local v3    # "outPtr":I
    .restart local v2    # "outPtr":I
    goto :goto_3

    .end local v0    # "ch":I
    .end local v2    # "outPtr":I
    .end local v4    # "ptr":I
    .restart local v3    # "outPtr":I
    :cond_c
    move v2, v3

    .end local v3    # "outPtr":I
    .restart local v2    # "outPtr":I
    goto :goto_3
.end method
