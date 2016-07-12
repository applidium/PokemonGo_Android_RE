.class public abstract Lcom/google/android/gms/internal/zzse;
.super Ljava/lang/Object;


# instance fields
.field protected volatile zzbiv:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzse;->zzbiv:I

    return-void
.end method

.method public static final zza(Lcom/google/android/gms/internal/zzse;[B)Lcom/google/android/gms/internal/zzse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/zzse;",
            ">(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzsd;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzse;->zzb(Lcom/google/android/gms/internal/zzse;[BII)Lcom/google/android/gms/internal/zzse;

    move-result-object v0

    return-object v0
.end method

.method public static final zza(Lcom/google/android/gms/internal/zzse;[BII)V
    .locals 3

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/zzrx;->zzb([BII)Lcom/google/android/gms/internal/zzrx;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzse;->zza(Lcom/google/android/gms/internal/zzrx;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrx;->zzFE()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final zzb(Lcom/google/android/gms/internal/zzse;[BII)Lcom/google/android/gms/internal/zzse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/zzse;",
            ">(TT;[BII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzsd;
        }
    .end annotation

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/zzrw;->zza([BII)Lcom/google/android/gms/internal/zzrw;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzse;->zzb(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzse;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzrw;->zzlz(I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzsd; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final zzf(Lcom/google/android/gms/internal/zzse;)[B
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzse;->zzFR()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzse;->zza(Lcom/google/android/gms/internal/zzse;[BII)V

    return-object v0
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzse;->zzFG()Lcom/google/android/gms/internal/zzse;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/zzsf;->zzg(Lcom/google/android/gms/internal/zzse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected zzB()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public zzFG()Lcom/google/android/gms/internal/zzse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzse;

    return-object v0
.end method

.method public zzFQ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzse;->zzbiv:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzse;->zzFR()I

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzse;->zzbiv:I

    return v0
.end method

.method public zzFR()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzse;->zzB()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzse;->zzbiv:I

    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzrx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public abstract zzb(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
