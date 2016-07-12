.class public abstract Lorg/apache/commons/io/input/ProxyReader;
.super Ljava/io/FilterReader;
.source "ProxyReader.java"


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0
    .param p1, "proxy"    # Ljava/io/Reader;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    .line 45
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
    .line 244
    return-void
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
    .line 224
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
    .line 163
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

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
    .line 256
    throw p1
.end method

.method public declared-synchronized mark(I)V
    .locals 2
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v1, p1}, Ljava/io/Reader;->mark(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :goto_0
    monitor-exit p0

    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 177
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->markSupported()Z

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

    .line 55
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, v4}, Lorg/apache/commons/io/input/ProxyReader;->beforeRead(I)V

    .line 56
    iget-object v4, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v4}, Ljava/io/Reader;->read()I

    move-result v0

    .line 57
    .local v0, "c":I
    if-eq v0, v2, :cond_0

    :goto_0
    invoke-virtual {p0, v3}, Lorg/apache/commons/io/input/ProxyReader;->afterRead(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v0    # "c":I
    :goto_1
    return v0

    .restart local v0    # "c":I
    :cond_0
    move v3, v2

    .line 57
    goto :goto_0

    .line 59
    .end local v0    # "c":I
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    move v0, v2

    .line 61
    goto :goto_1
.end method

.method public read(Ljava/nio/CharBuffer;)I
    .locals 3
    .param p1, "target"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->length()I

    move-result v2

    :goto_0
    invoke-virtual {p0, v2}, Lorg/apache/commons/io/input/ProxyReader;->beforeRead(I)V

    .line 116
    iget-object v2, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v2, p1}, Ljava/io/Reader;->read(Ljava/nio/CharBuffer;)I

    move-result v1

    .line 117
    .local v1, "n":I
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/input/ProxyReader;->afterRead(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v1    # "n":I
    :goto_1
    return v1

    .line 115
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    .line 121
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public read([C)I
    .locals 3
    .param p1, "chr"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    if-eqz p1, :cond_0

    :try_start_0
    array-length v2, p1

    :goto_0
    invoke-virtual {p0, v2}, Lorg/apache/commons/io/input/ProxyReader;->beforeRead(I)V

    .line 75
    iget-object v2, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v2, p1}, Ljava/io/Reader;->read([C)I

    move-result v1

    .line 76
    .local v1, "n":I
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/input/ProxyReader;->afterRead(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v1    # "n":I
    :goto_1
    return v1

    .line 74
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    .line 80
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public read([CII)I
    .locals 3
    .param p1, "chr"    # [C
    .param p2, "st"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    :try_start_0
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/input/ProxyReader;->beforeRead(I)V

    .line 96
    iget-object v2, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .line 97
    .local v1, "n":I
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/input/ProxyReader;->afterRead(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v1    # "n":I
    :goto_0
    return v1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    .line 101
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public ready()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->ready()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 152
    :goto_0
    return v1

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    .line 152
    const/4 v1, 0x0

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
    .line 190
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :goto_0
    monitor-exit p0

    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 190
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
    .line 134
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v1, p1, p2}, Ljava/io/Reader;->skip(J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 137
    :goto_0
    return-wide v2

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    .line 137
    const-wide/16 v2, 0x0

    goto :goto_0
.end method
