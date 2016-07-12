.class public abstract Lcom/google/android/gms/internal/zzry;
.super Lcom/google/android/gms/internal/zzse;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/zzry",
        "<TM;>;>",
        "Lcom/google/android/gms/internal/zzse;"
    }
.end annotation


# instance fields
.field protected zzbik:Lcom/google/android/gms/internal/zzsa;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzse;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzry;->zzFF()Lcom/google/android/gms/internal/zzry;

    move-result-object v0

    return-object v0
.end method

.method protected zzB()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzry;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v1, :cond_0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzry;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsa;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzry;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzsa;->zzlS(I)Lcom/google/android/gms/internal/zzsb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsb;->zzB()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    return v1
.end method

.method public zzFF()Lcom/google/android/gms/internal/zzry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/zzse;->zzFG()Lcom/google/android/gms/internal/zzse;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzry;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzsc;->zza(Lcom/google/android/gms/internal/zzry;Lcom/google/android/gms/internal/zzry;)V

    return-object v0
.end method

.method public synthetic zzFG()Lcom/google/android/gms/internal/zzse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzry;->zzFF()Lcom/google/android/gms/internal/zzry;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzrz;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzrz",
            "<TM;TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzry;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzry;->zzbik:Lcom/google/android/gms/internal/zzsa;

    iget v2, p1, Lcom/google/android/gms/internal/zzrz;->tag:I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzsh;->zzlV(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzsa;->zzlR(I)Lcom/google/android/gms/internal/zzsb;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzsb;->zzb(Lcom/google/android/gms/internal/zzrz;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzrx;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzry;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzry;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsa;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzry;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzsa;->zzlS(I)Lcom/google/android/gms/internal/zzsb;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzsb;->zza(Lcom/google/android/gms/internal/zzrx;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzrw;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->getPosition()I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzrw;->zzlA(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/zzsh;->zzlV(I)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->getPosition()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrw;->zzx(II)[B

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/zzsg;

    invoke-direct {v2, p2, v0}, Lcom/google/android/gms/internal/zzsg;-><init>(I[B)V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzry;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-nez v3, :cond_2

    new-instance v3, Lcom/google/android/gms/internal/zzsa;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzsa;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/internal/zzry;->zzbik:Lcom/google/android/gms/internal/zzsa;

    :goto_1
    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzsb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsb;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzry;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v3, v1, v0}, Lcom/google/android/gms/internal/zzsa;->zza(ILcom/google/android/gms/internal/zzsb;)V

    :cond_1
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzsb;->zza(Lcom/google/android/gms/internal/zzsg;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzry;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzsa;->zzlR(I)Lcom/google/android/gms/internal/zzsb;

    move-result-object v0

    goto :goto_1
.end method
