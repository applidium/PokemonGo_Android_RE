.class Lcom/google/android/gms/location/internal/zzf$3;
.super Lcom/google/android/gms/location/internal/zzf$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/location/internal/zzf;->removeGeofences(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaFt:Lcom/google/android/gms/location/internal/zzf;

.field final synthetic zzaFu:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/internal/zzf$3;->zzaFt:Lcom/google/android/gms/location/internal/zzf;

    iput-object p3, p0, Lcom/google/android/gms/location/internal/zzf$3;->zzaFu:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/google/android/gms/location/internal/zzf$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/location/internal/zzl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/internal/zzf$3;->zza(Lcom/google/android/gms/location/internal/zzl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/location/internal/zzl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzf$3;->zzaFu:Ljava/util/List;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/location/internal/zzl;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzlb$zzb;)V

    return-void
.end method
