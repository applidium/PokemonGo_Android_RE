.class public Lcom/upsight/android/internal/util/GzipHelper;
.super Ljava/lang/Object;
.source "GzipHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compress(Ljava/lang/String;)[B
    .locals 3
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v2, 0x0

    .line 39
    :goto_0
    return-object v2

    .line 30
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 32
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 34
    .local v0, "gzip":Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 39
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    throw v2
.end method

.method public static decompress([B)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    if-nez p0, :cond_0

    .line 51
    const/4 v4, 0x0

    .line 67
    :goto_0
    return-object v4

    .line 54
    :cond_0
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 55
    .local v1, "gis":Ljava/util/zip/GZIPInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 56
    .local v0, "bf":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .local v3, "res":Ljava/lang/StringBuilder;
    :goto_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 61
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 64
    .end local v2    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    throw v4

    .restart local v2    # "line":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
