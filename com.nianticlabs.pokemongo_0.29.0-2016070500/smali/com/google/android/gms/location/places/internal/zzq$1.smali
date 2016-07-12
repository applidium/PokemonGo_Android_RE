.class Lcom/google/android/gms/location/places/internal/zzq$1;
.super Lcom/google/android/gms/location/places/zzf$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/location/places/internal/zzq;->getScaledPhoto(Lcom/google/android/gms/common/api/GoogleApiClient;II)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/location/places/zzf$zza",
        "<",
        "Lcom/google/android/gms/location/places/internal/zze;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaHN:I

.field final synthetic zzaHO:I

.field final synthetic zzaHP:Lcom/google/android/gms/location/places/internal/zzq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/places/internal/zzq;Lcom/google/android/gms/common/api/Api$zzc;Lcom/google/android/gms/common/api/GoogleApiClient;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/zzq$1;->zzaHP:Lcom/google/android/gms/location/places/internal/zzq;

    iput p4, p0, Lcom/google/android/gms/location/places/internal/zzq$1;->zzaHN:I

    iput p5, p0, Lcom/google/android/gms/location/places/internal/zzq$1;->zzaHO:I

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/location/places/zzf$zza;-><init>(Lcom/google/android/gms/common/api/Api$zzc;Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/location/places/internal/zze;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzq$1;->zza(Lcom/google/android/gms/location/places/internal/zze;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/location/places/internal/zze;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/location/places/zzf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/location/places/zzf;-><init>(Lcom/google/android/gms/location/places/zzf$zza;)V

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/zzq$1;->zzaHP:Lcom/google/android/gms/location/places/internal/zzq;

    invoke-static {v0}, Lcom/google/android/gms/location/places/internal/zzq;->zza(Lcom/google/android/gms/location/places/internal/zzq;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/location/places/internal/zzq$1;->zzaHN:I

    iget v4, p0, Lcom/google/android/gms/location/places/internal/zzq$1;->zzaHO:I

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/zzq$1;->zzaHP:Lcom/google/android/gms/location/places/internal/zzq;

    invoke-static {v0}, Lcom/google/android/gms/location/places/internal/zzq;->zzb(Lcom/google/android/gms/location/places/internal/zzq;)I

    move-result v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/location/places/internal/zze;->zza(Lcom/google/android/gms/location/places/zzf;Ljava/lang/String;III)V

    return-void
.end method
