.class Lcom/google/android/gms/location/places/internal/zzj$2;
.super Lcom/google/android/gms/location/places/zzl$zzf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/location/places/internal/zzj;->reportDeviceAtPlace(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/places/PlaceReport;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/location/places/zzl$zzf",
        "<",
        "Lcom/google/android/gms/location/places/internal/zzk;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaHg:Lcom/google/android/gms/location/places/internal/zzj;

.field final synthetic zzaHh:Lcom/google/android/gms/location/places/PlaceReport;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/places/internal/zzj;Lcom/google/android/gms/common/api/Api$zzc;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/places/PlaceReport;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/zzj$2;->zzaHg:Lcom/google/android/gms/location/places/internal/zzj;

    iput-object p4, p0, Lcom/google/android/gms/location/places/internal/zzj$2;->zzaHh:Lcom/google/android/gms/location/places/PlaceReport;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/location/places/zzl$zzf;-><init>(Lcom/google/android/gms/common/api/Api$zzc;Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/location/places/internal/zzk;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzj$2;->zza(Lcom/google/android/gms/location/places/internal/zzk;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/location/places/internal/zzk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/location/places/zzl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/places/zzl;-><init>(Lcom/google/android/gms/location/places/zzl$zzf;)V

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/zzj$2;->zzaHh:Lcom/google/android/gms/location/places/PlaceReport;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/location/places/internal/zzk;->zza(Lcom/google/android/gms/location/places/zzl;Lcom/google/android/gms/location/places/PlaceReport;)V

    return-void
.end method
