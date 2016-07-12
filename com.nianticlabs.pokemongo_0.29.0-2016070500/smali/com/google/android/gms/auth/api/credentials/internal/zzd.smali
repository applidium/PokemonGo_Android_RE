.class abstract Lcom/google/android/gms/auth/api/credentials/internal/zzd;
.super Lcom/google/android/gms/internal/zzlb$zza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/internal/zzlb$zza",
        "<TR;",
        "Lcom/google/android/gms/auth/api/credentials/internal/zze;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->zzRF:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzlb$zza;-><init>(Lcom/google/android/gms/common/api/Api$zzc;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected abstract zza(Landroid/content/Context;Lcom/google/android/gms/auth/api/credentials/internal/zzh;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;,
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected final zza(Lcom/google/android/gms/auth/api/credentials/internal/zze;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/internal/zze;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/internal/zze;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/credentials/internal/zzh;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/auth/api/credentials/internal/zzd;->zza(Landroid/content/Context;Lcom/google/android/gms/auth/api/credentials/internal/zzh;)V

    return-void
.end method

.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/auth/api/credentials/internal/zze;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/credentials/internal/zzd;->zza(Lcom/google/android/gms/auth/api/credentials/internal/zze;)V

    return-void
.end method
