.class public abstract Lcom/google/android/gms/location/places/zzf$zza;
.super Lcom/google/android/gms/location/places/zzl$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/places/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Lcom/google/android/gms/common/api/Api$zzb;",
        ">",
        "Lcom/google/android/gms/location/places/zzl$zzb",
        "<",
        "Lcom/google/android/gms/location/places/PlacePhotoResult;",
        "TA;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Api$zzc;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<TA;>;",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/location/places/zzl$zzb;-><init>(Lcom/google/android/gms/common/api/Api$zzc;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zzaL(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/location/places/PlacePhotoResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/location/places/PlacePhotoResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/location/places/PlacePhotoResult;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/data/BitmapTeleporter;)V

    return-object v0
.end method

.method protected synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/zzf$zza;->zzaL(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/location/places/PlacePhotoResult;

    move-result-object v0

    return-object v0
.end method
