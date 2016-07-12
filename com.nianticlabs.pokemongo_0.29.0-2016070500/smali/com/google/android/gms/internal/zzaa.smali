.class public Lcom/google/android/gms/internal/zzaa;
.super Ljava/io/ByteArrayOutputStream;


# instance fields
.field private final zzar:Lcom/google/android/gms/internal/zzu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzu;I)V
    .locals 2

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaa;->zzar:Lcom/google/android/gms/internal/zzu;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaa;->zzar:Lcom/google/android/gms/internal/zzu;

    const/16 v1, 0x100

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzu;->zzb(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaa;->buf:[B

    return-void
.end method

.method private zzd(I)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/zzaa;->count:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaa;->buf:[B

    array-length v1, v1

    if-gt v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaa;->zzar:Lcom/google/android/gms/internal/zzu;

    iget v1, p0, Lcom/google/android/gms/internal/zzaa;->count:I

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzu;->zzb(I)[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaa;->buf:[B

    iget v2, p0, Lcom/google/android/gms/internal/zzaa;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaa;->zzar:Lcom/google/android/gms/internal/zzu;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaa;->buf:[B

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzu;->zza([B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaa;->buf:[B

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaa;->zzar:Lcom/google/android/gms/internal/zzu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaa;->buf:[B

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzu;->zza([B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaa;->buf:[B

    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-void
.end method

.method public finalize()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaa;->zzar:Lcom/google/android/gms/internal/zzu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaa;->buf:[B

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzu;->zza([B)V

    return-void
.end method

.method public declared-synchronized write(I)V
    .locals 1
    .param p1, "oneByte"    # I

    .prologue
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaa;->zzd(I)V

    invoke-super {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/zzaa;->zzd(I)V

    invoke-super {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
