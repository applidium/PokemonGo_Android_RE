.class public Lorg/apache/commons/io/output/CountingOutputStream;
.super Lorg/apache/commons/io/output/ProxyOutputStream;
.source "CountingOutputStream.java"


# instance fields
.field private count:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/ProxyOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/io/output/CountingOutputStream;->count:J

    .line 42
    return-void
.end method


# virtual methods
.method protected declared-synchronized beforeWrite(I)V
    .locals 4
    .param p1, "n"    # I

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/apache/commons/io/output/CountingOutputStream;->count:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/output/CountingOutputStream;->count:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getByteCount()J
    .locals 2

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/apache/commons/io/output/CountingOutputStream;->count:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCount()I
    .locals 5

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/apache/commons/io/output/CountingOutputStream;->getByteCount()J

    move-result-wide v0

    .line 70
    .local v0, "result":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 71
    new-instance v2, Ljava/lang/ArithmeticException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The byte count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is too large to be converted to an int"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public declared-synchronized resetByteCount()J
    .locals 4

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/apache/commons/io/output/CountingOutputStream;->count:J

    .line 120
    .local v0, "tmp":J
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/apache/commons/io/output/CountingOutputStream;->count:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-wide v0

    .line 119
    .end local v0    # "tmp":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public resetCount()I
    .locals 5

    .prologue
    .line 87
    invoke-virtual {p0}, Lorg/apache/commons/io/output/CountingOutputStream;->resetByteCount()J

    move-result-wide v0

    .line 88
    .local v0, "result":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 89
    new-instance v2, Ljava/lang/ArithmeticException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The byte count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is too large to be converted to an int"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    :cond_0
    long-to-int v2, v0

    return v2
.end method
