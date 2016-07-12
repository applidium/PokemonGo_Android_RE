.class public Lcom/google/android/gms/location/places/internal/zzj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/location/places/PlaceDetectionApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentPlace(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/places/PlaceFilter;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .param p1, "client"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "filter"    # Lcom/google/android/gms/location/places/PlaceFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/location/places/PlaceFilter;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/location/places/internal/zzj$1;

    sget-object v1, Lcom/google/android/gms/location/places/Places;->zzaGA:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/google/android/gms/location/places/internal/zzj$1;-><init>(Lcom/google/android/gms/location/places/internal/zzj;Lcom/google/android/gms/common/api/Api$zzc;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/places/PlaceFilter;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzlb$zza;)Lcom/google/android/gms/internal/zzlb$zza;

    move-result-object v0

    return-object v0
.end method

.method public reportDeviceAtPlace(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/places/PlaceReport;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .param p1, "client"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "report"    # Lcom/google/android/gms/location/places/PlaceReport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/location/places/PlaceReport;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/location/places/internal/zzj$2;

    sget-object v1, Lcom/google/android/gms/location/places/Places;->zzaGA:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/google/android/gms/location/places/internal/zzj$2;-><init>(Lcom/google/android/gms/location/places/internal/zzj;Lcom/google/android/gms/common/api/Api$zzc;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/places/PlaceReport;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzlb$zza;)Lcom/google/android/gms/internal/zzlb$zza;

    move-result-object v0

    return-object v0
.end method
