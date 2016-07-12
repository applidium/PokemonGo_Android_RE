.class public Lorg/apache/commons/io/input/BoundedInputStream;
.super Ljava/io/InputStream;
.source "BoundedInputStream.java"


# instance fields
.field private final in:Ljava/io/InputStream;

.field private mark:J

.field private final max:J

.field private pos:J

.field private propagateClose:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 74
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/io/input/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "size"    # J

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J

    .line 48
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->mark:J

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->propagateClose:Z

    .line 63
    iput-wide p2, p0, Lorg/apache/commons/io/input/BoundedInputStream;->max:J

    .line 64
    iput-object p1, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;

    .line 65
    return-void
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->max:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/BoundedInputStream;->max:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 151
    const/4 v0, 0x0

    .line 153
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    iget-boolean v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->propagateClose:Z

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 175
    :cond_0
    return-void
.end method

.method public isPropagateClose()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->propagateClose:Z

    return v0
.end method

.method public declared-synchronized mark(I)V
    .locals 2
    .param p1, "readlimit"    # I

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 194
    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J

    iput-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->mark:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    monitor-exit p0

    return-void

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    iget-wide v2, p0, Lorg/apache/commons/io/input/BoundedInputStream;->max:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    iget-wide v2, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J

    iget-wide v4, p0, Lorg/apache/commons/io/input/BoundedInputStream;->max:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 87
    const/4 v0, -0x1

    .line 91
    :goto_0
    return v0

    .line 89
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 90
    .local v0, "result":I
    iget-wide v2, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J

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
    .line 103
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/io/input/BoundedInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 10
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, -0x1

    .line 117
    iget-wide v4, p0, Lorg/apache/commons/io/input/BoundedInputStream;->max:J

    cmp-long v4, v4, v8

    if-ltz v4, :cond_0

    iget-wide v4, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J

    iget-wide v6, p0, Lorg/apache/commons/io/input/BoundedInputStream;->max:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    move v0, v1

    .line 128
    :goto_0
    return v0

    .line 120
    :cond_0
    iget-wide v4, p0, Lorg/apache/commons/io/input/BoundedInputStream;->max:J

    cmp-long v4, v4, v8

    if-ltz v4, :cond_1

    int-to-long v4, p3

    iget-wide v6, p0, Lorg/apache/commons/io/input/BoundedInputStream;->max:J

    iget-wide v8, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J

    sub-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 121
    .local v2, "maxRead":J
    :goto_1
    iget-object v4, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;

    long-to-int v5, v2

    invoke-virtual {v4, p1, p2, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 123
    .local v0, "bytesRead":I
    if-ne v0, v1, :cond_2

    move v0, v1

    .line 124
    goto :goto_0

    .line 120
    .end local v0    # "bytesRead":I
    .end local v2    # "maxRead":J
    :cond_1
    int-to-long v2, p3

    goto :goto_1

    .line 127
    .restart local v0    # "bytesRead":I
    .restart local v2    # "maxRead":J
    :cond_2
    iget-wide v4, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J

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
    .line 183
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 184
    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->mark:J

    iput-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    monitor-exit p0

    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPropagateClose(Z)V
    .locals 0
    .param p1, "propagateClose"    # Z

    .prologue
    .line 228
    iput-boolean p1, p0, Lorg/apache/commons/io/input/BoundedInputStream;->propagateClose:Z

    .line 229
    return-void
.end method

.method public skip(J)J
    .locals 9
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    iget-wide v4, p0, Lorg/apache/commons/io/input/BoundedInputStream;->max:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    iget-wide v4, p0, Lorg/apache/commons/io/input/BoundedInputStream;->max:J

    iget-wide v6, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J

    sub-long/2addr v4, v6

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 140
    .local v2, "toSkip":J
    :goto_0
    iget-object v4, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 141
    .local v0, "skippedBytes":J
    iget-wide v4, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J

    .line 142
    return-wide v0

    .end local v0    # "skippedBytes":J
    .end local v2    # "toSkip":J
    :cond_0
    move-wide v2, p1

    .line 139
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
