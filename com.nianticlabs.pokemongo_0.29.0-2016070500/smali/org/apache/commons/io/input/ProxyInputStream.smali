.class public abstract Lorg/apache/commons/io/input/ProxyInputStream;
.super Ljava/io/FilterInputStream;
.source "ProxyInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "proxy"    # Ljava/io/InputStream;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 47
    return-void
.end method


# virtual methods
.method protected afterRead(I)V
    .locals 0
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    return-void
.end method

.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 134
    :goto_0
    return v1

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyInputStream;->handleIOException(Ljava/io/IOException;)V

    .line 134
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected beforeRead(I)V
    .locals 0
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyInputStream;->handleIOException(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method protected handleIOException(Ljava/io/IOException;)V
    .locals 0
    .param p1, "e"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    throw p1
.end method

.method public declared-synchronized mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit p0

    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 57
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, v4}, Lorg/apache/commons/io/input/ProxyInputStream;->beforeRead(I)V

    .line 58
    iget-object v4, p0, Lorg/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 59
    .local v0, "b":I
    if-eq v0, v2, :cond_0

    :goto_0
    invoke-virtual {p0, v3}, Lorg/apache/commons/io/input/ProxyInputStream;->afterRead(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v0    # "b":I
    :goto_1
    return v0

    .restart local v0    # "b":I
    :cond_0
    move v3, v2

    .line 59
    goto :goto_0

    .line 61
    .end local v0    # "b":I
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/input/ProxyInputStream;->handleIOException(Ljava/io/IOException;)V

    move v0, v2

    .line 63
    goto :goto_1
.end method

.method public read([B)I
    .locals 3
    .param p1, "bts"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    if-eqz p1, :cond_0

    :try_start_0
    array-length v2, p1

    :goto_0
    invoke-virtual {p0, v2}, Lorg/apache/commons/io/input/ProxyInputStream;->beforeRead(I)V

    .line 77
    iget-object v2, p0, Lorg/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 78
    .local v1, "n":I
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/input/ProxyInputStream;->afterRead(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v1    # "n":I
    :goto_1
    return v1

    .line 76
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyInputStream;->handleIOException(Ljava/io/IOException;)V

    .line 82
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public read([BII)I
    .locals 3
    .param p1, "bts"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    :try_start_0
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/input/ProxyInputStream;->beforeRead(I)V

    .line 98
    iget-object v2, p0, Lorg/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 99
    .local v1, "n":I
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/input/ProxyInputStream;->afterRead(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v1    # "n":I
    :goto_0
    return v1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyInputStream;->handleIOException(Ljava/io/IOException;)V

    .line 103
    const/4 v1, -0x1

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
    .line 167
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :goto_0
    monitor-exit p0

    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyInputStream;->handleIOException(Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 167
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public skip(J)J
    .locals 5
    .param p1, "ln"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2}, Ljava/io/InputStream;->skip(J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 119
    :goto_0
    return-wide v2

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyInputStream;->handleIOException(Ljava/io/IOException;)V

    .line 119
    const-wide/16 v2, 0x0

    goto :goto_0
.end method
