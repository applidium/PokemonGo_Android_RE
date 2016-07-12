.class public Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/location/places/PlaceLikelihood;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzaHA:Lcom/google/android/gms/location/places/internal/PlaceImpl;

.field final zzaHB:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/internal/zzm;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/internal/zzm;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/location/places/internal/PlaceImpl;F)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "place"    # Lcom/google/android/gms/location/places/internal/PlaceImpl;
    .param p3, "likelihood"    # F

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;->zzaHA:Lcom/google/android/gms/location/places/internal/PlaceImpl;

    iput p3, p0, Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;->zzaHB:F

    return-void
.end method

.method public static zza(Lcom/google/android/gms/location/places/internal/PlaceImpl;F)Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;
    .locals 3

    new-instance v1, Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/internal/PlaceImpl;

    invoke-direct {v1, v2, v0, p1}, Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;-><init>(ILcom/google/android/gms/location/places/internal/PlaceImpl;F)V

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    .end local p1    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;->zzaHA:Lcom/google/android/gms/location/places/internal/PlaceImpl;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;->zzaHA:Lcom/google/android/gms/location/places/internal/PlaceImpl;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;->zzaHB:F

    iget v3, p1, Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;->zzaHB:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;->zzxo()Lcom/google/android/gms/location/places/PlaceLikelihood;

    move-result-object v0

    return-object v0
.end method

.method public getLikelihood()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;->zzaHB:F

    return v0
.end method

.method public getPlace()Lcom/google/android/gms/location/places/Place;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;->zzaHA:Lcom/google/android/gms/location/places/internal/PlaceImpl;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;->zzaHA:Lcom/google/android/gms/location/places/internal/PlaceImpl;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;->zzaHB:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDataValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzw;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "place"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;->zzaHA:Lcom/google/android/gms/location/places/internal/PlaceImpl;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "likelihood"

    iget v2, p0, Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;->zzaHB:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzw$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/internal/zzm;->zza(Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzxo()Lcom/google/android/gms/location/places/PlaceLikelihood;
    .locals 0

    return-object p0
.end method
