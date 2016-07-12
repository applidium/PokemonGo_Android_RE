.class Lcom/google/android/gms/location/internal/zzd$8;
.super Lcom/google/android/gms/location/internal/zzd$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/location/internal/zzd;->removeLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaFe:Lcom/google/android/gms/location/LocationListener;

.field final synthetic zzaFf:Lcom/google/android/gms/location/internal/zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/internal/zzd;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/internal/zzd$8;->zzaFf:Lcom/google/android/gms/location/internal/zzd;

    iput-object p3, p0, Lcom/google/android/gms/location/internal/zzd$8;->zzaFe:Lcom/google/android/gms/location/LocationListener;

    invoke-direct {p0, p2}, Lcom/google/android/gms/location/internal/zzd$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/internal/zzd$8;->zza(Lcom/google/android/gms/location/internal/zzl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/location/internal/zzl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/location/internal/zzd$8$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/internal/zzd$8$1;-><init>(Lcom/google/android/gms/location/internal/zzd$8;)V

    iget-object v1, p0, Lcom/google/android/gms/location/internal/zzd$8;->zzaFe:Lcom/google/android/gms/location/LocationListener;

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/location/internal/zzl;->zza(Lcom/google/android/gms/location/LocationListener;Lcom/google/android/gms/location/internal/zzg;)V

    return-void
.end method
