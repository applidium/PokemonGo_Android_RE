.class public final Lcom/fasterxml/jackson/core/io/UTF8Writer;
.super Ljava/io/Writer;
.source "UTF8Writer.java"


# static fields
.field static final SURR1_FIRST:I = 0xd800

.field static final SURR1_LAST:I = 0xdbff

.field static final SURR2_FIRST:I = 0xdc00

.field static final SURR2_LAST:I = 0xdfff


# instance fields
.field private final _context:Lcom/fasterxml/jackson/core/io/IOContext;

.field private _out:Ljava/io/OutputStream;

.field private _outBuffer:[B

.field private final _outBufferEnd:I

.field private _outPtr:I

.field private _surrogate:I


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/core/io/IOContext;
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 27
    iput v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_surrogate:I

    .line 31
    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    .line 32
    iput-object p2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_out:Ljava/io/OutputStream;

    .line 34
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/io/IOContext;->allocWriteEncodingBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B

    .line 39
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBufferEnd:I

    .line 40
    iput v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    .line 41
    return-void
.end method

.method protected static illegalSurrogate(I)V
    .locals 2
    .param p0, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 370
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->illegalSurrogateDesc(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static illegalSurrogateDesc(I)Ljava/lang/String;
    .locals 2
    .param p0, "code"    # I

    .prologue
    .line 375
    const v0, 0x10ffff

    if-le p0, v0, :cond_0

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal character point (0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") to output; max is 0x10FFFF as per RFC 4627"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
    :goto_0
    return-object v0

    .line 378
    :cond_0
    const v0, 0xd800

    if-lt p0, v0, :cond_2

    .line 379
    const v0, 0xdbff

    if-gt p0, v0, :cond_1

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unmatched first part of surrogate pair (0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 382
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unmatched second part of surrogate pair (0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 385
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal character point (0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") to output"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public append(C)Ljava/io/Writer;
    .locals 0
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->write(I)V

    .line 48
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .param p1, "x0"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->append(C)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 55
    iget-object v3, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_out:Ljava/io/OutputStream;

    if-eqz v3, :cond_2

    .line 56
    iget v3, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    if-lez v3, :cond_0

    .line 57
    iget-object v3, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_out:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 58
    iput v6, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    .line 60
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_out:Ljava/io/OutputStream;

    .line 61
    .local v2, "out":Ljava/io/OutputStream;
    iput-object v7, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_out:Ljava/io/OutputStream;

    .line 63
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B

    .line 64
    .local v0, "buf":[B
    if-eqz v0, :cond_1

    .line 65
    iput-object v7, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B

    .line 66
    iget-object v3, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseWriteEncodingBuffer([B)V

    .line 69
    :cond_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 74
    iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_surrogate:I

    .line 75
    .local v1, "code":I
    iput v6, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_surrogate:I

    .line 76
    if-lez v1, :cond_2

    .line 77
    invoke-static {v1}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->illegalSurrogate(I)V

    .line 80
    .end local v0    # "buf":[B
    .end local v1    # "code":I
    .end local v2    # "out":Ljava/io/OutputStream;
    :cond_2
    return-void
.end method

.method protected convertSurrogate(I)I
    .locals 4
    .param p1, "secondPart"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v3, 0xdc00

    .line 359
    iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_surrogate:I

    .line 360
    .local v0, "firstPart":I
    const/4 v1, 0x0

    iput v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_surrogate:I

    .line 363
    if-lt p1, v3, :cond_0

    const v1, 0xdfff

    if-le p1, v1, :cond_1

    .line 364
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broken surrogate pair: first char 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", second 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; illegal combination"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 366
    :cond_1
    const/high16 v1, 0x10000

    const v2, 0xd800

    sub-int v2, v0, v2

    shl-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    sub-int v2, p1, v3

    add-int/2addr v1, v2

    return v1
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 86
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 87
    iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    if-lez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 89
    iput v3, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 93
    :cond_1
    return-void
.end method

.method public write(I)V
    .locals 6
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 203
    iget v2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_surrogate:I

    if-lez v2, :cond_2

    .line 204
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->convertSurrogate(I)I

    move-result p1

    .line 216
    :cond_0
    iget v2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBufferEnd:I

    if-lt v2, v3, :cond_1

    .line 217
    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_out:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 218
    iput v5, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    .line 221
    :cond_1
    const/16 v2, 0x80

    if-ge p1, v2, :cond_4

    .line 222
    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    int-to-byte v4, p1

    aput-byte v4, v2, v3

    .line 243
    :goto_0
    return-void

    .line 206
    :cond_2
    const v2, 0xd800

    if-lt p1, v2, :cond_0

    const v2, 0xdfff

    if-gt p1, v2, :cond_0

    .line 208
    const v2, 0xdbff

    if-le p1, v2, :cond_3

    .line 209
    invoke-static {p1}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->illegalSurrogate(I)V

    .line 212
    :cond_3
    iput p1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_surrogate:I

    goto :goto_0

    .line 224
    :cond_4
    iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    .line 225
    .local v0, "ptr":I
    const/16 v2, 0x800

    if-ge p1, v2, :cond_5

    .line 226
    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "ptr":I
    .local v1, "ptr":I
    shr-int/lit8 v3, p1, 0x6

    or-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 227
    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "ptr":I
    .restart local v0    # "ptr":I
    and-int/lit8 v3, p1, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 241
    :goto_1
    iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    goto :goto_0

    .line 228
    :cond_5
    const v2, 0xffff

    if-gt p1, v2, :cond_6

    .line 229
    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "ptr":I
    .restart local v1    # "ptr":I
    shr-int/lit8 v3, p1, 0xc

    or-int/lit16 v3, v3, 0xe0

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 230
    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "ptr":I
    .restart local v0    # "ptr":I
    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 231
    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "ptr":I
    .restart local v1    # "ptr":I
    and-int/lit8 v3, p1, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    move v0, v1

    .end local v1    # "ptr":I
    .restart local v0    # "ptr":I
    goto :goto_1

    .line 233
    :cond_6
    const v2, 0x10ffff

    if-le p1, v2, :cond_7

    .line 234
    invoke-static {p1}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->illegalSurrogate(I)V

    .line 236
    :cond_7
    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "ptr":I
    .restart local v1    # "ptr":I
    shr-int/lit8 v3, p1, 0x12

    or-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 237
    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "ptr":I
    .restart local v0    # "ptr":I
    shr-int/lit8 v3, p1, 0xc

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 238
    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "ptr":I
    .restart local v1    # "ptr":I
    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 239
    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "ptr":I
    .restart local v0    # "ptr":I
    and-int/lit8 v3, p1, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    goto :goto_1
.end method

.method public write(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->write(Ljava/lang/String;II)V

    .line 249
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 12
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x80

    .line 254
    const/4 v9, 0x2

    if-ge p3, v9, :cond_1

    .line 255
    const/4 v9, 0x1

    if-ne p3, v9, :cond_0

    .line 256
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {p0, v9}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->write(I)V

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget v9, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_surrogate:I

    if-lez v9, :cond_2

    .line 263
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .local v3, "off":I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 264
    .local v8, "second":C
    add-int/lit8 p3, p3, -0x1

    .line 265
    invoke-virtual {p0, v8}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->convertSurrogate(I)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->write(I)V

    move p2, v3

    .line 269
    .end local v3    # "off":I
    .end local v8    # "second":C
    .restart local p2    # "off":I
    :cond_2
    iget v6, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    .line 270
    .local v6, "outPtr":I
    iget-object v4, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B

    .line 271
    .local v4, "outBuf":[B
    iget v5, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBufferEnd:I

    .line 274
    .local v5, "outBufLast":I
    add-int/2addr p3, p2

    move v3, p2

    .line 277
    .end local p2    # "off":I
    .restart local v3    # "off":I
    :goto_1
    if-ge v3, p3, :cond_e

    .line 281
    if-lt v6, v5, :cond_3

    .line 282
    iget-object v9, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_out:Ljava/io/OutputStream;

    const/4 v10, 0x0

    invoke-virtual {v9, v4, v10, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 283
    const/4 v6, 0x0

    .line 286
    :cond_3
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "off":I
    .restart local p2    # "off":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 288
    .local v0, "c":I
    if-ge v0, v11, :cond_d

    .line 289
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .local v7, "outPtr":I
    int-to-byte v9, v0

    aput-byte v9, v4, v6

    .line 291
    sub-int v1, p3, p2

    .line 292
    .local v1, "maxInCount":I
    sub-int v2, v5, v7

    .line 294
    .local v2, "maxOutCount":I
    if-le v1, v2, :cond_4

    .line 295
    move v1, v2

    .line 297
    :cond_4
    add-int/2addr v1, p2

    move v3, p2

    .line 300
    .end local p2    # "off":I
    .restart local v3    # "off":I
    :goto_2
    if-lt v3, v1, :cond_5

    move v6, v7

    .line 301
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto :goto_1

    .line 303
    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :cond_5
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "off":I
    .restart local p2    # "off":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 304
    if-lt v0, v11, :cond_6

    move v3, p2

    .line 312
    .end local v1    # "maxInCount":I
    .end local v2    # "maxOutCount":I
    .end local p2    # "off":I
    .restart local v3    # "off":I
    :goto_3
    const/16 v9, 0x800

    if-ge v0, v9, :cond_7

    .line 313
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    shr-int/lit8 v9, v0, 0x6

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    .line 314
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    and-int/lit8 v9, v0, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v6

    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    move p2, v3

    .end local v3    # "off":I
    .restart local p2    # "off":I
    :goto_4
    move v3, p2

    .line 343
    .end local p2    # "off":I
    .restart local v3    # "off":I
    goto :goto_1

    .line 307
    .end local v3    # "off":I
    .end local v6    # "outPtr":I
    .restart local v1    # "maxInCount":I
    .restart local v2    # "maxOutCount":I
    .restart local v7    # "outPtr":I
    .restart local p2    # "off":I
    :cond_6
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    int-to-byte v9, v0

    aput-byte v9, v4, v7

    move v7, v6

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    move v3, p2

    .end local p2    # "off":I
    .restart local v3    # "off":I
    goto :goto_2

    .line 317
    .end local v1    # "maxInCount":I
    .end local v2    # "maxOutCount":I
    :cond_7
    const v9, 0xd800

    if-lt v0, v9, :cond_8

    const v9, 0xdfff

    if-le v0, v9, :cond_9

    .line 318
    :cond_8
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    shr-int/lit8 v9, v0, 0xc

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    .line 319
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    shr-int/lit8 v9, v0, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v6

    .line 320
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    and-int/lit8 v9, v0, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    goto :goto_1

    .line 324
    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :cond_9
    const v9, 0xdbff

    if-le v0, v9, :cond_a

    .line 325
    iput v7, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    .line 326
    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->illegalSurrogate(I)V

    .line 328
    :cond_a
    iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_surrogate:I

    .line 330
    if-lt v3, p3, :cond_b

    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    move p2, v3

    .line 344
    .end local v0    # "c":I
    .end local v3    # "off":I
    .restart local p2    # "off":I
    :goto_5
    iput v6, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    goto/16 :goto_0

    .line 333
    .end local v6    # "outPtr":I
    .end local p2    # "off":I
    .restart local v0    # "c":I
    .restart local v3    # "off":I
    .restart local v7    # "outPtr":I
    :cond_b
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "off":I
    .restart local p2    # "off":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {p0, v9}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->convertSurrogate(I)I

    move-result v0

    .line 334
    const v9, 0x10ffff

    if-le v0, v9, :cond_c

    .line 335
    iput v7, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    .line 336
    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->illegalSurrogate(I)V

    .line 338
    :cond_c
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    shr-int/lit8 v9, v0, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    .line 339
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    shr-int/lit8 v9, v0, 0xc

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v6

    .line 340
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    shr-int/lit8 v9, v0, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    .line 341
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    and-int/lit8 v9, v0, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v6

    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto/16 :goto_4

    :cond_d
    move v7, v6

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    move v3, p2

    .end local p2    # "off":I
    .restart local v3    # "off":I
    goto/16 :goto_3

    .end local v0    # "c":I
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    :cond_e
    move p2, v3

    .end local v3    # "off":I
    .restart local p2    # "off":I
    goto :goto_5
.end method

.method public write([C)V
    .locals 2
    .param p1, "cbuf"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->write([CII)V

    .line 100
    return-void
.end method

.method public write([CII)V
    .locals 12
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x80

    .line 106
    const/4 v9, 0x2

    if-ge p3, v9, :cond_1

    .line 107
    const/4 v9, 0x1

    if-ne p3, v9, :cond_0

    .line 108
    aget-char v9, p1, p2

    invoke-virtual {p0, v9}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->write(I)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iget v9, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_surrogate:I

    if-lez v9, :cond_2

    .line 115
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .local v3, "off":I
    aget-char v8, p1, p2

    .line 116
    .local v8, "second":C
    add-int/lit8 p3, p3, -0x1

    .line 117
    invoke-virtual {p0, v8}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->convertSurrogate(I)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->write(I)V

    move p2, v3

    .line 121
    .end local v3    # "off":I
    .end local v8    # "second":C
    .restart local p2    # "off":I
    :cond_2
    iget v6, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    .line 122
    .local v6, "outPtr":I
    iget-object v4, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B

    .line 123
    .local v4, "outBuf":[B
    iget v5, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBufferEnd:I

    .line 126
    .local v5, "outBufLast":I
    add-int/2addr p3, p2

    move v3, p2

    .line 129
    .end local p2    # "off":I
    .restart local v3    # "off":I
    :goto_1
    if-ge v3, p3, :cond_e

    .line 133
    if-lt v6, v5, :cond_3

    .line 134
    iget-object v9, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_out:Ljava/io/OutputStream;

    const/4 v10, 0x0

    invoke-virtual {v9, v4, v10, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 135
    const/4 v6, 0x0

    .line 138
    :cond_3
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "off":I
    .restart local p2    # "off":I
    aget-char v0, p1, v3

    .line 140
    .local v0, "c":I
    if-ge v0, v11, :cond_d

    .line 141
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .local v7, "outPtr":I
    int-to-byte v9, v0

    aput-byte v9, v4, v6

    .line 143
    sub-int v1, p3, p2

    .line 144
    .local v1, "maxInCount":I
    sub-int v2, v5, v7

    .line 146
    .local v2, "maxOutCount":I
    if-le v1, v2, :cond_4

    .line 147
    move v1, v2

    .line 149
    :cond_4
    add-int/2addr v1, p2

    move v3, p2

    .line 152
    .end local p2    # "off":I
    .restart local v3    # "off":I
    :goto_2
    if-lt v3, v1, :cond_5

    move v6, v7

    .line 153
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto :goto_1

    .line 155
    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :cond_5
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "off":I
    .restart local p2    # "off":I
    aget-char v0, p1, v3

    .line 156
    if-lt v0, v11, :cond_6

    move v3, p2

    .line 164
    .end local v1    # "maxInCount":I
    .end local v2    # "maxOutCount":I
    .end local p2    # "off":I
    .restart local v3    # "off":I
    :goto_3
    const/16 v9, 0x800

    if-ge v0, v9, :cond_7

    .line 165
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    shr-int/lit8 v9, v0, 0x6

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    .line 166
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    and-int/lit8 v9, v0, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v6

    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    move p2, v3

    .end local v3    # "off":I
    .restart local p2    # "off":I
    :goto_4
    move v3, p2

    .line 195
    .end local p2    # "off":I
    .restart local v3    # "off":I
    goto :goto_1

    .line 159
    .end local v3    # "off":I
    .end local v6    # "outPtr":I
    .restart local v1    # "maxInCount":I
    .restart local v2    # "maxOutCount":I
    .restart local v7    # "outPtr":I
    .restart local p2    # "off":I
    :cond_6
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    int-to-byte v9, v0

    aput-byte v9, v4, v7

    move v7, v6

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    move v3, p2

    .end local p2    # "off":I
    .restart local v3    # "off":I
    goto :goto_2

    .line 169
    .end local v1    # "maxInCount":I
    .end local v2    # "maxOutCount":I
    :cond_7
    const v9, 0xd800

    if-lt v0, v9, :cond_8

    const v9, 0xdfff

    if-le v0, v9, :cond_9

    .line 170
    :cond_8
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    shr-int/lit8 v9, v0, 0xc

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    .line 171
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    shr-int/lit8 v9, v0, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v6

    .line 172
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    and-int/lit8 v9, v0, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    goto :goto_1

    .line 176
    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :cond_9
    const v9, 0xdbff

    if-le v0, v9, :cond_a

    .line 177
    iput v7, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    .line 178
    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->illegalSurrogate(I)V

    .line 180
    :cond_a
    iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_surrogate:I

    .line 182
    if-lt v3, p3, :cond_b

    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    move p2, v3

    .line 196
    .end local v0    # "c":I
    .end local v3    # "off":I
    .restart local p2    # "off":I
    :goto_5
    iput v6, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    goto/16 :goto_0

    .line 185
    .end local v6    # "outPtr":I
    .end local p2    # "off":I
    .restart local v0    # "c":I
    .restart local v3    # "off":I
    .restart local v7    # "outPtr":I
    :cond_b
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "off":I
    .restart local p2    # "off":I
    aget-char v9, p1, v3

    invoke-virtual {p0, v9}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->convertSurrogate(I)I

    move-result v0

    .line 186
    const v9, 0x10ffff

    if-le v0, v9, :cond_c

    .line 187
    iput v7, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    .line 188
    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->illegalSurrogate(I)V

    .line 190
    :cond_c
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    shr-int/lit8 v9, v0, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    .line 191
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    shr-int/lit8 v9, v0, 0xc

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v6

    .line 192
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    shr-int/lit8 v9, v0, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    .line 193
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    and-int/lit8 v9, v0, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v6

    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto/16 :goto_4

    :cond_d
    move v7, v6

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    move v3, p2

    .end local p2    # "off":I
    .restart local v3    # "off":I
    goto/16 :goto_3

    .end local v0    # "c":I
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    :cond_e
    move p2, v3

    .end local v3    # "off":I
    .restart local p2    # "off":I
    goto :goto_5
.end method
