.class public Lorg/apache/commons/io/output/ByteArrayOutputStream;
.super Ljava/io/OutputStream;
.source "ByteArrayOutputStream.java"


# static fields
.field private static final EMPTY_BYTE_ARRAY:[B


# instance fields
.field private final buffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private count:I

.field private currentBuffer:[B

.field private currentBufferIndex:I

.field private filledBufferSum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>(I)V

    .line 76
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    .line 86
    if-gez p1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative initial size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    monitor-enter p0

    .line 91
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->needNewBuffer(I)V

    .line 92
    monitor-exit p0

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private needNewBuffer(I)V
    .locals 3
    .param p1, "newcount"    # I

    .prologue
    .line 102
    iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    iget-object v2, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 104
    iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    iget-object v2, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    .line 106
    iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    .line 107
    iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    iget v2, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    .line 125
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    if-nez v1, :cond_1

    .line 112
    move v0, p1

    .line 113
    .local v0, "newBufferSize":I
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    .line 121
    :goto_1
    iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    .line 122
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    .line 123
    iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    .end local v0    # "newBufferSize":I
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    sub-int v2, p1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 118
    .restart local v0    # "newBufferSize":I
    iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    iget-object v2, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    goto :goto_1
.end method

.method private toBufferedInputStream()Ljava/io/InputStream;
    .locals 7

    .prologue
    .line 294
    iget v4, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    .line 295
    .local v4, "remaining":I
    if-nez v4, :cond_0

    .line 296
    new-instance v5, Lorg/apache/commons/io/input/ClosedInputStream;

    invoke-direct {v5}, Lorg/apache/commons/io/input/ClosedInputStream;-><init>()V

    .line 307
    :goto_0
    return-object v5

    .line 298
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 299
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/ByteArrayInputStream;>;"
    iget-object v5, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 300
    .local v0, "buf":[B
    array-length v5, v0

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 301
    .local v1, "c":I
    new-instance v5, Ljava/io/ByteArrayInputStream;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6, v1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    sub-int/2addr v4, v1

    .line 303
    if-nez v4, :cond_1

    .line 307
    .end local v0    # "buf":[B
    .end local v1    # "c":I
    :cond_2
    new-instance v5, Ljava/io/SequenceInputStream;

    invoke-static {v3}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/SequenceInputStream;-><init>(Ljava/util/Enumeration;)V

    goto :goto_0
.end method

.method public static toBufferedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    new-instance v0, Lorg/apache/commons/io/output/ByteArrayOutputStream;

    invoke-direct {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>()V

    .line 279
    .local v0, "output":Lorg/apache/commons/io/output/ByteArrayOutputStream;
    invoke-virtual {v0, p0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->write(Ljava/io/InputStream;)I

    .line 280
    invoke-direct {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toBufferedInputStream()Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    return-void
.end method

.method public declared-synchronized reset()V
    .locals 2

    .prologue
    .line 229
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    .line 230
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    .line 231
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    .line 232
    iget-object v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    monitor-exit p0

    return-void

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 1

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toByteArray()[B
    .locals 7

    .prologue
    .line 318
    monitor-enter p0

    :try_start_0
    iget v5, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    .line 319
    .local v5, "remaining":I
    if-nez v5, :cond_1

    .line 320
    sget-object v3, Lorg/apache/commons/io/output/ByteArrayOutputStream;->EMPTY_BYTE_ARRAY:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v3

    .line 322
    :cond_1
    :try_start_1
    new-array v3, v5, [B

    .line 323
    .local v3, "newbuf":[B
    const/4 v4, 0x0

    .line 324
    .local v4, "pos":I
    iget-object v6, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 325
    .local v0, "buf":[B
    array-length v6, v0

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 326
    .local v1, "c":I
    const/4 v6, 0x0

    invoke-static {v0, v6, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    add-int/2addr v4, v1

    .line 328
    sub-int/2addr v5, v1

    .line 329
    if-nez v5, :cond_2

    goto :goto_0

    .line 318
    .end local v0    # "buf":[B
    .end local v1    # "c":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "newbuf":[B
    .end local v4    # "pos":I
    .end local v5    # "remaining":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 343
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "enc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 356
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized write(Ljava/io/InputStream;)I
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    monitor-enter p0

    const/4 v2, 0x0

    .line 189
    .local v2, "readCount":I
    :try_start_0
    iget v3, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    iget v4, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    sub-int v0, v3, v4

    .line 190
    .local v0, "inBufferPos":I
    iget-object v3, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    iget-object v4, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v4, v4

    sub-int/2addr v4, v0

    invoke-virtual {p1, v3, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 191
    .local v1, "n":I
    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 192
    add-int/2addr v2, v1

    .line 193
    add-int/2addr v0, v1

    .line 194
    iget v3, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    add-int/2addr v3, v1

    iput v3, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    .line 195
    iget-object v3, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v3, v3

    if-ne v0, v3, :cond_0

    .line 196
    iget-object v3, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v3, v3

    invoke-direct {p0, v3}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->needNewBuffer(I)V

    .line 197
    const/4 v0, 0x0

    .line 199
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    iget-object v4, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v4, v4

    sub-int/2addr v4, v0

    invoke-virtual {p1, v3, v0, v4}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    goto :goto_0

    .line 201
    :cond_1
    monitor-exit p0

    return v2

    .line 188
    .end local v0    # "inBufferPos":I
    .end local v1    # "n":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized write(I)V
    .locals 3
    .param p1, "b"    # I

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    iget v2, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    sub-int v0, v1, v2

    .line 168
    .local v0, "inBufferPos":I
    iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 169
    iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->needNewBuffer(I)V

    .line 170
    const/4 v0, 0x0

    .line 172
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    int-to-byte v2, p1

    aput-byte v2, v1, v0

    .line 173
    iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    .line 167
    .end local v0    # "inBufferPos":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public write([BII)V
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 135
    if-ltz p2, :cond_0

    array-length v4, p1

    if-gt p2, v4, :cond_0

    if-ltz p3, :cond_0

    add-int v4, p2, p3

    array-length v5, p1

    if-gt v4, v5, :cond_0

    add-int v4, p2, p3

    if-gez v4, :cond_1

    .line 140
    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 141
    :cond_1
    if-nez p3, :cond_2

    .line 159
    :goto_0
    return-void

    .line 144
    :cond_2
    monitor-enter p0

    .line 145
    :try_start_0
    iget v4, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    add-int v1, v4, p3

    .line 146
    .local v1, "newcount":I
    move v3, p3

    .line 147
    .local v3, "remaining":I
    iget v4, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    iget v5, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    sub-int v0, v4, v5

    .line 148
    .local v0, "inBufferPos":I
    :cond_3
    :goto_1
    if-lez v3, :cond_4

    .line 149
    iget-object v4, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v4, v4

    sub-int/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 150
    .local v2, "part":I
    add-int v4, p2, p3

    sub-int/2addr v4, v3

    iget-object v5, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    invoke-static {p1, v4, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    sub-int/2addr v3, v2

    .line 152
    if-lez v3, :cond_3

    .line 153
    invoke-direct {p0, v1}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->needNewBuffer(I)V

    .line 154
    const/4 v0, 0x0

    goto :goto_1

    .line 157
    .end local v2    # "part":I
    :cond_4
    iput v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    .line 158
    monitor-exit p0

    goto :goto_0

    .end local v0    # "inBufferPos":I
    .end local v1    # "newcount":I
    .end local v3    # "remaining":I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public declared-synchronized writeTo(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    iget v3, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    .line 245
    .local v3, "remaining":I
    iget-object v4, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 246
    .local v0, "buf":[B
    array-length v4, v0

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 247
    .local v1, "c":I
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    sub-int/2addr v3, v1

    .line 249
    if-nez v3, :cond_0

    .line 253
    .end local v0    # "buf":[B
    .end local v1    # "c":I
    :cond_1
    monitor-exit p0

    return-void

    .line 244
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "remaining":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
