.class public Lorg/apache/commons/io/output/ProxyOutputStream;
.super Ljava/io/FilterOutputStream;
.source "ProxyOutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "proxy"    # Ljava/io/OutputStream;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected afterWrite(I)V
    .locals 0
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    return-void
.end method

.method protected beforeWrite(I)V
    .locals 0
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
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
    .line 117
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/io/output/ProxyOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyOutputStream;->handleIOException(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/io/output/ProxyOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyOutputStream;->handleIOException(Ljava/io/IOException;)V

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
    .line 166
    throw p1
.end method

.method public write(I)V
    .locals 2
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/output/ProxyOutputStream;->beforeWrite(I)V

    .line 55
    iget-object v1, p0, Lorg/apache/commons/io/output/ProxyOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    .line 56
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/io/output/ProxyOutputStream;->afterWrite(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyOutputStream;->handleIOException(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method public write([B)V
    .locals 3
    .param p1, "bts"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    if-eqz p1, :cond_0

    :try_start_0
    array-length v1, p1

    .line 71
    .local v1, "len":I
    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/output/ProxyOutputStream;->beforeWrite(I)V

    .line 72
    iget-object v2, p0, Lorg/apache/commons/io/output/ProxyOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 73
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/output/ProxyOutputStream;->afterWrite(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v1    # "len":I
    :goto_1
    return-void

    .line 70
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyOutputStream;->handleIOException(Ljava/io/IOException;)V

    goto :goto_1
.end method

.method public write([BII)V
    .locals 2
    .param p1, "bts"    # [B
    .param p2, "st"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    :try_start_0
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/output/ProxyOutputStream;->beforeWrite(I)V

    .line 90
    iget-object v1, p0, Lorg/apache/commons/io/output/ProxyOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 91
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/output/ProxyOutputStream;->afterWrite(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyOutputStream;->handleIOException(Ljava/io/IOException;)V

    goto :goto_0
.end method
