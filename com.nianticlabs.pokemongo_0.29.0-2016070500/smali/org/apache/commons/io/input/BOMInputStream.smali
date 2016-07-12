.class public Lorg/apache/commons/io/input/BOMInputStream;
.super Lorg/apache/commons/io/input/ProxyInputStream;
.source "BOMInputStream.java"


# static fields
.field private static final ByteOrderMarkLengthComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/apache/commons/io/ByteOrderMark;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final boms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/io/ByteOrderMark;",
            ">;"
        }
    .end annotation
.end field

.field private byteOrderMark:Lorg/apache/commons/io/ByteOrderMark;

.field private fbIndex:I

.field private fbLength:I

.field private firstBytes:[I

.field private final include:Z

.field private markFbIndex:I

.field private markedAtStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lorg/apache/commons/io/input/BOMInputStream$1;

    invoke-direct {v0}, Lorg/apache/commons/io/input/BOMInputStream$1;-><init>()V

    sput-object v0, Lorg/apache/commons/io/input/BOMInputStream;->ByteOrderMarkLengthComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "delegate"    # Ljava/io/InputStream;

    .prologue
    const/4 v2, 0x0

    .line 107
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/io/ByteOrderMark;

    sget-object v1, Lorg/apache/commons/io/ByteOrderMark;->UTF_8:Lorg/apache/commons/io/ByteOrderMark;

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v2, v0}, Lorg/apache/commons/io/input/BOMInputStream;-><init>(Ljava/io/InputStream;Z[Lorg/apache/commons/io/ByteOrderMark;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 3
    .param p1, "delegate"    # Ljava/io/InputStream;
    .param p2, "include"    # Z

    .prologue
    .line 119
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/io/ByteOrderMark;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/commons/io/ByteOrderMark;->UTF_8:Lorg/apache/commons/io/ByteOrderMark;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/input/BOMInputStream;-><init>(Ljava/io/InputStream;Z[Lorg/apache/commons/io/ByteOrderMark;)V

    .line 120
    return-void
.end method

.method public varargs constructor <init>(Ljava/io/InputStream;Z[Lorg/apache/commons/io/ByteOrderMark;)V
    .locals 2
    .param p1, "delegate"    # Ljava/io/InputStream;
    .param p2, "include"    # Z
    .param p3, "boms"    # [Lorg/apache/commons/io/ByteOrderMark;

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V

    .line 164
    if-eqz p3, :cond_0

    array-length v0, p3

    if-nez v0, :cond_1

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No BOMs specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_1
    iput-boolean p2, p0, Lorg/apache/commons/io/input/BOMInputStream;->include:Z

    .line 169
    sget-object v0, Lorg/apache/commons/io/input/BOMInputStream;->ByteOrderMarkLengthComparator:Ljava/util/Comparator;

    invoke-static {p3, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 170
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->boms:Ljava/util/List;

    .line 172
    return-void
.end method

.method public varargs constructor <init>(Ljava/io/InputStream;[Lorg/apache/commons/io/ByteOrderMark;)V
    .locals 1
    .param p1, "delegate"    # Ljava/io/InputStream;
    .param p2, "boms"    # [Lorg/apache/commons/io/ByteOrderMark;

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/io/input/BOMInputStream;-><init>(Ljava/io/InputStream;Z[Lorg/apache/commons/io/ByteOrderMark;)V

    .line 132
    return-void
.end method

.method private find()Lorg/apache/commons/io/ByteOrderMark;
    .locals 3

    .prologue
    .line 272
    iget-object v2, p0, Lorg/apache/commons/io/input/BOMInputStream;->boms:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/ByteOrderMark;

    .line 273
    .local v0, "bom":Lorg/apache/commons/io/ByteOrderMark;
    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/BOMInputStream;->matches(Lorg/apache/commons/io/ByteOrderMark;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    .end local v0    # "bom":Lorg/apache/commons/io/ByteOrderMark;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private matches(Lorg/apache/commons/io/ByteOrderMark;)Z
    .locals 3
    .param p1, "bom"    # Lorg/apache/commons/io/ByteOrderMark;

    .prologue
    .line 292
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/io/ByteOrderMark;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 293
    invoke-virtual {p1, v0}, Lorg/apache/commons/io/ByteOrderMark;->get(I)I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/io/input/BOMInputStream;->firstBytes:[I

    aget v2, v2, v0

    if-eq v1, v2, :cond_0

    .line 294
    const/4 v1, 0x0

    .line 297
    :goto_1
    return v1

    .line 292
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private readFirstBytes()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    invoke-virtual {p0}, Lorg/apache/commons/io/input/BOMInputStream;->getBOM()Lorg/apache/commons/io/ByteOrderMark;

    .line 263
    iget v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->fbIndex:I

    iget v1, p0, Lorg/apache/commons/io/input/BOMInputStream;->fbLength:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->firstBytes:[I

    iget v1, p0, Lorg/apache/commons/io/input/BOMInputStream;->fbIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/io/input/BOMInputStream;->fbIndex:I

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public getBOM()Lorg/apache/commons/io/ByteOrderMark;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 211
    iget-object v2, p0, Lorg/apache/commons/io/input/BOMInputStream;->firstBytes:[I

    if-nez v2, :cond_1

    .line 212
    iput v4, p0, Lorg/apache/commons/io/input/BOMInputStream;->fbLength:I

    .line 214
    iget-object v2, p0, Lorg/apache/commons/io/input/BOMInputStream;->boms:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/io/ByteOrderMark;

    invoke-virtual {v2}, Lorg/apache/commons/io/ByteOrderMark;->length()I

    move-result v1

    .line 215
    .local v1, "maxBomSize":I
    new-array v2, v1, [I

    iput-object v2, p0, Lorg/apache/commons/io/input/BOMInputStream;->firstBytes:[I

    .line 217
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/io/input/BOMInputStream;->firstBytes:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 218
    iget-object v2, p0, Lorg/apache/commons/io/input/BOMInputStream;->firstBytes:[I

    iget-object v3, p0, Lorg/apache/commons/io/input/BOMInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    aput v3, v2, v0

    .line 219
    iget v2, p0, Lorg/apache/commons/io/input/BOMInputStream;->fbLength:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/io/input/BOMInputStream;->fbLength:I

    .line 220
    iget-object v2, p0, Lorg/apache/commons/io/input/BOMInputStream;->firstBytes:[I

    aget v2, v2, v0

    if-gez v2, :cond_2

    .line 225
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/io/input/BOMInputStream;->find()Lorg/apache/commons/io/ByteOrderMark;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/io/input/BOMInputStream;->byteOrderMark:Lorg/apache/commons/io/ByteOrderMark;

    .line 226
    iget-object v2, p0, Lorg/apache/commons/io/input/BOMInputStream;->byteOrderMark:Lorg/apache/commons/io/ByteOrderMark;

    if-eqz v2, :cond_1

    .line 227
    iget-boolean v2, p0, Lorg/apache/commons/io/input/BOMInputStream;->include:Z

    if-nez v2, :cond_1

    .line 228
    iget-object v2, p0, Lorg/apache/commons/io/input/BOMInputStream;->byteOrderMark:Lorg/apache/commons/io/ByteOrderMark;

    invoke-virtual {v2}, Lorg/apache/commons/io/ByteOrderMark;->length()I

    move-result v2

    iget-object v3, p0, Lorg/apache/commons/io/input/BOMInputStream;->firstBytes:[I

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 229
    iget-object v2, p0, Lorg/apache/commons/io/input/BOMInputStream;->byteOrderMark:Lorg/apache/commons/io/ByteOrderMark;

    invoke-virtual {v2}, Lorg/apache/commons/io/ByteOrderMark;->length()I

    move-result v2

    iput v2, p0, Lorg/apache/commons/io/input/BOMInputStream;->fbIndex:I

    .line 236
    .end local v0    # "i":I
    .end local v1    # "maxBomSize":I
    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/io/input/BOMInputStream;->byteOrderMark:Lorg/apache/commons/io/ByteOrderMark;

    return-object v2

    .line 217
    .restart local v0    # "i":I
    .restart local v1    # "maxBomSize":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_3
    iput v4, p0, Lorg/apache/commons/io/input/BOMInputStream;->fbLength:I

    goto :goto_1
.end method

.method public getBOMCharsetName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-virtual {p0}, Lorg/apache/commons/io/input/BOMInputStream;->getBOM()Lorg/apache/commons/io/ByteOrderMark;

    .line 249
    iget-object v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->byteOrderMark:Lorg/apache/commons/io/ByteOrderMark;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->byteOrderMark:Lorg/apache/commons/io/ByteOrderMark;

    invoke-virtual {v0}, Lorg/apache/commons/io/ByteOrderMark;->getCharsetName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasBOM()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-virtual {p0}, Lorg/apache/commons/io/input/BOMInputStream;->getBOM()Lorg/apache/commons/io/ByteOrderMark;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBOM(Lorg/apache/commons/io/ByteOrderMark;)Z
    .locals 3
    .param p1, "bom"    # Lorg/apache/commons/io/ByteOrderMark;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->boms:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stream not configure to detect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->byteOrderMark:Lorg/apache/commons/io/ByteOrderMark;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/io/input/BOMInputStream;->getBOM()Lorg/apache/commons/io/ByteOrderMark;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/ByteOrderMark;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    .prologue
    .line 368
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->fbIndex:I

    iput v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->markFbIndex:I

    .line 369
    iget-object v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->firstBytes:[I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->markedAtStart:Z

    .line 370
    iget-object v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    monitor-exit p0

    return-void

    .line 369
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    invoke-direct {p0}, Lorg/apache/commons/io/input/BOMInputStream;->readFirstBytes()I

    move-result v0

    .line 314
    .local v0, "b":I
    if-ltz v0, :cond_0

    .end local v0    # "b":I
    :goto_0
    return v0

    .restart local v0    # "b":I
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/io/input/BOMInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/io/input/BOMInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    const/4 v1, 0x0

    .line 333
    .local v1, "firstCount":I
    const/4 v0, 0x0

    .local v0, "b":I
    move v2, p2

    .line 334
    .end local p2    # "off":I
    .local v2, "off":I
    :cond_0
    :goto_0
    if-lez p3, :cond_1

    if-ltz v0, :cond_1

    .line 335
    invoke-direct {p0}, Lorg/apache/commons/io/input/BOMInputStream;->readFirstBytes()I

    move-result v0

    .line 336
    if-ltz v0, :cond_0

    .line 337
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "off":I
    .restart local p2    # "off":I
    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    .line 338
    add-int/lit8 p3, p3, -0x1

    .line 339
    add-int/lit8 v1, v1, 0x1

    move v2, p2

    .end local p2    # "off":I
    .restart local v2    # "off":I
    goto :goto_0

    .line 342
    :cond_1
    iget-object v4, p0, Lorg/apache/commons/io/input/BOMInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4, p1, v2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 343
    .local v3, "secondCount":I
    if-gez v3, :cond_3

    if-lez v1, :cond_2

    .end local v1    # "firstCount":I
    :goto_1
    return v1

    .restart local v1    # "firstCount":I
    :cond_2
    const/4 v1, -0x1

    goto :goto_1

    :cond_3
    add-int/2addr v1, v3

    goto :goto_1
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->markFbIndex:I

    iput v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->fbIndex:I

    .line 382
    iget-boolean v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->markedAtStart:Z

    if-eqz v0, :cond_0

    .line 383
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->firstBytes:[I

    .line 386
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    monitor-exit p0

    return-void

    .line 381
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 3
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/io/input/BOMInputStream;->readFirstBytes()I

    move-result v0

    if-ltz v0, :cond_0

    .line 401
    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    goto :goto_0

    .line 403
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
