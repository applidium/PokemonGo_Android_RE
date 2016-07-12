.class public Lorg/apache/commons/io/input/CharSequenceInputStream;
.super Ljava/io/InputStream;
.source "CharSequenceInputStream.java"


# instance fields
.field private final bbuf:Ljava/nio/ByteBuffer;

.field private final cbuf:Ljava/nio/CharBuffer;

.field private final encoder:Ljava/nio/charset/CharsetEncoder;

.field private mark:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "charset"    # Ljava/lang/String;

    .prologue
    .line 94
    const/16 v0, 0x800

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/input/CharSequenceInputStream;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "charset"    # Ljava/lang/String;
    .param p3, "bufferSize"    # I

    .prologue
    .line 72
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lorg/apache/commons/io/input/CharSequenceInputStream;-><init>(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 83
    const/16 v0, 0x800

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/input/CharSequenceInputStream;-><init>(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;I)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "bufferSize"    # I

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 55
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->encoder:Ljava/nio/charset/CharsetEncoder;

    .line 58
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bbuf:Ljava/nio/ByteBuffer;

    .line 59
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 60
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->cbuf:Ljava/nio/CharBuffer;

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->mark:I

    .line 62
    return-void
.end method

.method private fillBuffer()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 105
    iget-object v1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v2, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->cbuf:Ljava/nio/CharBuffer;

    iget-object v3, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bbuf:Ljava/nio/ByteBuffer;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 106
    .local v0, "result":Ljava/nio/charset/CoderResult;
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 109
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 110
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->mark:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    monitor-exit p0

    return-void

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 153
    :goto_0
    return v0

    .line 151
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/io/input/CharSequenceInputStream;->fillBuffer()V

    .line 152
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/io/input/CharSequenceInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 114
    if-nez p1, :cond_0

    .line 115
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Byte array is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 117
    :cond_0
    if-ltz p3, :cond_1

    add-int v3, p2, p3

    array-length v4, p1

    if-le v3, v4, :cond_2

    .line 118
    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Array Size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", offset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 121
    :cond_2
    if-nez p3, :cond_4

    .line 122
    const/4 v2, 0x0

    .line 142
    :cond_3
    :goto_0
    return v2

    .line 124
    :cond_4
    iget-object v3, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 127
    :cond_5
    const/4 v0, 0x0

    .line 128
    .local v0, "bytesRead":I
    :cond_6
    :goto_1
    if-lez p3, :cond_8

    .line 129
    iget-object v3, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 130
    iget-object v3, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v3, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 131
    .local v1, "chunk":I
    iget-object v3, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1, p2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 132
    add-int/2addr p2, v1

    .line 133
    sub-int/2addr p3, v1

    .line 134
    add-int/2addr v0, v1

    .line 135
    goto :goto_1

    .line 136
    .end local v1    # "chunk":I
    :cond_7
    invoke-direct {p0}, Lorg/apache/commons/io/input/CharSequenceInputStream;->fillBuffer()V

    .line 137
    iget-object v3, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_6

    .line 142
    :cond_8
    if-nez v0, :cond_9

    iget-object v3, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_9

    move v0, v2

    .end local v0    # "bytesRead":I
    :cond_9
    move v2, v0

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 195
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->mark:I

    if-eq v0, v1, :cond_0

    .line 196
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->cbuf:Ljava/nio/CharBuffer;

    iget v1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->mark:I

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 197
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->mark:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :cond_0
    monitor-exit p0

    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 5
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "skipped":I
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->get()C

    .line 169
    const-wide/16 v2, 0x1

    sub-long/2addr p1, v2

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_0
    int-to-long v2, v0

    return-wide v2
.end method
