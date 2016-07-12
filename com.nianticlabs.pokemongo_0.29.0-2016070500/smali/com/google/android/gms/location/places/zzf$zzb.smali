.class public abstract Lcom/google/android/gms/location/places/zzf$zzb;
.super Lcom/google/android/gms/location/places/zzl$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/places/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Lcom/google/android/gms/common/api/Api$zzb;",
        ">",
        "Lcom/google/android/gms/location/places/zzl$zzb",
        "<",
        "Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;",
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
.method protected zzaM(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/data/DataHolder;)V

    return-object v0
.end method

.method protected synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/zzf$zzb;->zzaM(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;

    move-result-object v0

    return-object v0
.end method
