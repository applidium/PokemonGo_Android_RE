.class public final Lcom/google/android/gms/internal/zzmt;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Ljava/io/InputStream;Ljava/io/OutputStream;Z)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzmt;->zza(Ljava/io/InputStream;Ljava/io/OutputStream;ZI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static zza(Ljava/io/InputStream;Ljava/io/OutputStream;ZI)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-array v2, p3, [B

    const-wide/16 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    :try_start_0
    array-length v4, v2

    invoke-virtual {p0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    int-to-long v4, v3

    add-long/2addr v0, v4

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz p2, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzmt;->zzb(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzmt;->zzb(Ljava/io/Closeable;)V

    :cond_0
    throw v0

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p0}, Lcom/google/android/gms/internal/zzmt;->zzb(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzmt;->zzb(Ljava/io/Closeable;)V

    :cond_2
    return-wide v0
.end method

.method public static zza(Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static zza(Ljava/io/InputStream;Z)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/zzmt;->zza(Ljava/io/InputStream;Ljava/io/OutputStream;Z)J

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static zzb(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static zzk(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzmt;->zza(Ljava/io/InputStream;Z)[B

    move-result-object v0

    return-object v0
.end method
