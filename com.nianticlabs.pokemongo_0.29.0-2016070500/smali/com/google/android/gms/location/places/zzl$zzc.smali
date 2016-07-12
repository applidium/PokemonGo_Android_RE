.class public abstract Lcom/google/android/gms/location/places/zzl$zzc;
.super Lcom/google/android/gms/location/places/zzl$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/places/zzl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Lcom/google/android/gms/common/api/Api$zzb;",
        ">",
        "Lcom/google/android/gms/location/places/zzl$zzb",
        "<",
        "Lcom/google/android/gms/location/places/PlaceBuffer;",
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
.method protected zzaP(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/location/places/PlaceBuffer;
    .locals 3

    new-instance v0, Lcom/google/android/gms/location/places/PlaceBuffer;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/common/data/DataHolder;->zzbu(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/location/places/PlaceBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;Landroid/content/Context;)V

    return-object v0
.end method

.method protected synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/zzl$zzc;->zzaP(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/location/places/PlaceBuffer;

    move-result-object v0

    return-object v0
.end method
