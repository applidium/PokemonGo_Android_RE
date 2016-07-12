.class public final Lcom/google/android/gms/common/api/PendingResults;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/PendingResults$zza;,
        Lcom/google/android/gms/common/api/PendingResults$zzb;,
        Lcom/google/android/gms/common/api/PendingResults$zzc;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canceledPendingResult()Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzlo;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzlo;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlo;->cancel()V

    return-object v0
.end method

.method public static canceledPendingResult(Lcom/google/android/gms/common/api/Result;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/Result;",
            ">(TR;)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .local p0, "result":Lcom/google/android/gms/common/api/Result;, "TR;"
    const-string v0, "Result must not be null"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Status code must be CommonStatusCodes.CANCELED"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/common/api/PendingResults$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/PendingResults$zza;-><init>(Lcom/google/android/gms/common/api/Result;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResults$zza;->cancel()V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static immediatePendingResult(Lcom/google/android/gms/common/api/Result;)Lcom/google/android/gms/common/api/OptionalPendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/Result;",
            ">(TR;)",
            "Lcom/google/android/gms/common/api/OptionalPendingResult",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .local p0, "result":Lcom/google/android/gms/common/api/Result;, "TR;"
    const-string v0, "Result must not be null"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/common/api/PendingResults$zzc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/PendingResults$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/PendingResults$zzc;->zzb(Lcom/google/android/gms/common/api/Result;)V

    new-instance v1, Lcom/google/android/gms/internal/zzln;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzln;-><init>(Lcom/google/android/gms/common/api/PendingResult;)V

    return-object v1
.end method

.method public static immediatePendingResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .param p0, "result"    # Lcom/google/android/gms/common/api/Status;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "Result must not be null"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzlo;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzlo;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzlo;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-object v0
.end method

.method public static zza(Lcom/google/android/gms/common/api/Result;Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/Result;",
            ">(TR;",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<TR;>;"
        }
    .end annotation

    const-string v0, "Result must not be null"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Status code must not be SUCCESS"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/common/api/PendingResults$zzb;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/common/api/PendingResults$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/Result;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/PendingResults$zzb;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    const-string v0, "Result must not be null"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzlo;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzlo;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzlo;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-object v0
.end method
