.class Lcom/google/android/gms/location/internal/zzq$1;
.super Lcom/google/android/gms/location/LocationServices$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/location/internal/zzq;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationSettingsRequest;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/location/LocationServices$zza",
        "<",
        "Lcom/google/android/gms/location/LocationSettingsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaFP:Lcom/google/android/gms/location/LocationSettingsRequest;

.field final synthetic zzaFQ:Ljava/lang/String;

.field final synthetic zzaFR:Lcom/google/android/gms/location/internal/zzq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/internal/zzq;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationSettingsRequest;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/internal/zzq$1;->zzaFR:Lcom/google/android/gms/location/internal/zzq;

    iput-object p3, p0, Lcom/google/android/gms/location/internal/zzq$1;->zzaFP:Lcom/google/android/gms/location/LocationSettingsRequest;

    iput-object p4, p0, Lcom/google/android/gms/location/internal/zzq$1;->zzaFQ:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/location/LocationServices$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/internal/zzq$1;->zza(Lcom/google/android/gms/location/internal/zzl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/location/internal/zzl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzq$1;->zzaFP:Lcom/google/android/gms/location/LocationSettingsRequest;

    iget-object v1, p0, Lcom/google/android/gms/location/internal/zzq$1;->zzaFQ:Ljava/lang/String;

    invoke-virtual {p1, v0, p0, v1}, Lcom/google/android/gms/location/internal/zzl;->zza(Lcom/google/android/gms/location/LocationSettingsRequest;Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;)V

    return-void
.end method

.method public zzaK(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/location/LocationSettingsResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/LocationSettingsResult;

    invoke-direct {v0, p1}, Lcom/google/android/gms/location/LocationSettingsResult;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/internal/zzq$1;->zzaK(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/location/LocationSettingsResult;

    move-result-object v0

    return-object v0
.end method
